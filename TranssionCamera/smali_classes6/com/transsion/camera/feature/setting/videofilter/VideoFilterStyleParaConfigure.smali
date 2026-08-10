.class public Lcom/transsion/camera/feature/setting/videofilter/VideoFilterStyleParaConfigure;
.super Ljava/lang/Object;
.source "VideoFilterStyleParaConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field public static final BROWN_TYPE:I = 0x2

.field public static final CAMERA_SKIN_TYPE_SYS_PROP:Ljava/lang/String; = "debug.vendor.sys.oobe.camera_skin"

.field public static final DARK_TYPE:I = 0x1

.field public static final LIGHT_TYPE:I = 0x3

.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

.field private final mVideoFilterStyle:Lcom/transsion/camera/feature/setting/videofilter/VideoFilterStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/videofilter/VideoFilterStyleParaConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/videofilter/VideoFilterStyleParaConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/videofilter/VideoFilterStyle;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/videofilter/VideoFilterStyleParaConfigure;->mVideoFilterStyle:Lcom/transsion/camera/feature/setting/videofilter/VideoFilterStyle;

    .line 29
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/videofilter/VideoFilterStyleParaConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method

.method private getSkinType()I
    .locals 1

    const-string p0, "debug.vendor.sys.oobe.camera_skin"

    const-string v0, "brown"

    .line 61
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "black"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "white"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videofilter/VideoFilterStyleParaConfigure;->mVideoFilterStyle:Lcom/transsion/camera/feature/setting/videofilter/VideoFilterStyle;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/videofilter/VideoFilterStyle;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/transsion/camera/feature/setting/videofilter/VideoFilterStyleParaConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters] value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videofilter/VideoFilterStyleParaConfigure;->mVideoFilterStyle:Lcom/transsion/camera/feature/setting/videofilter/VideoFilterStyle;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/videofilter/VideoFilterStyle;->isModeSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/feature/setting/videofilter/VideoFilterStyleParaConfigure;->mVideoFilterStyle:Lcom/transsion/camera/feature/setting/videofilter/VideoFilterStyle;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/videofilter/VideoFilterStyle;->isVideoFilterAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/videofilter/VideoFilterStyleParaConfigure;->getSkinType()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionVideoFilterSkinType(I)V

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionVideoFilterId(I)V

    .line 51
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setTranssionFilterValue(I)V

    goto :goto_0

    :cond_0
    const-string p0, "0"

    .line 53
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionVideoFilterId(I)V

    .line 54
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setTranssionFilterValue(I)V

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/videofilter/VideoFilterStyleParaConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videofilter/VideoFilterStyleParaConfigure;->mVideoFilterStyle:Lcom/transsion/camera/feature/setting/videofilter/VideoFilterStyle;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/videofilter/VideoFilterStyle;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 1

    .line 39
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedVideoFilterIds()Ljava/util/List;

    move-result-object p1

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/videofilter/VideoFilterStyleParaConfigure;->mVideoFilterStyle:Lcom/transsion/camera/feature/setting/videofilter/VideoFilterStyle;

    const-string v0, "0"

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/videofilter/VideoFilterStyle;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
