.class Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$2;
.super Ljava/lang/Object;
.source "FaceDetection.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;


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

    .line 174
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCaptureEnd()V
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/setting/ICameraSetting$DevicePictureStateCallback;->onCaptureEnd()V

    return-void
.end method

.method public onCaptureStart()V
    .locals 0

    return-void
.end method

.method public takePictureEnd(Z)V
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$602(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;Z)Z

    return-void
.end method

.method public takePictureStart()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$1500(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.transsion.camera.feature.mode.timelapsemode.TimelapsePhotoModeEntry"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;->access$602(Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;Z)Z

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/facedetection/FaceDetection$2;->this$0:Lcom/transsion/camera/feature/setting/facedetection/FaceDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 181
    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method
