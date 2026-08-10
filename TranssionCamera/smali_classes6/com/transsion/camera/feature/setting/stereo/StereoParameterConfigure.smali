.class public Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;
.super Ljava/lang/Object;
.source "StereoParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field protected static final DEFAULT_VALUE:Ljava/lang/String; = "4"

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

.field private mIsStereoLevelSupport:Z

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private final mStereo:Lcom/transsion/camera/feature/setting/stereo/Stereo;

.field private mStereoSensorRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "StereoParameterConfigure"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/stereo/Stereo;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->mIsStereoLevelSupport:Z

    .line 35
    new-instance v0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure$1;-><init>(Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->mStereo:Lcom/transsion/camera/feature/setting/stereo/Stereo;

    .line 53
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;)Lcom/transsion/camera/feature/setting/stereo/Stereo;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->mStereo:Lcom/transsion/camera/feature/setting/stereo/Stereo;

    return-object p0
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->mStereo:Lcom/transsion/camera/feature/setting/stereo/Stereo;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/stereo/Stereo;->ismIsModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    const/16 v0, 0xb

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->registerDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V

    :goto_0
    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->mStereo:Lcom/transsion/camera/feature/setting/stereo/Stereo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 77
    sget-object v1, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters], value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mIsStereoLevelSupport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->mIsStereoLevelSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 79
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->mIsStereoLevelSupport:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->mStereo:Lcom/transsion/camera/feature/setting/stereo/Stereo;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/stereo/Stereo;->ismIsModeSupport()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setVsdofModeLevel(Ljava/lang/String;)V

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->mStereo:Lcom/transsion/camera/feature/setting/stereo/Stereo;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/stereo/Stereo;->isRTDofEnable()Z

    move-result v0

    .line 86
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setRTDofEnable(Z)V

    .line 88
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->mStereoSensorRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->mStereoSensorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_2

    .line 90
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->mStereoSensorRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->overrideSensorRect(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 92
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->overrideSensorRect(Landroid/graphics/Rect;)V

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method protected refreshToUI(I)V
    .locals 1

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->mStereo:Lcom/transsion/camera/feature/setting/stereo/Stereo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 47
    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->mStereo:Lcom/transsion/camera/feature/setting/stereo/Stereo;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/stereo/Stereo;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 3

    .line 63
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedVsdofLevel()Ljava/util/List;

    move-result-object v0

    .line 64
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getStereoSensorCropRegion()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->mStereoSensorRect:Landroid/graphics/Rect;

    .line 65
    sget-object p1, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setCameraCapabilities] supportedSizes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", stereoSensorRect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->mStereoSensorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 67
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->mIsStereoLevelSupport:Z

    if-nez p1, :cond_0

    return-void

    .line 71
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stereo/StereoParameterConfigure;->mStereo:Lcom/transsion/camera/feature/setting/stereo/Stereo;

    const-string p1, "4"

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/feature/setting/stereo/Stereo;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
