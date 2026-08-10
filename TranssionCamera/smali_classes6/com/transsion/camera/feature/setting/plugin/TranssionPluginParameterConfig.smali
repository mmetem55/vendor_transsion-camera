.class public Lcom/transsion/camera/feature/setting/plugin/TranssionPluginParameterConfig;
.super Ljava/lang/Object;
.source "TranssionPluginParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mTranssionPlugin:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TranssionPluginParameterConfig"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/plugin/TranssionPluginParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPluginParameterConfig;->mTranssionPlugin:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 5

    .line 38
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPluginParameterConfig;->mTranssionPlugin:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->isTranPluginSupport()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 39
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPluginParameterConfig;->mTranssionPlugin:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->getPlugInValue()I

    move-result p0

    .line 40
    sget-object v0, Lcom/transsion/camera/feature/setting/plugin/TranssionPluginParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[configParameters], mode not supported. state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 42
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionPluginEnable(I)V

    return v2

    :cond_0
    if-nez p0, :cond_1

    .line 45
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionPluginEnable(I)V

    return v2

    :cond_1
    return v1

    .line 50
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPluginParameterConfig;->mTranssionPlugin:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->isModeSupport()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 53
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPluginParameterConfig;->mTranssionPlugin:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 54
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55
    sget-object p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPluginParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "It\'s a project under 4G,force close plugin in monkey scenarios"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p0, "0"

    .line 58
    :cond_4
    sget-object v0, Lcom/transsion/camera/feature/setting/plugin/TranssionPluginParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters], value = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 59
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionPluginEnable(I)V

    return v2
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 1

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "0"

    .line 30
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "1"

    .line 31
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/plugin/TranssionPluginParameterConfig;->mTranssionPlugin:Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/plugin/TranssionPlugin;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
