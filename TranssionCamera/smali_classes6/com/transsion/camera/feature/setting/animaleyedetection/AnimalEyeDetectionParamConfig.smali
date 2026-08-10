.class public Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;
.super Ljava/lang/Object;
.source "AnimalEyeDetectionParamConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAnimalEyeDetection:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;

.field private mAnimalEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AnimalEyeDetParam"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;->mAnimalEyeDetection:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;

    .line 27
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;->mAnimalEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->setAnimalEyeDetectCallback(Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;->mAnimalEyeDetection:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;->mAnimalEyeDetection:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "0"

    if-eqz v0, :cond_1

    .line 55
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionAnimalEyeDetection(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "1"

    .line 58
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionAnimalEyeDetection(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionAnimalEyeDetection(Ljava/lang/String;)V

    .line 64
    :cond_2
    :goto_0
    sget-object p1, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[configParameters] supportedValues: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;->mAnimalEyeDetection:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;->mAnimalEyeDetection:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public setAnimalEyeDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;->mAnimalEyeDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$AnimalEyeDetectionCallback;

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 5

    .line 38
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isAnimalEyeDetection()Z

    move-result p1

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "on"

    const-string v2, "off"

    if-eqz p1, :cond_0

    .line 41
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 46
    :goto_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v2, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setCameraCapabilities]  supportAnimalEyeDetect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetectionParamConfig;->mAnimalEyeDetection:Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/setting/animaleyedetection/AnimalEyeDetection;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
