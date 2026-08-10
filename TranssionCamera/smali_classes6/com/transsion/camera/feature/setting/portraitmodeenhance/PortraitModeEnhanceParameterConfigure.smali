.class public Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;
.super Ljava/lang/Object;
.source "PortraitModeEnhanceParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mPortraitModeEnhance:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;

.field private mPortraitModeEnhanceSupport:Z

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mPortraitModeEnhance:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;

    .line 43
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 3

    .line 73
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mPortraitModeEnhanceSupport:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mPortraitModeEnhance:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->isModeSupport()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mPortraitModeEnhance:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mPortraitModeEnhance:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->isCloseBySuperDefinition()Z

    move-result p0

    const-string v1, "off"

    if-eqz p0, :cond_1

    move-object v0, v1

    .line 81
    :cond_1
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 84
    :goto_0
    sget-object p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[configParameters] portraitmode enhance value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setPortraitModeEnhanceMode(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setPortraitModeEnhanceValue(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 74
    :cond_3
    :goto_1
    sget-object p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "portraitmode enhance is not support!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    .line 48
    sget-object v0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "sendSettingChangeRequest"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mPortraitModeEnhance:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 3

    .line 54
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isPortraitModeEnhanceSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mPortraitModeEnhanceSupport:Z

    .line 55
    sget-object p1, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraCapabilities,mPortraitModeEnhanceSupport:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mPortraitModeEnhanceSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "off"

    .line 57
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mPortraitModeEnhanceSupport:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mPortraitModeEnhance:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->isModeSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "on"

    .line 59
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mPortraitModeEnhance:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->isPortraitModeEnhanceSupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mPortraitModeEnhance:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mPortraitModeEnhance:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhanceParameterConfigure;->mPortraitModeEnhance:Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/portraitmodeenhance/PortraitModeEnhance;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
