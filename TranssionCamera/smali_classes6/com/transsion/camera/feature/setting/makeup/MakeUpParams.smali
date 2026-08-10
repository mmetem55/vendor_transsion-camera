.class public Lcom/transsion/camera/feature/setting/makeup/MakeUpParams;
.super Ljava/lang/Object;
.source "MakeUpParams.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mMakeUpSetting:Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;

.field private final mSettingRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MakeUpParams"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/makeup/MakeUpParams;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpParams;->mMakeUpSetting:Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;

    .line 30
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpParams;->mSettingRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private getDefaultValue()Ljava/lang/String;
    .locals 2

    .line 46
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/CustomConfigUtil;->isAIMakeupSupport()Z

    move-result v0

    .line 47
    invoke-static {}, Lcom/transsion/camera/utils/CustomConfigUtil;->getInstance()Lcom/transsion/camera/utils/CustomConfigUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/utils/CustomConfigUtil;->makeupDefaultClose()Z

    move-result v1

    if-eqz v0, :cond_0

    const-string p0, "{\"intensityArray\":[0.6,0.6],\"isContrast\":false,\"keyArray\":[\"Filter_ALL\",\"Makeup_ALL\"],\"path\":\"style_makeup/zhigan\",\"styleNumber\":11}"

    return-object p0

    :cond_0
    if-eqz v1, :cond_1

    const-string p0, "{\"intensityArray\":[0.0,0.0],\"isContrast\":false,\"keyArray\":[\"Filter_ALL\",\"Makeup_ALL\"],\"path\":\"\",\"styleNumber\":0}"

    return-object p0

    .line 53
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpParams;->mMakeUpSetting:Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-static {p0}, Lcom/transsion/camera/utils/AreaUtil;->getMakeUpDefaultValueByCounty(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpParams;->mMakeUpSetting:Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/transsion/camera/feature/setting/makeup/MakeUpParams;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MakeUpParams configParameters value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 61
    invoke-static {v0}, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 65
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpParams;->mMakeUpSetting:Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->isModeSupport()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-boolean p0, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->isContrast:Z

    if-nez p0, :cond_1

    .line 66
    iget p0, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->styleNumber:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setMakeUpMode(I)V

    .line 67
    iget-object p0, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->intensityArray:[F

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setMakeUpIntensitys([F)V

    .line 68
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    iget p1, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->styleNumber:I

    iget-object v0, v0, Lcom/transsion/camera/app/common/setting/makeup/MakeUpItemInfo;->intensityArray:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setMakeUpValue(IF)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpParams;->mSettingRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpParams;->mMakeUpSetting:Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 3

    .line 40
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/makeup/MakeUpParams;->getDefaultValue()Ljava/lang/String;

    move-result-object p1

    .line 41
    sget-object v0, Lcom/transsion/camera/feature/setting/makeup/MakeUpParams;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraCapabilities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 42
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/makeup/MakeUpParams;->mMakeUpSetting:Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/feature/setting/makeup/MakeUpSetting;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
