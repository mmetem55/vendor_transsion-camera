.class Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$3;
.super Landroid/os/Handler;
.source "FaceDetection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 299
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$100(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 308
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$100(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->stopFaceInfoDection()V

    .line 310
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$1002(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;Z)Z

    goto :goto_0

    .line 301
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$100(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 302
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$100(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetectionParameterConfigure;->startFaceInfoDection()V

    .line 304
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$3;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$1100(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
