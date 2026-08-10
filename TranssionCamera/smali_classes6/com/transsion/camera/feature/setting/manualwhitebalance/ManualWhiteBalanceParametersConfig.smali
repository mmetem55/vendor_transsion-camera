.class public Lcom/transsion/camera/feature/setting/manualwhitebalance/ManualWhiteBalanceParametersConfig;
.super Ljava/lang/Object;
.source "ManualWhiteBalanceParametersConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mIsSupported:Z

.field private mManualWhiteBalance:Lcom/transsion/camera/feature/setting/manualwhitebalance/ManualWhiteBalance;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/manualwhitebalance/ManualWhiteBalanceParametersConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/manualwhitebalance/ManualWhiteBalanceParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/manualwhitebalance/ManualWhiteBalance;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/manualwhitebalance/ManualWhiteBalanceParametersConfig;->mManualWhiteBalance:Lcom/transsion/camera/feature/setting/manualwhitebalance/ManualWhiteBalance;

    .line 23
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/manualwhitebalance/ManualWhiteBalanceParametersConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 3

    .line 38
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/manualwhitebalance/ManualWhiteBalanceParametersConfig;->mManualWhiteBalance:Lcom/transsion/camera/feature/setting/manualwhitebalance/ManualWhiteBalance;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 42
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/setting/manualwhitebalance/ManualWhiteBalanceParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParameters, currentValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "auto"

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setAWBMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "10"

    .line 46
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setAWBMode(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setManualAWBValue(Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/manualwhitebalance/ManualWhiteBalanceParametersConfig;->mIsSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/manualwhitebalance/ManualWhiteBalanceParametersConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    if-eqz v0, :cond_0

    .line 59
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/manualwhitebalance/ManualWhiteBalanceParametersConfig;->mManualWhiteBalance:Lcom/transsion/camera/feature/setting/manualwhitebalance/ManualWhiteBalance;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/manualwhitebalance/ManualWhiteBalance;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 2

    .line 28
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedManualWBRangeValue()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/manualwhitebalance/ManualWhiteBalanceParametersConfig;->mIsSupported:Z

    if-eqz p1, :cond_0

    .line 30
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/manualwhitebalance/ManualWhiteBalanceParametersConfig;->mManualWhiteBalance:Lcom/transsion/camera/feature/setting/manualwhitebalance/ManualWhiteBalance;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lcom/transsion/camera/feature/setting/manualwhitebalance/ManualWhiteBalance;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/manualwhitebalance/ManualWhiteBalanceParametersConfig;->mIsSupported:Z

    :cond_0
    return-void
.end method
