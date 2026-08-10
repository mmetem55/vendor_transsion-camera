.class public Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;
.super Ljava/lang/Object;
.source "SuperDefinitionParameterConfigure.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/ICameraSetting$IParametersConfigure;


# static fields
.field private static final OFF:I

.field private static final ON:I

.field private static final ON_LIGHT:I = 0x2

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mSatSupport:Z

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

.field private mSuperDefinitionSupport:Z

.field private mSuperDefinitionType:I

.field private mSupportedSuperResolution:Z


# direct methods
.method public static synthetic $r8$lambda$JJm1UKKE1EHaJAhv-0ayaQSdyNY(Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;Landroid/util/Size;Landroid/util/Size;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->lambda$checkHDSizeCount$0(Landroid/util/Size;Landroid/util/Size;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "0"

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->OFF:I

    const-string v0, "1"

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->ON:I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinitionSupport:Z

    .line 48
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSupportedSuperResolution:Z

    .line 52
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSatSupport:Z

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    .line 55
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    return-void
.end method

.method private checkHDSizeCount(Lcom/transsion/camera/adapter/ICameraCapabilities;)I
    .locals 3

    .line 169
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->get4cellInOneSize()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 170
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 175
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object p1

    .line 176
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;Landroid/util/Size;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 180
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 181
    sget-object p1, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkHDSizeCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 182
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method private hasBillionPixel(Lcom/transsion/camera/adapter/ICameraCapabilities;)Z
    .locals 1

    .line 162
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object p0

    .line 163
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->sortSizeInDescending(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 164
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Size;

    .line 165
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    mul-int/2addr v0, p0

    const p0, 0x5f5e100

    if-lt v0, p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method private isSameRatio(Landroid/util/Size;Landroid/util/Size;)Z
    .locals 4

    .line 186
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-double p0, p0

    div-double/2addr v0, p0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p0

    int-to-double p0, p0

    mul-double/2addr p0, v2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    int-to-double v2, p2

    div-double/2addr p0, v2

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    cmpg-double p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$checkHDSizeCount$0(Landroid/util/Size;Landroid/util/Size;)Z
    .locals 2

    .line 177
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 178
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 179
    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->isSameRatio(Landroid/util/Size;Landroid/util/Size;)Z

    move-result p0

    if-eqz p0, :cond_0

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
    .locals 8

    .line 119
    iget-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinitionSupport:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 120
    sget-object p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "super definition is not supported"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isModeSupport()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    .line 124
    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getPreviousState()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    .line 128
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "0"

    const/4 v5, 0x0

    const-string v6, "billion"

    if-nez v3, :cond_2

    .line 129
    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_2
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    const-string v7, "key_algorithm_migrate"

    .line 130
    invoke-virtual {v3, v7}, Lcom/transsion/camera/app/common/setting/SettingBase;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 131
    iget-object v3, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isModeSupport()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isClosebyBv()Z

    move-result v3

    if-nez v3, :cond_7

    .line 132
    sget v3, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->ON:I

    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperDefinitionMode(I)V

    .line 133
    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSupportedSuperResolution:Z

    if-eqz v4, :cond_4

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isSRClose()Z

    move-result p0

    if-nez p0, :cond_4

    .line 134
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraParameters;->getZoomRatio()I

    move-result p0

    const/16 v4, 0x64

    if-gt p0, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    goto :goto_0

    :cond_4
    sget v3, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->OFF:I

    .line 133
    :goto_0
    invoke-virtual {p1, v3}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    .line 135
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 136
    invoke-virtual {p1, v2}, Lcom/transsion/camera/adapter/CameraParameters;->setRemosaicMode(Ljava/lang/String;)V

    goto :goto_1

    .line 137
    :cond_5
    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 138
    invoke-virtual {p1, v6}, Lcom/transsion/camera/adapter/CameraParameters;->setRemosaicMode(Ljava/lang/String;)V

    .line 140
    :cond_6
    :goto_1
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const-string p1, "1"

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setHdValue(Ljava/lang/String;)V

    goto :goto_2

    .line 142
    :cond_7
    sget p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->OFF:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperDefinitionMode(I)V

    .line 143
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    .line 144
    invoke-virtual {p1, v5}, Lcom/transsion/camera/adapter/CameraParameters;->setRemosaicMode(Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setHdValue(Ljava/lang/String;)V

    goto :goto_2

    .line 148
    :cond_8
    sget p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->OFF:I

    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperDefinitionMode(I)V

    .line 149
    invoke-virtual {p1, p0}, Lcom/transsion/camera/adapter/CameraParameters;->setSuperResolutionMode(I)V

    .line 150
    invoke-virtual {p1, v5}, Lcom/transsion/camera/adapter/CameraParameters;->setRemosaicMode(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setHdValue(Ljava/lang/String;)V

    :goto_2
    return v1
.end method

.method public sendSettingChangeRequest()V
    .locals 0

    return-void
.end method

.method public setCameraCapabilities(Lcom/transsion/camera/adapter/ICameraCapabilities;)V
    .locals 11

    .line 64
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedSuperDefinition()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinitionSupport:Z

    .line 65
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->getSupportedSuperDefinitionType()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinitionType:I

    .line 66
    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSupportedSuperResolution()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSupportedSuperResolution:Z

    .line 67
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    invoke-interface {p1}, Lcom/transsion/camera/adapter/ICameraCapabilities;->isSatModeSupport()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->setSatSupport(Z)V

    .line 68
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isBillionPixelSupport()Z

    move-result v0

    .line 69
    iget-object v1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isHighDefinitionMode()Z

    move-result v1

    .line 70
    iget-object v2, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isSupportFullSize()Z

    move-result v2

    .line 72
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinitionSupport:Z

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_3

    .line 75
    iget v4, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinitionType:I

    const/4 v8, 0x3

    if-eq v4, v8, :cond_2

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 76
    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinitionType:I

    if-eq v4, v7, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 77
    invoke-interface {v4}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinitionType:I

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v7

    :goto_1
    iput-boolean v4, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinitionSupport:Z

    .line 80
    :cond_3
    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinitionSupport:Z

    const-string v8, "off"

    const-string v9, "on"

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isModeSupport()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 81
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->hasBillionPixel(Lcom/transsion/camera/adapter/ICameraCapabilities;)Z

    move-result v4

    const-string v10, "billion"

    if-eqz v1, :cond_5

    .line 83
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    .line 85
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_4
    iget-boolean p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinitionSupport:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->isAsdMode()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 89
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_7

    .line 94
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object v8, v9

    goto :goto_2

    .line 97
    :cond_7
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_a

    if-eqz v4, :cond_a

    .line 99
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->checkHDSizeCount(Lcom/transsion/camera/adapter/ICameraCapabilities;)I

    move-result p1

    if-lt p1, v5, :cond_8

    move v6, v7

    :cond_8
    if-eqz v6, :cond_9

    .line 101
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_9
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 105
    :cond_a
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_b
    :goto_2
    sget-object p1, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSuperDefinitionSupport:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinitionSupport:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mSuperDefinitionType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinitionType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " billionPixelSupport:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isHighDefinitionMode:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " support:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " defaultValue:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinitionParameterConfigure;->mSuperDefinition:Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;

    invoke-virtual {p0, v3, v8}, Lcom/transsion/camera/feature/setting/superdefinition/SuperDefinition;->initValueAndSupport(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
