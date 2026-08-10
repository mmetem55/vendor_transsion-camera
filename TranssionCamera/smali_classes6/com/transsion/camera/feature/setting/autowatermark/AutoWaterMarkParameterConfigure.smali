.class public Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;
.super Ljava/lang/Object;
.source "AutoWaterMarkParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAutoWaterMark:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

.field private mAutoWaterMarkSupport:Z

.field private mUseBitmapWaterMark:Z

.field private mVideoWaterMarkSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mAutoWaterMark:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    return-void
.end method


# virtual methods
.method public configCommand(Lcom/transsion/camera/adapter/CameraProxy;)V
    .locals 0

    return-void
.end method

.method public configParameters(Lcom/transsion/camera/adapter/CameraParameters;)I
    .locals 4

    .line 78
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mAutoWaterMarkSupport:Z

    if-nez v0, :cond_0

    .line 79
    sget-object p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "auto watermark is not support!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mAutoWaterMark:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 84
    sget-object v1, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[configParameters] auto watermark value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->algorithmMigrate()Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setAutoWatermarkMode(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setAutoWaterMarkValue(Ljava/lang/String;)V

    .line 91
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mUseBitmapWaterMark:Z

    if-eqz v0, :cond_2

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mAutoWaterMark:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->getWaterMarkParam()Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 95
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {p1, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setAutoWaterMarkParameterList(Ljava/util/List;)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 3

    .line 52
    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->algorithmMigrate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mAutoWaterMarkSupport:Z

    goto :goto_0

    .line 55
    :cond_0
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isAutoWaterMarkSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mAutoWaterMarkSupport:Z

    .line 57
    :goto_0
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isVideoWaterMarkSupport()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mVideoWaterMarkSupport:Z

    .line 58
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->useBitmapWaterMark()Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mUseBitmapWaterMark:Z

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mAutoWaterMark:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->useBitmapWaterMark(Z)V

    .line 60
    sget-object p1, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraCapabilities,mAutoWaterMarkSupport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mAutoWaterMarkSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,mVideoWaterMarkSupport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mVideoWaterMarkSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", useBitmapWaterMark: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mUseBitmapWaterMark:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "off"

    .line 63
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mAutoWaterMark:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->getModeType()Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;->VIDEO:Lcom/transsion/camera/app/common/mode/ICameraMode$ModeType;

    const-string v2, "on"

    if-ne v0, v1, :cond_1

    .line 65
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mVideoWaterMarkSupport:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isFansSupport()Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mAutoWaterMarkSupport:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isFansSupport()Z

    move-result v0

    if-nez v0, :cond_2

    .line 70
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMarkParameterConfigure;->mAutoWaterMark:Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;

    sget-object v0, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/feature/setting/autowatermark/AutoWaterMark;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
