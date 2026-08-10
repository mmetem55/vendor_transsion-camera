.class public Lcom/transsion/camera/feature/setting/volumekey/VolumeKeyParametersConfig;
.super Ljava/lang/Object;
.source "VolumeKeyParametersConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# instance fields
.field private final mVolumeKey:Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/volumekey/VolumeKeyParametersConfig;->mVolumeKey:Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 5

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Shutter"

    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedZoomRatios()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 42
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 43
    :goto_0
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/volumekey/VolumeKeyParametersConfig;->mVolumeKey:Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->screenPocket()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/volumekey/VolumeKeyParametersConfig;->mVolumeKey:Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;->isSlowMotionMode()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->shouldLimitZoomInSlowMotion()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    const-string p1, "Zoom"

    .line 47
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/volumekey/VolumeKeyParametersConfig;->mVolumeKey:Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/feature/setting/volumekey/VolumeKey;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
