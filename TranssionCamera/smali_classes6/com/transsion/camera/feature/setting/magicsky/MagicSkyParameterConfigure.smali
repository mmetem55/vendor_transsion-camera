.class public Lcom/transsion/camera/feature/setting/magicsky/MagicSkyParameterConfigure;
.super Ljava/lang/Object;
.source "MagicSkyParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mMagicSky:Lcom/transsion/camera/feature/setting/magicsky/MagicSky;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mSkyDetected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MagicSkyPa"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/magicsky/MagicSkyParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/magicsky/MagicSky;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSkyParameterConfigure;->mSkyDetected:Z

    .line 22
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSkyParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    .line 23
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSkyParameterConfigure;->mMagicSky:Lcom/transsion/camera/feature/setting/magicsky/MagicSky;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 3

    .line 44
    sget-object v0, Lcom/transsion/camera/feature/setting/magicsky/MagicSkyParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSkyParameterConfigure;->mMagicSky:Lcom/transsion/camera/feature/setting/magicsky/MagicSky;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSkyParameterConfigure;->mSkyDetected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSkyParameterConfigure;->mMagicSky:Lcom/transsion/camera/feature/setting/magicsky/MagicSky;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setMagicSkyType(Ljava/lang/String;)V

    .line 46
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSkyParameterConfigure;->mSkyDetected:Z

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setMagicSkyResult(I)V

    .line 47
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string p0, "It\'s a project under 4G,force close magic sky in monkey scenarios"

    .line 48
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p0, "0"

    .line 49
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setMagicSkyType(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setMagicSkyResult(I)V

    :cond_0
    return v1
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSkyParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSkyParameterConfigure;->mMagicSky:Lcom/transsion/camera/feature/setting/magicsky/MagicSky;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSkyParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSkyParameterConfigure;->mMagicSky:Lcom/transsion/camera/feature/setting/magicsky/MagicSky;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 1

    .line 34
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedMagicSkyType()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 36
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 37
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSkyParameterConfigure;->mMagicSky:Lcom/transsion/camera/feature/setting/magicsky/MagicSky;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/magicsky/MagicSky;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public setDetectResult(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/magicsky/MagicSkyParameterConfigure;->mSkyDetected:Z

    return-void
.end method
