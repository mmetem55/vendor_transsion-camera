.class public Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;
.super Ljava/lang/Object;
.source "STBlurParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final DEFAULT:Ljava/lang/String; = "f4.0"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

.field private mSTBlur:Lcom/transsion/camera/feature/setting/stblur/STBlur;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/stblur/STBlur;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure$1;-><init>(Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->mSTBlur:Lcom/transsion/camera/feature/setting/stblur/STBlur;

    .line 29
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;)Lcom/transsion/camera/feature/setting/stblur/STBlur;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->mSTBlur:Lcom/transsion/camera/feature/setting/stblur/STBlur;

    return-object p0
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->mSTBlur:Lcom/transsion/camera/feature/setting/stblur/STBlur;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/stblur/STBlur;->isFakeDualLensSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    const/16 v0, 0xa

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->registerDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V

    :goto_0
    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->mSTBlur:Lcom/transsion/camera/feature/setting/stblur/STBlur;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/stblur/STBlur;->getSTBlurModeSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->mSTBlur:Lcom/transsion/camera/feature/setting/stblur/STBlur;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->algorithmMigrate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSTBlurMode(I)V

    .line 55
    sget-object v0, Lcom/transsion/camera/utils/SettingInfo;->BLUR_LEVEL_DATA:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "f4.0"

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setSingleBlurLevel(I)V

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->mSTBlur:Lcom/transsion/camera/feature/setting/stblur/STBlur;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/stblur/STBlur;->getStrengths()[F

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSTBlurStrengths([F)V

    .line 58
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->mSTBlur:Lcom/transsion/camera/feature/setting/stblur/STBlur;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/stblur/STBlur;->getLightStrength()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSTBlurLightStrength(F)V

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->mSTBlur:Lcom/transsion/camera/feature/setting/stblur/STBlur;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/stblur/STBlur;->getReaRatio()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSTBlurReaRatio(F)V

    .line 60
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->mSTBlur:Lcom/transsion/camera/feature/setting/stblur/STBlur;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/stblur/STBlur;->getBWConvertValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->enableBWConvert(Z)V

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    const-string v0, "key_st_blur"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 2

    .line 35
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapture;->algorithmMigrate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/stblur/STBlurCapability;->getSupportSTBlurModes()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 38
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportSTBlurModes()Ljava/util/List;

    move-result-object p1

    :goto_0
    const-string v0, "1"

    .line 41
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "0"

    .line 46
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/stblur/STBlurParameterConfigure;->mSTBlur:Lcom/transsion/camera/feature/setting/stblur/STBlur;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/stblur/STBlur;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
