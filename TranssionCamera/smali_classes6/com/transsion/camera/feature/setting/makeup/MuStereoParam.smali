.class public Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;
.super Ljava/lang/Object;
.source "MuStereoParam.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

.field private mIsStereoLevelSupport:Z

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private final mStereo:Lcom/transsion/camera/feature/setting/makeup/MuStereo;

.field private mStereoSensorRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MuStereoParam"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/makeup/MuStereo;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->mIsStereoLevelSupport:Z

    .line 26
    new-instance v0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam$1;-><init>(Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    .line 42
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->mStereo:Lcom/transsion/camera/feature/setting/makeup/MuStereo;

    .line 43
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;)Lcom/transsion/camera/feature/setting/makeup/MuStereo;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->mStereo:Lcom/transsion/camera/feature/setting/makeup/MuStereo;

    return-object p0
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->mStereo:Lcom/transsion/camera/feature/setting/makeup/MuStereo;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->ismIsModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    const/16 v0, 0xb

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->registerDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V

    :goto_0
    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->mStereo:Lcom/transsion/camera/feature/setting/makeup/MuStereo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->screenPocket()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->mStereo:Lcom/transsion/camera/feature/setting/makeup/MuStereo;

    const-string v1, "key_mu_monomer"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->mStereo:Lcom/transsion/camera/feature/setting/makeup/MuStereo;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_0
    sget-object v1, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters], value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mIsStereoLevelSupport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->mIsStereoLevelSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 71
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->mIsStereoLevelSupport:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->mStereo:Lcom/transsion/camera/feature/setting/makeup/MuStereo;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->ismIsModeSupport()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    const-string v1, "f0.0"

    .line 74
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 76
    sget-object v1, Lcom/transsion/camera/utils/SettingInfo;->BLUR_LEVEL_DATA:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 77
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    .line 78
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setVsdofModeLevel(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "-1"

    .line 80
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setVsdofModeLevel(Ljava/lang/String;)V

    .line 82
    :goto_1
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->mStereo:Lcom/transsion/camera/feature/setting/makeup/MuStereo;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->isRTDofEnable()Z

    move-result v1

    .line 83
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setRTDofEnable(Z)V

    .line 85
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->mStereoSensorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_3

    .line 86
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->mStereoSensorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_3

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->mStereoSensorRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->overrideSensorRect(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    .line 89
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->overrideSensorRect(Landroid/graphics/Rect;)V

    .line 91
    :goto_2
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setBlurValue(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_3
    const/4 p0, -0x1

    return p0
.end method

.method protected refreshToUI(I)V
    .locals 1

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->mStereo:Lcom/transsion/camera/feature/setting/makeup/MuStereo;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 37
    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->mStereo:Lcom/transsion/camera/feature/setting/makeup/MuStereo;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 3

    .line 53
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedVsdofLevel()Ljava/util/List;

    move-result-object v0

    .line 54
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getStereoSensorCropRegion()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->mStereoSensorRect:Landroid/graphics/Rect;

    .line 55
    sget-object p1, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setCameraCapabilities] supportedSizes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", stereoSensorRect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->mStereoSensorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 57
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->mIsStereoLevelSupport:Z

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuStereoParam;->mStereo:Lcom/transsion/camera/feature/setting/makeup/MuStereo;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/feature/setting/makeup/MuStereo;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
