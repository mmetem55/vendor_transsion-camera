.class public Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;
.super Ljava/lang/Object;
.source "FlashParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
.implements Lcom/transsion/camera/feature/setting/flash/ILuminanceConfig;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mFlash:Lcom/transsion/camera/feature/setting/flash/Flash;

.field private mIsSupportHighLight:Z

.field private mIsSupportedLuminanceAdjust:Z

.field mLedFlashSupported:Z

.field mScreenFlashSupported:Z

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/flash/Flash;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mIsSupportHighLight:Z

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/transsion/camera/feature/setting/flash/Flash;

    .line 36
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private initFlashValueAndSupport(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/transsion/camera/feature/setting/flash/Flash;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getPeriscopeCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "off"

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 66
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/transsion/camera/feature/setting/flash/Flash;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/flash/Flash;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void

    .line 71
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mScreenFlashSupported:Z

    const-string v2, "on"

    const-string v3, "auto"

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mLedFlashSupported:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/transsion/camera/feature/setting/flash/Flash;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/flash/Flash;->getPhotoModeSpecial()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    sget-object v0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/transsion/camera/feature/setting/flash/Flash;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/setting/flash/Flash;->getCurrentModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object v4

    if-eq v0, v4, :cond_3

    .line 73
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_1
    sget-object v0, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/transsion/camera/feature/setting/flash/Flash;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/setting/flash/Flash;->getCurrentModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object v4

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/transsion/camera/feature/setting/flash/Flash;

    .line 78
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 84
    :cond_3
    :goto_0
    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v1, v3

    .line 90
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/transsion/camera/feature/setting/flash/Flash;

    invoke-virtual {p0, p1, v1}, Lcom/transsion/camera/feature/setting/flash/Flash;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 6

    .line 95
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mScreenFlashSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mLedFlashSupported:Z

    if-nez v0, :cond_0

    .line 96
    sget-object p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[configParameters], do nothing when screen flash is support and led flash is not support "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/transsion/camera/feature/setting/flash/Flash;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/transsion/camera/feature/setting/flash/Flash;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/flash/Flash;->getCurrentModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object v1

    sget-object v2, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    const/4 v3, 0x0

    const-string v4, "torch"

    const-string v5, "on"

    if-ne v1, v2, :cond_1

    .line 103
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {p1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setFlashMode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/transsion/camera/feature/setting/flash/Flash;

    const-string v2, "key_screen_flash"

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mScreenFlashSupported:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mLedFlashSupported:Z

    if-eqz v2, :cond_2

    const-string v2, "auto"

    .line 108
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    sget-object v1, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "not need set flash mode"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_2
    sget-object v1, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFlashMode  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFlashMode(Ljava/lang/String;)V

    .line 115
    :goto_0
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mIsSupportedLuminanceAdjust:Z

    if-eqz v1, :cond_4

    .line 116
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/transsion/camera/feature/setting/flash/Flash;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    sget-object v1, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLuminanceValue"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/transsion/camera/feature/setting/flash/Flash;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/setting/flash/Flash;->getLuminanceValue()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/transsion/camera/feature/setting/flash/Flash;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/flash/Flash;->getLuminanceValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setLuminanceValue(I)V

    goto :goto_1

    .line 120
    :cond_3
    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setLuminanceValue(I)V

    .line 124
    :cond_4
    :goto_1
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFlash(Ljava/lang/String;)V

    .line 125
    sget-object v1, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[configParameters], value = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 127
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mIsSupportHighLight:Z

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setHighLightMode(I)V

    return v3
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/transsion/camera/feature/setting/flash/Flash;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flash/Flash;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public sendSettingChangeRequestSelf()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/transsion/camera/feature/setting/flash/Flash;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flash/Flash;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 6

    .line 41
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mLedFlashSupported:Z

    .line 43
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportHighLight()Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mIsSupportHighLight:Z

    .line 45
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedScreenFlashModes()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 46
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mScreenFlashSupported:Z

    .line 47
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/transsion/camera/feature/setting/flash/Flash;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mScreenFlashSupported:Z

    .line 49
    sget-object v3, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLedFlashSupported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mLedFlashSupported:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mScreenFlashSupported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mScreenFlashSupported:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->initFlashValueAndSupport(Ljava/util/List;)V

    .line 53
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedLuminanceScope()Ljava/util/List;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/transsion/camera/feature/setting/flash/Flash;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    .line 56
    iput-boolean v2, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mIsSupportedLuminanceAdjust:Z

    .line 57
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flash/FlashParameterConfigure;->mFlash:Lcom/transsion/camera/feature/setting/flash/Flash;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 58
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 57
    invoke-virtual {p0, v2, v0, p1}, Lcom/transsion/camera/feature/setting/flash/Flash;->initLuminanceSupportValue(ZII)V

    :cond_2
    return-void
.end method
