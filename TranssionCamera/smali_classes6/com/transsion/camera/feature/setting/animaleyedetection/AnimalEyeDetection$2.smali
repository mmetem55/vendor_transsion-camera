.class Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection$2;
.super Ljava/lang/Object;
.source "AnimalEyeDetection.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection$2;->this$0:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    .line 171
    sget-object v0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPreviewStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection$2;->this$0:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->access$100(Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;)Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection$2;->this$0:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->access$100(Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;)Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection$2;->this$0:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->access$200(Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;)Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;->setAnimalEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;)V

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection$2;->this$0:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->access$100(Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;)Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;->sendSettingChangeRequest()V

    .line 176
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection$2;->this$0:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    const/16 v1, 0x65

    .line 178
    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_1
    return-void
.end method

.method public onPreviewStopped()V
    .locals 2

    .line 160
    sget-object v0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPreviewStopped"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection$2;->this$0:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->access$100(Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;)Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;->setAnimalEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;)V

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection$2;->this$0:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x66

    .line 165
    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method
