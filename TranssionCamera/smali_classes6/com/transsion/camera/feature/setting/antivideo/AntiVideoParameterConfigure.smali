.class public Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;
.super Ljava/lang/Object;
.source "AntiVideoParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAntiVideo:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

.field private mAntiVideoSupport:Z

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mVideoSuperNightSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mAntiVideo:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    .line 43
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 5

    .line 68
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mAntiVideoSupport:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 69
    sget-object p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "anti video is not support!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mAntiVideo:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->isModeSupport()Z

    move-result v0

    const-string v2, "off"

    if-nez v0, :cond_1

    .line 73
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setAntiVideoMode(Ljava/lang/String;)V

    return v1

    .line 76
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mAntiVideo:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getAntiVideoMode()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, p0

    .line 81
    :goto_0
    sget-object p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[antivideo] anti video value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  oldvalue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 86
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setAntiVideoMode(Ljava/lang/String;)V

    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setAntiVideoMode(Ljava/lang/String;)V

    .line 91
    :cond_4
    :goto_1
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setAntiVideoValue(Ljava/lang/String;)V

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[antivideo] ret:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public isVideoSuperNightSupport()Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mVideoSuperNightSupport:Z

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    .line 48
    sget-object v0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "sendSettingChangeRequest"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mAntiVideo:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 2

    .line 54
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isAntiVideoSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mAntiVideoSupport:Z

    .line 55
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isVideoSuperNightSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mVideoSuperNightSupport:Z

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "off"

    .line 57
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mAntiVideoSupport:Z

    if-eqz v0, :cond_0

    const-string v0, "on"

    .line 59
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mAntiVideo:Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;

    sget-object v1, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/feature/setting/antivideo/AntiVideo;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 62
    sget-object p1, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraCapabilities mAntiVideoSupport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/antivideo/AntiVideoParameterConfigure;->mAntiVideoSupport:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
