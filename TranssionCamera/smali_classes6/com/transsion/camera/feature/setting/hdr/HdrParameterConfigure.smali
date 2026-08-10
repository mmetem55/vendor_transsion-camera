.class public Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;
.super Ljava/lang/Object;
.source "HdrParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;
.implements Lcom/transsion/camera/feature/setting/hdr/IHdr$Listener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDspSupport:Z

.field private final mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

.field private mParameters:Lcom/transsion/camera/adapter/CameraParameters;

.field private mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mTranssionHdr:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/hdr/Hdr;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mTranssionHdr:Z

    .line 31
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mDspSupport:Z

    .line 35
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    .line 36
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private getDefaultValue()Ljava/lang/String;
    .locals 3

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->defalutValueWithMarket()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 80
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->getMarket()Ljava/lang/String;

    move-result-object p0

    .line 82
    sget-object v0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultValue market: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "gttg"

    .line 83
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "off"

    goto :goto_0

    :cond_0
    const-string p0, "auto"

    :goto_0
    return-object p0
.end method

.method private isAsdEnable()Z
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    const-string v1, "key_asd"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    .line 134
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 5

    .line 97
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mParameters:Lcom/transsion/camera/adapter/CameraParameters;

    .line 98
    sget-object v0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configParameters mTranssionHdr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mTranssionHdr:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , hdrValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->isModeSupport()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 107
    :cond_1
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setHdrValue(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "auto"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->isAsdEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mTranssionHdr:Z

    if-nez v0, :cond_2

    .line 110
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setPhotoHDRMode(Ljava/lang/String;)V

    :cond_2
    return v1

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->getCurrentModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object v0

    sget-object v3, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    const/4 v4, 0x0

    if-eq v0, v3, :cond_7

    .line 116
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mTranssionHdr:Z

    if-eqz v0, :cond_6

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "on"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    .line 118
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionHDR(I)V

    goto :goto_0

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v3, "off"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 120
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionHDR(I)V

    goto :goto_0

    .line 121
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 122
    invoke-virtual {p1, v4}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionHDR(I)V

    goto :goto_0

    .line 125
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setPhotoHDRMode(Ljava/lang/String;)V

    :cond_7
    :goto_0
    return v4
.end method

.method public isShot2shotNeed()Z
    .locals 0

    .line 172
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mDspSupport:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isZsdHdrSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onHdrValueChanged()V
    .locals 3

    .line 152
    sget-object v0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHdrValueChanged, value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public onPreviewStateChanged(Z)V
    .locals 1

    .line 145
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeCommand(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mParameters:Lcom/transsion/camera/adapter/CameraParameters;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setPhotoHDRMode(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 6

    .line 43
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->getCurrentModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    const-string v2, "off"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 44
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedVideoHDRModes()Ljava/util/List;

    move-result-object v0

    :cond_0
    move-object v1, v2

    goto :goto_0

    .line 47
    :cond_1
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPhotoHDRModes()Ljava/util/List;

    move-result-object v0

    .line 48
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedTranssionHDR()Ljava/util/List;

    move-result-object v1

    .line 49
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_2

    .line 50
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iput-boolean v3, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mTranssionHdr:Z

    .line 54
    :cond_2
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedAsdModes()Ljava/util/List;

    move-result-object v1

    .line 55
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    const-string v1, "auto"

    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    .line 62
    :goto_0
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->isAIDetectionDefaultOff()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    invoke-virtual {v4, v0, v2}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getEntryValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v3, :cond_4

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mHdr:Lcom/transsion/camera/feature/setting/hdr/Hdr;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/hdr/Hdr;->resetRestriction(Ljava/lang/String;)V

    .line 73
    :cond_4
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isDspSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/hdr/HdrParameterConfigure;->mDspSupport:Z

    return-void
.end method

.method public setCameraId(I)V
    .locals 0

    return-void
.end method

.method public updateModeDeviceState(I)V
    .locals 0

    return-void
.end method
