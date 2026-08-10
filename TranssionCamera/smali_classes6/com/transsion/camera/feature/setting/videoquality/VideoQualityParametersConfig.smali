.class public Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;
.super Ljava/lang/Object;
.source "VideoQualityParametersConfig.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private mHighFpsResolutions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/HighFpsResolution;",
            ">;"
        }
    .end annotation
.end field

.field private mHighFpsSupport:Z

.field private mPreviewStopped:Z

.field private mPreviousQuality:Ljava/lang/String;

.field private mSatSupport:Z

.field private mStreamId:I

.field private mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

.field private mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mPreviousQuality:Ljava/lang/String;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSatSupport:Z

    .line 39
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mPreviewStopped:Z

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mStreamId:I

    .line 118
    new-instance v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig$1;-><init>(Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    .line 44
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    .line 45
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mStreamId:I

    return p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mStreamId:I

    return p1
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 30
    sget-object v0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;Z)Ljava/util/List;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->updateSupportedSizes(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getSupportedListQuality(ILjava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    sget-object v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityHelper;->sVideoQualities:[I

    invoke-static {p1, v0, p2, v1}, Lcom/transsion/camera/utils/CameraUtil;->generateSupportedList(ILjava/util/ArrayList;Ljava/util/List;[I)V

    .line 173
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->updateSupportedList(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private isSameStoreScope()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private setStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSatSupport:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mPreviewStopped:Z

    if-nez v0, :cond_0

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->registerStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mStreamIdCallback:Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraProxy;->unRegisterStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy$StreamIdCallback;)V

    :goto_0
    return-void
.end method

.method private updateSupportedList(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 178
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mHighFpsSupport:Z

    if-eqz v0, :cond_2

    .line 179
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mHighFpsResolutions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    const-string v1, "6_60"

    const/4 v2, 0x6

    const/4 v3, -0x1

    if-le p0, v0, :cond_1

    const/16 p0, 0x8

    .line 181
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-eq p0, v3, :cond_0

    const-string v0, "8_60"

    .line 183
    invoke-virtual {p1, p0, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 185
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-eq p0, v3, :cond_2

    .line 187
    invoke-virtual {p1, p0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 190
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-eq p0, v3, :cond_2

    .line 192
    invoke-virtual {p1, p0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateSupportedSizes(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getMainBackCamera()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 138
    sget-object v1, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSupportedSizes mStreamId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mStreamId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    iget v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mStreamId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    .line 142
    :cond_0
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedVideoSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 144
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->getSupportedListQuality(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->reConfigSupportList(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->setStreamIdCallback(Lcom/transsion/camera/adapter/CameraProxy;)V

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mPreviousQuality:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mPreviousQuality:Ljava/lang/String;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mHighFpsSupport:Z

    const-string v1, "0"

    const-string v2, "8_60"

    const-string v3, "1"

    if-eqz p0, :cond_3

    const-string p0, "6_60"

    .line 85
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getHighFpsMode()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 89
    invoke-virtual {p1, v1}, Lcom/transsion/camera/adapter/CameraParameters;->setHighFpsMode(Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :cond_2
    :goto_0
    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setHighFpsMode(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-string p0, "8"

    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    .line 96
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setVideoSuperNightResolution(I)V

    goto :goto_3

    .line 94
    :cond_5
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setVideoSuperNightResolution(I)V

    :goto_3
    const/4 p0, -0x1

    return p0
.end method

.method public resetStreamId()V
    .locals 2

    .line 160
    iget v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mStreamId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 161
    iput v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mStreamId:I

    :cond_0
    return-void
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 3

    .line 50
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    .line 51
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSatModeSupport()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSatSupport:Z

    .line 52
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isHighFpsSupport()Z

    move-result v1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mHighFpsSupport:Z

    .line 53
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedHighFpsResolutions()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mHighFpsResolutions:Ljava/util/List;

    .line 54
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isVideoCameraSupport()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object p1

    const-string v0, "0"

    .line 56
    invoke-interface {p1, v0}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getSupportedVideoSizes(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 57
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->isHighFPSSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mHighFpsSupport:Z

    .line 60
    :cond_0
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mSatSupport:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 61
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->updateSupportedSizes(Z)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->getCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->getSupportedListQuality(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 65
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x6

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 68
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    .line 72
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mVideoQuality:Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;

    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->isSameStoreScope()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/setting/videoquality/VideoQuality;->onStoreScopeInit(Z)V

    :cond_3
    return-void
.end method

.method public updatePreviewState(Z)V
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mPreviewStopped:Z

    if-eq v0, p1, :cond_0

    .line 155
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/videoquality/VideoQualityParametersConfig;->mPreviewStopped:Z

    :cond_0
    return-void
.end method
