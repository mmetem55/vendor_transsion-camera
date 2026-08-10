.class public Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;
.super Ljava/lang/Object;
.source "EyeDetectionParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# instance fields
.field private mEyeDetection:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

.field private mEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;

.field private mPreviewSize:Landroid/util/Size;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field mSupportedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->mEyeDetection:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    .line 29
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->mEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraProxy;->setEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;)V

    .line 74
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraProxy;->getCameraParameters()Lcom/transsion/camera/adapter/CameraParameters;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->mPreviewSize:Landroid/util/Size;

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->mEyeDetection:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->isModeSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 63
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->mEyeDetection:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "1"

    .line 64
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionEyeDetection(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "0"

    .line 66
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionEyeDetection(Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method getPreviewSize()Landroid/util/Size;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->mEyeDetection:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 4

    .line 40
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedEyeDetection()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->mSupportedValues:Ljava/util/List;

    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const-string v0, "on"

    const-string v1, "off"

    const/4 v2, 0x1

    if-le p1, v2, :cond_1

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->mEyeDetection:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    .line 42
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->mEyeDetection:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->isPhotoType()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/transsion/camera/app/common/CameraRepository;->continuousFocusSupport(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 48
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 44
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 52
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->mEyeDetection:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->getDefaultAutoFocusType()I

    move-result p1

    const-string v2, "0"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne p1, v2, :cond_2

    goto :goto_2

    :cond_2
    move-object v1, v0

    .line 55
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->mEyeDetection:Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->mSupportedValues:Ljava/util/List;

    invoke-virtual {p1, p0, v1}, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetection;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public setEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/eyedetection/EyeDetectionParameterConfig;->mEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$EyeDetectionCallback;

    return-void
.end method
