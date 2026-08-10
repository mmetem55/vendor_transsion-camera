.class public Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterParameterConfigure;
.super Ljava/lang/Object;
.source "ArcFilterParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mArcFilter:Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;

.field private final mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterParameterConfigure;->mArcFilter:Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;

    .line 24
    iput-object p2, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 4

    .line 46
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterParameterConfigure;->mArcFilter:Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 47
    sget-object v1, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters], value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 48
    invoke-static {v0}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterInfo;->getCaptureFilterIdByPreviewId(Ljava/lang/String;)I

    move-result v0

    .line 49
    iget-object v1, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterParameterConfigure;->mArcFilter:Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->isModeSupport()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 50
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilter;->algorithmMigrate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionaFilterId(I)V

    .line 53
    :cond_0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterParameterConfigure;->mArcFilter:Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFilterValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setTranssionaFilterId(I)V

    .line 56
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterParameterConfigure;->mArcFilter:Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFilterValue(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v2
.end method

.method public sendSettingChangeRequest()V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterParameterConfigure;->mSettingDeviceRequester:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterParameterConfigure;->mArcFilter:Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;->requestChangeSettingValueJustSelf(Ljava/lang/String;)V

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 1

    .line 35
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilter;->algorithmMigrate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/arcfilter/ArcFilterCapability;->getSupportedFilterIds()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 38
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedFilterIds()Ljava/util/List;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 40
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    iget-object p0, p0, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilterParameterConfigure;->mArcFilter:Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/arcfilter/setting/ArcFilter;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
