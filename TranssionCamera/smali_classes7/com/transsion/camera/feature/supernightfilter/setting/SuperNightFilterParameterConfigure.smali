.class public Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterParameterConfigure;
.super Ljava/lang/Object;
.source "SuperNightFilterParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mSuperNightFilter:Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilter;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterParameterConfigure;->mSuperNightFilter:Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilter;

    .line 22
    iput-object p2, p0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterParameterConfigure;->mSuperNightFilter:Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilter;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilter;->isSupportMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterParameterConfigure;->mSuperNightFilter:Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilter;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 44
    sget-object v1, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters], value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 45
    invoke-static {v0}, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo;->getCaptureFilterIdByFilterName(Ljava/lang/String;)I

    move-result v0

    .line 46
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionSuperNightFilterId(I)V

    .line 47
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterParameterConfigure;->mSuperNightFilter:Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilter;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSuperNightFilterValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterParameterConfigure;->mSuperNightFilter:Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilter;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilter;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 1

    .line 33
    invoke-static {}, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterInfo;->getSupportFilterIds()Ljava/util/List;

    move-result-object p1

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilterParameterConfigure;->mSuperNightFilter:Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilter;

    const-string v0, "supernight_filter_off"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/supernightfilter/setting/SuperNightFilter;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
