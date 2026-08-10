.class public Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionParametersConfigure;
.super Ljava/lang/Object;
.source "VoiceDetectionParametersConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# instance fields
.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private final mVoiceDetection:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionParametersConfigure;->mVoiceDetection:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    .line 25
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionParametersConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionParametersConfigure;->mVoiceDetection:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionParametersConfigure;->mVoiceDetection:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionParametersConfigure;->mVoiceDetection:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionParametersConfigure;->mVoiceDetection:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->mSettingPreviewDataCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterSettingPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraSettingPreviewDataCallback;)V

    :goto_0
    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionParametersConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionParametersConfigure;->mVoiceDetection:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 1

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "on"

    .line 31
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "off"

    .line 32
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetectionParametersConfigure;->mVoiceDetection:Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/voicedetection/VoiceDetection;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
