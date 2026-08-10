.class public Lcom/transsion/camera/feature/setting/mirror/MirrorParameterConfigure;
.super Ljava/lang/Object;
.source "MirrorParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mMirror:Lcom/transsion/camera/feature/setting/mirror/Mirror;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/mirror/MirrorParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/mirror/MirrorParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/mirror/Mirror;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/mirror/MirrorParameterConfigure;->mMirror:Lcom/transsion/camera/feature/setting/mirror/Mirror;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/mirror/MirrorParameterConfigure;->mMirror:Lcom/transsion/camera/feature/setting/mirror/Mirror;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/mirror/Mirror;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    .line 64
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "0"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/mirror/MirrorParameterConfigure;->mMirror:Lcom/transsion/camera/feature/setting/mirror/Mirror;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->isVipMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->enableMirror(Z)V

    .line 75
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setYuvCaptureFlipMode(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 65
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->enableMirror(Z)V

    .line 66
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/mirror/MirrorParameterConfigure;->mMirror:Lcom/transsion/camera/feature/setting/mirror/Mirror;

    .line 67
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v4

    .line 66
    invoke-interface {v3, v4}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v3

    .line 67
    invoke-interface {v3}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v3

    if-ne v3, v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    .line 68
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/mirror/MirrorParameterConfigure;->mMirror:Lcom/transsion/camera/feature/setting/mirror/Mirror;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/mirror/Mirror;->isSupportYuvCaptureFlipMode()Z

    move-result p0

    if-eqz p0, :cond_3

    if-eqz v0, :cond_3

    const-string p0, "1"

    .line 69
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setYuvCaptureFlipMode(Ljava/lang/String;)V

    goto :goto_2

    .line 71
    :cond_3
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setYuvCaptureFlipMode(Ljava/lang/String;)V

    :goto_2
    return v2
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 4

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "off"

    .line 46
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/mirror/MirrorParameterConfigure;->mMirror:Lcom/transsion/camera/feature/setting/mirror/Mirror;

    .line 48
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v1

    const-string v2, "on"

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 49
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/mirror/MirrorParameterConfigure;->mMirror:Lcom/transsion/camera/feature/setting/mirror/Mirror;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/mirror/Mirror;->isMirrorDefaultOff()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 58
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/mirror/MirrorParameterConfigure;->mMirror:Lcom/transsion/camera/feature/setting/mirror/Mirror;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/mirror/Mirror;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
