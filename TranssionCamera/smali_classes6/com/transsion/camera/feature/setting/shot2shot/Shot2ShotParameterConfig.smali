.class public Lcom/transsion/camera/feature/setting/shot2shot/Shot2ShotParameterConfig;
.super Ljava/lang/Object;
.source "Shot2ShotParameterConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mShot2Shot:Lcom/transsion/camera/feature/setting/shot2shot/Shot2Shot;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Shot2ShotParameterConfig"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/shot2shot/Shot2ShotParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/shot2shot/Shot2Shot;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/shot2shot/Shot2ShotParameterConfig;->mShot2Shot:Lcom/transsion/camera/feature/setting/shot2shot/Shot2Shot;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 1

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/shot2shot/Shot2ShotParameterConfig;->mShot2Shot:Lcom/transsion/camera/feature/setting/shot2shot/Shot2Shot;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 44
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    sget-object p0, Lcom/transsion/camera/feature/setting/shot2shot/Shot2ShotParameterConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "It\'s a project under 4G,close shot 2 shot in monkey scenarios."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p0, "0"

    :cond_0
    if-eqz p0, :cond_1

    .line 49
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setShot2ShotMode(I)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 2

    .line 33
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedShot2Shot()Ljava/util/List;

    move-result-object p1

    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 38
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/shot2shot/Shot2ShotParameterConfig;->mShot2Shot:Lcom/transsion/camera/feature/setting/shot2shot/Shot2Shot;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/shot2shot/Shot2Shot;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
