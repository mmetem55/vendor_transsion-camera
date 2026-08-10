.class Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$1;
.super Ljava/lang/Object;
.source "EyeDetection.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$1;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEyeDetectionCallback([I)V
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$1;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$1;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection$1;->this$0:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->access$000(Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x65

    .line 52
    invoke-interface {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const/16 p1, 0x66

    .line 54
    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_1
    :goto_0
    return-void
.end method
