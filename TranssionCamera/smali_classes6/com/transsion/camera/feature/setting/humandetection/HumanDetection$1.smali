.class Lcom/transsion/camera/feature/setting/humandetection/HumanDetection$1;
.super Ljava/lang/Object;
.source "HumanDetection.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$PreviewStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection$1;->this$0:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewStarted()V
    .locals 2

    .line 177
    invoke-static {}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStarted"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection$1;->this$0:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;->access$100(Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;)Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionParamConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection$1;->this$0:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    invoke-static {v1}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;->access$200(Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;)Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionParamConfig;->setHumanDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;)V

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection$1;->this$0:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;->access$100(Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;)Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionParamConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionParamConfig;->sendSettingChangeRequest()V

    return-void
.end method

.method public onPreviewStopped()V
    .locals 2

    .line 165
    invoke-static {}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onPreviewStopped"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection$1;->this$0:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    invoke-static {v0}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;->access$100(Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;)Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionParamConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionParamConfig;->setHumanDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;)V

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection$1;->this$0:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 170
    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method
