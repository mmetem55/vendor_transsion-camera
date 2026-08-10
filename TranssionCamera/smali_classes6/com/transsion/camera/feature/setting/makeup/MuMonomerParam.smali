.class public Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;
.super Ljava/lang/Object;
.source "MuMonomerParam.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field protected static final DEFAULT_VALUE:Ljava/lang/String; = "f0.0"

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

.field private mIsBlurLevelSupport:Z

.field private final mMonomer:Lcom/transsion/camera/feature/setting/makeup/MuMonomer;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MuMonomerParam"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/makeup/MuMonomer;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->mIsBlurLevelSupport:Z

    .line 87
    new-instance v0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam$1;-><init>(Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    .line 30
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->mMonomer:Lcom/transsion/camera/feature/setting/makeup/MuMonomer;

    .line 31
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->refreshToUI(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;)Lcom/transsion/camera/feature/setting/makeup/MuMonomer;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->mMonomer:Lcom/transsion/camera/feature/setting/makeup/MuMonomer;

    return-object p0
.end method

.method private refreshToUI(I)V
    .locals 1

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->mMonomer:Lcom/transsion/camera/feature/setting/makeup/MuMonomer;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getSettingDataCallback()Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 101
    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;->onDataCallback(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 5

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->mMonomer:Lcom/transsion/camera/feature/setting/makeup/MuMonomer;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->isModeSupport()Z

    move-result v0

    .line 78
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->mMonomer:Lcom/transsion/camera/feature/setting/makeup/MuMonomer;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v1

    .line 79
    sget-object v2, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configCommand,cameraId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",support:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v0, "0"

    .line 80
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    const/16 v0, 0xb

    invoke-virtual {p1, p0, v0}, Lcom/transsion/camera/adapter/CameraProxy;->registerDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;I)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->mCameraDualLensCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterDualLensCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraDualLensCallback;)V

    :goto_0
    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 5

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->mMonomer:Lcom/transsion/camera/feature/setting/makeup/MuMonomer;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 54
    sget-object v1, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters], value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isModeSupport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->mMonomer:Lcom/transsion/camera/feature/setting/makeup/MuMonomer;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->isModeSupport()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 55
    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->mIsBlurLevelSupport:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->mMonomer:Lcom/transsion/camera/feature/setting/makeup/MuMonomer;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->isModeSupport()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "f0.0"

    .line 58
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 59
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->mMonomer:Lcom/transsion/camera/feature/setting/makeup/MuMonomer;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->getWarningType()I

    move-result v1

    if-eq v1, v2, :cond_2

    const-string v1, "1"

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setSTBlurMode(I)V

    .line 61
    sget-object v3, Lcom/transsion/camera/utils/SettingInfo;->BLUR_LEVEL_DATA:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 62
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v4, v3

    invoke-virtual {p1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setSingleBlurLevel(I)V

    .line 63
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->mMonomer:Lcom/transsion/camera/feature/setting/makeup/MuMonomer;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    .line 64
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setFakeDualLensMode(I)V

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setFakeDualLensMode(I)V

    goto :goto_0

    :cond_2
    const-string p0, "0"

    .line 69
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSTBlurMode(I)V

    .line 71
    :goto_0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setBlurValue(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->mMonomer:Lcom/transsion/camera/feature/setting/makeup/MuMonomer;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 3

    .line 41
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportSTBlurLevels()Ljava/util/List;

    move-result-object p1

    .line 42
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setCameraCapabilities] supportedSizes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 43
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->mIsBlurLevelSupport:Z

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MuMonomerParam;->mMonomer:Lcom/transsion/camera/feature/setting/makeup/MuMonomer;

    const-string v0, "f0.0"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/makeup/MuMonomer;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
