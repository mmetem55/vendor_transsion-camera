.class public Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionParamConfig;
.super Ljava/lang/Object;
.source "HumanDetectionParamConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final HUMAN_DETECTION_OFF:I = 0x0

.field private static final HUMAN_DETECTION_ON:I = 0x1

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mHumanDetection:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

.field private mHumanDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;

.field private mIsSupported:Z

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "HumanDetectionParam"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionParamConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionParamConfig;->mHumanDetection:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    .line 44
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionParamConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionParamConfig;->mHumanDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;

    if-eqz p0, :cond_0

    .line 84
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->setHumanDetCallback(Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 86
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->setHumanDetCallback(Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;)V

    :goto_0
    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 2

    .line 67
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionParamConfig;->mIsSupported:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionParamConfig;->mHumanDetection:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionParamConfig;->mHumanDetection:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 69
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 70
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionHumanDetection(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 72
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionHumanDetection(I)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionHumanDetection(I)V

    :cond_2
    :goto_0
    return v1
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionParamConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionParamConfig;->mHumanDetection:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionParamConfig;->mHumanDetection:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    if-eqz v0, :cond_1

    .line 50
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isHumanDetectionSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionParamConfig;->mIsSupported:Z

    .line 51
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionParamConfig;->mIsSupported:Z

    const-string v1, "on"

    const-string v2, "off"

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 59
    :goto_0
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionParamConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setCameraCapabilities]  supportHumanDetect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionParamConfig;->mIsSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionParamConfig;->mHumanDetection:Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/humandetection/HumanDetection;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method setHumanDetectionCallback(Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/humandetection/HumanDetectionParamConfig;->mHumanDetectionCallback:Lcom/transsion/camera/adapter/CameraProxy$HumanDetectionCallback;

    return-void
.end method
