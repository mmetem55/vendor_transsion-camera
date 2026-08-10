.class public Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;
.super Ljava/lang/Object;
.source "WhiteBalanceParametersConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mIsSupported:Z

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mWhiteBalance:Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalance;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalance;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;->mWhiteBalance:Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalance;

    .line 27
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;->mWhiteBalance:Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalance;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configParameters, currentValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 47
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;->mWhiteBalance:Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalance;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalance;->isProfessionMode()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "white-balance-lock"

    .line 48
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "auto"

    .line 49
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setAWBMode(Ljava/lang/String;)V

    .line 50
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;->mWhiteBalance:Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalance;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalance;->isNeedLock()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setAWBLockStatus(Z)V

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setAWBMode(Ljava/lang/String;)V

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;->mWhiteBalance:Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalance;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalance;->isNeedLock()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setAWBLockStatus(Z)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    .line 65
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;->mIsSupported:Z

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[sendSettingChangeRequest]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;->mWhiteBalance:Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalance;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalance;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 1

    .line 32
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedAWBMode()Ljava/util/List;

    move-result-object p1

    .line 34
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;->mIsSupported:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;->mIsSupported:Z

    .line 40
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalanceParametersConfig;->mWhiteBalance:Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalance;

    const-string v0, "auto"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/whitebalance/WhiteBalance;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
