.class Lcom/transsion/camera/adapter/CameraCapabilities2Impl;
.super Lcom/transsion/camera/adapter/CameraCapabilities;
.source "CameraCapabilities2Impl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/adapter/CameraCapabilities<",
        "Landroid/hardware/camera2/CameraCharacteristics;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field mMaxPictureSizePixels:J

.field private final mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

.field private mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraCapabilities2Impl"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    return-void
.end method

.method private static findMaxPixels(Ljava/util/List;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)J"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_3

    .line 329
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 333
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    if-nez v2, :cond_2

    goto :goto_0

    .line 337
    :cond_2
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-long v5, v2

    mul-long/2addr v3, v5

    cmp-long v2, v0, v3

    if-gez v2, :cond_1

    move-wide v0, v3

    goto :goto_0

    :cond_3
    :goto_1
    return-wide v0
.end method

.method private getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 73
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 76
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mStreamConfigurationMap:Landroid/hardware/camera2/params/StreamConfigurationMap;

    return-object p0
.end method

.method private getZoomRange(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 323
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_ZOOM_RATIO_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    return-object p0
.end method

.method private isExposureCompensationSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1

    .line 697
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 698
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 702
    :cond_0
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p1, 0x1

    :cond_2
    return p1
.end method


# virtual methods
.method buildAiShutterSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 1124
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportedAiShutter(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildAiShutterSupport(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildAiShutterSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildAnimalEyeDetectionSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 654
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isAnimalEyeDetectSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildAnimalEyeDetectionSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildAnimalEyeDetectionSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildAutoMacroSwitchSupported(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 659
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedAutoMacroSwitch(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildAutoMacroSwitchSupported(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildAutoMacroSwitchSupported(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildCameraBaseZoomRatio(Landroid/hardware/camera2/CameraCharacteristics;)F
    .locals 0

    .line 1114
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getBaseZoomRatio()F

    move-result p0

    return p0
.end method

.method bridge synthetic buildCameraBaseZoomRatio(Ljava/lang/Object;)F
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildCameraBaseZoomRatio(Landroid/hardware/camera2/CameraCharacteristics;)F

    move-result p0

    return p0
.end method

.method buildColorLevelSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 1119
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->colorLevelSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildColorLevelSupport(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildColorLevelSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildDualCamCalibrationSize(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Size;
    .locals 0

    .line 444
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedDualCamCalibSize(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildDualCamCalibrationSize(Ljava/lang/Object;)Landroid/util/Size;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildDualCamCalibrationSize(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method buildExposureCompensationStep(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Rational;
    .locals 0

    .line 488
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->isExposureCompensationSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 489
    sget-object p0, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    return-object p0

    .line 491
    :cond_0
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Rational;

    return-object p0
.end method

.method bridge synthetic buildExposureCompensationStep(Ljava/lang/Object;)Landroid/util/Rational;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildExposureCompensationStep(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Rational;

    move-result-object p0

    return-object p0
.end method

.method buildFlashStyleSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 1094
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->flashStyleSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildFlashStyleSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildFlashStyleSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildFovCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;
    .locals 0

    .line 455
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getFovCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildFovCropRegion(Ljava/lang/Object;)Landroid/graphics/Rect;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildFovCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method buildFrontDualFlashSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 1089
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->frontDualFlashSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildFrontDualFlashSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildFrontDualFlashSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildHumanDetectionSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 669
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportedHumanDetection(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildHumanDetectionSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildHumanDetectionSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsAIRemosaicSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 812
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportedAIRemosaic(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsAIRemosaicSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsAIRemosaicSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsAutoExposureLockSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 460
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 461
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method bridge synthetic buildIsAutoExposureLockSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsAutoExposureLockSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsBGServiceModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 848
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isBGServiceModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsBGServiceModeSupport(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsBGServiceModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsCameraFoldedFlagSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 684
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isCameraFoldedFlagSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsCameraFoldedFlagSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsCameraFoldedFlagSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsDspSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 644
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isDspSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsDspSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsDspSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsFakeRAWRAWCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 619
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isFakeRAW_RAWCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsFakeRAWRAWCameraSupport(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsFakeRAWRAWCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsFakeRAWYUVCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 624
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isFakeRAW_YUVCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsFakeRAWYUVCameraSupport(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsFakeRAWYUVCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsHighSpeedVideoSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 3

    .line 869
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_CAPABILITIES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    const/16 v0, 0x9

    .line 871
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result p1

    .line 872
    sget-object v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoHighSpeed:buildIsHighVideoSupported is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 873
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSMVRModeSupport()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 874
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoHighSpeed:buildIsHighVideoSupported SMVR is "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method bridge synthetic buildIsHighSpeedVideoSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsHighSpeedVideoSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsLogicalCameraSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 571
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isLogicalCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsLogicalCameraSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsLogicalCameraSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsMacroTorchSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 664
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isMacroTorchSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsMacroTorchSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsMacroTorchSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsMultiDualCamLogicalSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 561
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isMultiDualCamLogicalSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsMultiDualCamLogicalSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsMultiDualCamLogicalSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsMultiDualCamTeleSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 566
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isMultiDualCamTeleCamSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsMultiDualCamTeleSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsMultiDualCamTeleSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsNightHawkSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 1003
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportedNightHawkMode(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsNightHawkSupport(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsNightHawkSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method public buildIsPortraitEnhanceSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 1013
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isPortraitModeEnhanceSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic buildIsPortraitEnhanceSupport(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsPortraitEnhanceSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsTeleCameraSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 556
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isTeleCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsTeleCameraSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsTeleCameraSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsVideoCameraSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 679
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isVideoCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsVideoCameraSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsVideoCameraSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildIsWideCameraSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 551
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isWideCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildIsWideCameraSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildIsWideCameraSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildLogicId(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;
    .locals 0

    .line 1053
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getLogicId(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildLogicId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildLogicId(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method buildMaxExposureCompensation(Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 0

    .line 468
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->isExposureCompensationSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 471
    :cond_0
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 472
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    .line 473
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method bridge synthetic buildMaxExposureCompensation(Ljava/lang/Object;)I
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildMaxExposureCompensation(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    return p0
.end method

.method buildMaxNumOfSupportedFocusAreas(Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 0

    .line 234
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method bridge synthetic buildMaxNumOfSupportedFocusAreas(Ljava/lang/Object;)I
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildMaxNumOfSupportedFocusAreas(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    return p0
.end method

.method buildMaxNumOfSupportedMeteringAreas(Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 0

    .line 240
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method bridge synthetic buildMaxNumOfSupportedMeteringAreas(Ljava/lang/Object;)I
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildMaxNumOfSupportedMeteringAreas(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    return p0
.end method

.method buildMicroCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 1129
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportMicroCamera(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildMicroCameraSupport(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildMicroCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildMicroPanTiltSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 674
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isMicroPanTiltSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildMicroPanTiltSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildMicroPanTiltSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildMinExposureCompensation(Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 0

    .line 478
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->isExposureCompensationSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 481
    :cond_0
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 482
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    .line 483
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method bridge synthetic buildMinExposureCompensation(Ljava/lang/Object;)I
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildMinExposureCompensation(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    return p0
.end method

.method buildPeriscopeCamSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 1043
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isPeriscopeLensSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildPeriscopeCamSupport(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildPeriscopeCamSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method public buildPhysicalCameraIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1079
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getPhysicalCameraIds()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildPhysicalCameraIds(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildPhysicalCameraIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method buildScreenFlashFireSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 853
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isScreenFlashFireSupport()Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildScreenFlashFireSupport(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildScreenFlashFireSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildSensorRect(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;
    .locals 0

    .line 864
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method bridge synthetic buildSensorRect(Ljava/lang/Object;)Landroid/graphics/Rect;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSensorRect(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method buildStereoSensorCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;
    .locals 0

    .line 449
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getStereoSensorCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;

    move-result-object p0

    .line 450
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object p1
.end method

.method bridge synthetic buildStereoSensorCropRegion(Ljava/lang/Object;)Landroid/graphics/Rect;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildStereoSensorCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method buildSuperDefinitionType(Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 0

    .line 423
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSuperDefinitionType(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    return p0
.end method

.method bridge synthetic buildSuperDefinitionType(Ljava/lang/Object;)I
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSuperDefinitionType(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    return p0
.end method

.method buildSuperFlashSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 1084
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->superFlashSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildSuperFlashSupported(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSuperFlashSupported(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildSupport4CellInOneSize(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 639
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->get4cellInOneSize(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupport4CellInOneSize(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupport4CellInOneSize(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportMultiZoomSteps(Landroid/hardware/camera2/CameraCharacteristics;)[F
    .locals 0

    .line 1038
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getMultiCameraZoomSteps(Landroid/hardware/camera2/CameraCharacteristics;)[F

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportMultiZoomSteps(Ljava/lang/Object;)[F
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportMultiZoomSteps(Landroid/hardware/camera2/CameraCharacteristics;)[F

    move-result-object p0

    return-object p0
.end method

.method buildSupportSatModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 1033
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSatModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildSupportSatModeSupport(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportSatModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildSupportSlimBodyFeatureSize(Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 0

    .line 693
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSlimBodyFeatureSize(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    return p0
.end method

.method bridge synthetic buildSupportSlimBodyFeatureSize(Ljava/lang/Object;)I
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportSlimBodyFeatureSize(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    return p0
.end method

.method buildSupportSlimBodyMode(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 688
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportSlimBodyMode(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildSupportSlimBodyMode(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportSlimBodyMode(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildSupportTranFaceDetect(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 858
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedTranFaceDetectMode(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 859
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportTranFaceDetect(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportTranFaceDetect(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupported4Cell(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 418
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->is4cell(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildSupported4Cell(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupported4Cell(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildSupportedAWBModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 576
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 578
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_0

    .line 580
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v2, "shade"

    .line 607
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    const-string v2, "twilight"

    .line 604
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    const-string v2, "cloudy_daylight"

    .line 601
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    const-string v2, "daylight"

    .line 598
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_4
    const-string v2, "warm_fluorescent"

    .line 595
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_5
    const-string v2, "fluorescent"

    .line 592
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_6
    const-string v2, "incandescent"

    .line 589
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_7
    const-string v2, "auto"

    .line 586
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_8
    const-string v2, "off"

    .line 583
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method bridge synthetic buildSupportedAWBModes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedAWBModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedAsdMode(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 401
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedAsdMode(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 402
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedAsdMode(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedAsdMode(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedContinuousVideoFocus()Z
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportContinuousVideoFocus()Z

    move-result p0

    return p0
.end method

.method buildSupportedContrastValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 528
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedContrastValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedContrastValues(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedContrastValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedDistortionCorrection(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 629
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedDistortionCorrection(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedDistortionCorrection(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedDistortionCorrection(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedDolHdrModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedDolHdrModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 190
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedDolHdrModes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedDolHdrModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedDualCamPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedDualCamPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedDualCamPictureSizes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedDualCamPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedExposureTimes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 510
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Range;

    if-eqz p0, :cond_0

    .line 512
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v0, -0x1

    .line 513
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 518
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method bridge synthetic buildSupportedExposureTimes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedExposureTimes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedEyeDecetion(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 649
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedEyeDetection(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedEyeDecetion(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedEyeDecetion(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedFaceBeautyFeatures(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 367
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedFaceBeautyFeatures(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedFaceBeautyFeatures(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedFaceBeautyFeatures(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedFaceBeautyFeaturesLevelScope(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 372
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedFaceBeautyFeaturesLevelScope(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedFaceBeautyFeaturesLevelScope(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedFaceBeautyFeaturesLevelScope(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedFaceBeautyLevels(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 357
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedFaceBeautyLevels(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 359
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 361
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method bridge synthetic buildSupportedFaceBeautyLevels(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedFaceBeautyLevels(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedFaceBeautyModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 347
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedFaceBeautyModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 349
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 351
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method bridge synthetic buildSupportedFaceBeautyModes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedFaceBeautyModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedFastSuperNight(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 831
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportedFastSuperNightMode(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildSupportedFastSuperNight(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedFastSuperNight(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildSupportedFilterIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 377
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedFilterIds(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 378
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedFilterIds(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedFilterIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedFlashModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 164
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "off"

    .line 165
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "auto"

    .line 168
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "on"

    .line 169
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "torch"

    .line 170
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method bridge synthetic buildSupportedFlashModes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedFlashModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedFocusDistanceRange(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 537
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    const/4 p1, 0x0

    .line 541
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    if-eqz p0, :cond_0

    .line 539
    new-instance v0, Landroid/util/Range;

    invoke-direct {v0, p1, p0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0

    .line 541
    :cond_0
    new-instance p0, Landroid/util/Range;

    invoke-direct {p0, p1, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p0
.end method

.method bridge synthetic buildSupportedFocusDistanceRange(Ljava/lang/Object;)Landroid/util/Range;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedFocusDistanceRange(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedFocusModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_6

    .line 199
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    aget v2, p1, v1

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "edof"

    .line 211
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v2, "continuous-picture"

    .line 205
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v2, "continuous-video"

    .line 208
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v2, "macro"

    .line 217
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v2, "auto"

    .line 202
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const-string v2, "fixed"

    .line 214
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-object p0
.end method

.method bridge synthetic buildSupportedFocusModes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedFocusModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedHDThumbnailSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedHDSize(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedHDThumbnailSizes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedHDThumbnailSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedHdModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 799
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedHdModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 800
    array-length p0, p0

    if-nez p0, :cond_0

    .line 801
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 804
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const-string p1, "0"

    .line 805
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "1"

    .line 806
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method bridge synthetic buildSupportedHdModes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedHdModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedHighFpsResolutions(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/HighFpsResolution;",
            ">;"
        }
    .end annotation

    .line 968
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getHighFpsResolutions(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedHighFpsResolutions(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedHighFpsResolutions(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedHighPreviewFPSRanges(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 888
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSMVRMetaDatas:[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 889
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 890
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSMVRMetaDatas:[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    array-length p1, p0

    move v0, v1

    :goto_0
    if-ge v0, p1, :cond_3

    aget-object v3, p0, v0

    .line 891
    iget-object v4, v3, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->pattern:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    sget-object v5, Lcom/transsion/camera/utils/SettingInfo$Pattern;->CONTINUOUS:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    if-ne v4, v5, :cond_0

    .line 892
    new-instance v4, Landroid/util/Range;

    iget v5, v3, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->fpsMax:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v3, v3, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->fpsMax:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 893
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 897
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    if-nez p0, :cond_2

    .line 899
    sget-object p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "VideoHighSpeed:SupportedHighPreviewFPSRanges StreamConfigurationMap is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v2

    .line 902
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRanges()[Landroid/util/Range;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 903
    array-length p1, p0

    if-lez p1, :cond_3

    .line 904
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 908
    :cond_3
    sget-object p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VideoHighSpeed:SupportedHighPreviewFPSRanges is:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v2
.end method

.method bridge synthetic buildSupportedHighPreviewFPSRanges(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedHighPreviewFPSRanges(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedHighSpeedSizesAndFPS(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/HighFpsResolution;",
            ">;"
        }
    .end annotation

    .line 915
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSMVRMetaDatas:[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 916
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 917
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSMVRMetaDatas:[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_7

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 918
    iget-object v3, v2, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->pattern:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    sget-object v4, Lcom/transsion/camera/utils/SettingInfo$Pattern;->CONTINUOUS:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    if-ne v3, v4, :cond_0

    .line 919
    new-instance v3, Lcom/transsion/camera/utils/HighFpsResolution;

    iget v4, v2, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->width:I

    iget v5, v2, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->height:I

    iget v2, v2, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->fpsMax:I

    invoke-direct {v3, v4, v5, v2}, Lcom/transsion/camera/utils/HighFpsResolution;-><init>(III)V

    .line 920
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 924
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_2

    .line 926
    sget-object p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "VideoHighSpeed:SupportedHighSizesAndFPS StreamConfigurationMap is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1

    .line 929
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoSizes()[Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 930
    array-length v2, v0

    if-nez v2, :cond_3

    goto/16 :goto_3

    .line 934
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 935
    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_7

    aget-object v4, v0, v3

    .line 936
    invoke-virtual {p0, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighSpeedVideoFpsRangesFor(Landroid/util/Size;)[Landroid/util/Range;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 938
    sget-object v6, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VideoHighSpeed:size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", SupportedHighPreviewFPSRanges is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 942
    :cond_4
    array-length v6, v5

    move v7, v1

    :goto_2
    if-ge v7, v6, :cond_6

    aget-object v8, v5, v7

    .line 943
    invoke-virtual {v8}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 944
    invoke-virtual {v8}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v9, v8, :cond_5

    .line 946
    new-instance v9, Lcom/transsion/camera/utils/HighFpsResolution;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v11

    invoke-direct {v9, v10, v11, v8}, Lcom/transsion/camera/utils/HighFpsResolution;-><init>(III)V

    .line 947
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 952
    :cond_7
    sget-object p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoHighSpeed:SupportedHighSizesAndFPS is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1

    .line 931
    :cond_8
    :goto_3
    sget-object p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "VideoHighSpeed:SupportedHighSizesAndFPS getHighSpeedVideoSizes is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedHighSpeedSizesAndFPS(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedHighSpeedSizesAndFPS(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public buildSupportedHumanEffectModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1028
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedHumanEffectModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildSupportedHumanEffectModes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedHumanEffectModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedISOValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 523
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedISOValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedISOValues(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedISOValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedLuminanceValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 767
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedLuminanceValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method bridge synthetic buildSupportedLuminanceValues(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedLuminanceValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedMacro(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 634
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method

.method bridge synthetic buildSupportedMacro(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedMacro(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public buildSupportedMagicSkyType(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1068
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedMagicSkyType(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 1069
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public bridge synthetic buildSupportedMagicSkyType(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedMagicSkyType(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedManualWBRangeValue(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 439
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedManualWBRangeValue(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedManualWBRangeValue(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedManualWBRangeValue(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedMaxPictureSize(Landroid/hardware/camera2/CameraCharacteristics;)J
    .locals 0

    .line 1104
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->findMaxPixels(Ljava/util/List;)J

    move-result-wide p0

    return-wide p0
.end method

.method buildSupportedMeteringModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 546
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedMeteringModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedMeteringModes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedMeteringModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedPhotoHDRModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedPhotoHdrModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 178
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedPhotoHDRModes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedPhotoHDRModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v2, 0x100

    .line 99
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getHighResolutionOutputSizes(I)[Landroid/util/Size;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 100
    array-length v4, v3

    if-lez v4, :cond_0

    .line 101
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    :cond_0
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 104
    array-length v2, v1

    if-lez v2, :cond_1

    .line 105
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedPictureSizes(Ljava/util/List;Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    .line 109
    invoke-static {p0}, Lcom/transsion/camera/utils/CameraUtil;->sortSizeInDescending(Ljava/util/List;)V

    return-object p0
.end method

.method bridge synthetic buildSupportedPictureSizes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedPostViewSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0x22

    .line 123
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 124
    array-length p1, p0

    if-lez p1, :cond_0

    .line 125
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    :cond_0
    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->sortSizeInDescending(Ljava/util/List;)V

    return-object v0
.end method

.method bridge synthetic buildSupportedPostViewSizes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedPostViewSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedPreviewFPSRanges(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 498
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 499
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Range;

    if-eqz p0, :cond_0

    .line 501
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    .line 503
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method bridge synthetic buildSupportedPreviewFPSRanges(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedPreviewFPSRanges(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedPreviewSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 84
    const-class p1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 85
    array-length p1, p0

    if-lez p1, :cond_0

    .line 86
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method bridge synthetic buildSupportedPreviewSizes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedPreviewSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public buildSupportedSMVRMetaDatas(Landroid/hardware/camera2/CameraCharacteristics;)[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;
    .locals 0

    .line 958
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportSMVRModeMetaData(Landroid/hardware/camera2/CameraCharacteristics;)[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildSupportedSMVRMetaDatas(Ljava/lang/Object;)[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedSMVRMetaDatas(Landroid/hardware/camera2/CameraCharacteristics;)[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedSTBlurModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 836
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportSTBlurModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 837
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedSTBlurModes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedSTBlurModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedScreenFlashModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 772
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedScreenFlashModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    .line 774
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 777
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const-string p1, "off"

    .line 778
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "on"

    .line 779
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "auto"

    .line 780
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method bridge synthetic buildSupportedScreenFlashModes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedScreenFlashModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedScreenTorchStatus(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1099
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedScreenTorchStatus(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic buildSupportedScreenTorchStatus(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedScreenTorchStatus(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedShot2Shot(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 786
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedShot2Shot(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 787
    array-length p0, p0

    if-nez p0, :cond_0

    .line 788
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 791
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const-string p1, "0"

    .line 792
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "1"

    .line 793
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method bridge synthetic buildSupportedShot2Shot(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedShot2Shot(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedSingleBlurLevels(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 842
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportSingleBlurLevels(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 843
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedSingleBlurLevels(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedSingleBlurLevels(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedStableSuperNight(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 826
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportedStableSuperNight(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildSupportedStableSuperNight(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedStableSuperNight(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildSupportedSuperDefinition(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 413
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportedSuperDefinition(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildSupportedSuperDefinition(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedSuperDefinition(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildSupportedSuperNightModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 817
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedSuperNightModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    .line 819
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 821
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedSuperNightModes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedSuperNightModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedSuperResolution(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 428
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportedSuperResolution(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic buildSupportedSuperResolution(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedSuperResolution(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method buildSupportedThumbnailSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 134
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Size;

    if-eqz p0, :cond_0

    .line 136
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 137
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->sortSizeInDescending(Ljava/util/List;)V

    return-object p1

    .line 140
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method bridge synthetic buildSupportedThumbnailSizes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedThumbnailSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedTranssionHDR(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 407
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedTranssionHDR(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 408
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedTranssionHDR(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedTranssionHDR(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedVideoEffectIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 389
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedVideoEffectIds(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 390
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedVideoEffectIds(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedVideoEffectIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedVideoFilterIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 383
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedVideoFilterIds(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 384
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedVideoFilterIds(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedVideoFilterIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedVideoFrameIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 395
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedVideoFrameIds(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 396
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedVideoFrameIds(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedVideoFrameIds(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedVideoHDRModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedVideoHdrModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 184
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedVideoHDRModes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedVideoHDRModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedVideoPortraitLevel(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 988
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedVideoPortraitLevel(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 990
    sget-object p1, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoPortraitLevel:size is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 991
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method bridge synthetic buildSupportedVideoPortraitLevel(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedVideoPortraitLevel(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedVideoSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->getStreamConfigurationMap(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/hardware/camera2/params/StreamConfigurationMap;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 154
    const-class p1, Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 156
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method bridge synthetic buildSupportedVideoSizes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedVideoSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedVsdofLevel(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 433
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedVsdofLevel(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;

    move-result-object p0

    .line 434
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method bridge synthetic buildSupportedVsdofLevel(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedVsdofLevel(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method buildSupportedZoomRatios(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 246
    invoke-direct/range {p0 .. p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->getZoomRange(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Range;

    move-result-object v2

    .line 248
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 249
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 251
    iget-object v5, v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v5, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSatModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    .line 252
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    if-eqz v4, :cond_b

    .line 254
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    cmpl-float v6, v7, v6

    if-lez v6, :cond_b

    .line 255
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    .line 257
    iget-object v7, v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v7, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isTeleCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v7

    const/16 v8, 0x320

    const/16 v9, 0x3e8

    const/4 v10, 0x1

    const/16 v11, 0x64

    if-nez v7, :cond_5

    iget-object v7, v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    .line 258
    invoke-interface {v7, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isPeriscopeLensSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 259
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    if-nez v7, :cond_0

    const-wide/16 v12, 0x0

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-long v14, v7

    mul-long/2addr v12, v14

    .line 262
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->findMaxPixels(Ljava/util/List;)J

    move-result-wide v14

    iget-wide v6, v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mMaxPictureSizePixels:J

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 263
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const-wide/32 v14, 0xf4240

    cmp-long v12, v12, v14

    if-gez v12, :cond_1

    .line 267
    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_2

    .line 269
    :cond_1
    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v12}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 270
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-nez v13, :cond_2

    const/16 v6, 0xc8

    .line 272
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_2

    .line 273
    :cond_2
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v10, v12, :cond_5

    const-wide/32 v12, 0x2dc6c00

    cmp-long v12, v6, v12

    if-ltz v12, :cond_3

    .line 276
    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_1

    :cond_3
    const-wide/32 v12, 0xd418e0

    cmp-long v6, v6, v12

    if-gtz v6, :cond_4

    const/16 v6, 0x190

    .line 278
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_1

    .line 280
    :cond_4
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_1
    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    .line 284
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v4, v6

    float-to-int v4, v4

    :cond_5
    :goto_2
    if-eqz v5, :cond_6

    if-eqz v2, :cond_6

    .line 295
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v2, v5

    float-to-int v11, v2

    goto :goto_3

    :cond_6
    const/4 v10, 0x5

    .line 300
    :goto_3
    iget-object v2, v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isPeriscopeLensSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v4, 0x4b0

    .line 303
    :cond_7
    iget-object v2, v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2, v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isTeleCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 304
    iget-object v0, v0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getBaseZoomRatio()F

    move-result v0

    const/high16 v1, 0x40200000    # 2.5f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    move v8, v9

    goto :goto_4

    :cond_9
    move v8, v4

    :goto_4
    if-lt v8, v11, :cond_b

    :goto_5
    if-ge v11, v8, :cond_a

    .line 313
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v11, v10

    goto :goto_5

    .line 315
    :cond_a
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    return-object v3
.end method

.method bridge synthetic buildSupportedZoomRatios(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildSupportedZoomRatios(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public buildYuvCaptureFlipModeSupported(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1074
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportedYuvCaptureFlipMode(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic buildYuvCaptureFlipModeSupported(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->buildYuvCaptureFlipModeSupported(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCaptureThumbnailSource(ZJZ)I
    .locals 0

    .line 712
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getCaptureThumbnailSource(ZJZ)I

    move-result p0

    return p0
.end method

.method public getCreateSessionThumbnailSource()I
    .locals 0

    .line 707
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getCreateSessionThumbnailSource()I

    move-result p0

    return p0
.end method

.method public getSupportedHighSpeedSizesAndFPS()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/HighFpsResolution;",
            ">;"
        }
    .end annotation

    .line 963
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedHighSpeedSizesAndFPS:Ljava/util/List;

    return-object p0
.end method

.method public isAntiVideoSupport()Z
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isAntiVideoSupport()Z

    move-result p0

    return p0
.end method

.method public isAutoWaterMarkSupport()Z
    .locals 0

    .line 737
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isAutoWaterMarkSupport()Z

    move-result p0

    return p0
.end method

.method public isBWPortraitSupport()Z
    .locals 0

    .line 757
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isBWPortraitSupport()Z

    move-result p0

    return p0
.end method

.method public isFastThumbSupport()Z
    .locals 0

    .line 722
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isFastThumbSupport()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isFusionSupport()Z
    .locals 0

    .line 732
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isFusionSupport()Z

    move-result p0

    return p0
.end method

.method public isGenderAttributeValueSupport()Z
    .locals 0

    .line 1008
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isGenderAttributeValueSupport()Z

    move-result p0

    return p0
.end method

.method public isHighFpsSupport()Z
    .locals 0

    .line 727
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isHighFpsSupport()Z

    move-result p0

    return p0
.end method

.method public isSMVRModeSupport()Z
    .locals 0

    .line 882
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSMVRModeSupport()Z

    move-result p0

    return p0
.end method

.method public isSupportHighLight()Z
    .locals 0

    .line 1058
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportHighLight()Z

    move-result p0

    return p0
.end method

.method public isThumbnailPostViewSupport()Z
    .locals 0

    .line 717
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isThumbnailPostViewSupport()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isVideoPortraitSupport()Z
    .locals 0

    .line 973
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isVideoPortraitSupport()Z

    move-result p0

    return p0
.end method

.method public isVideoSuperNightSupport()Z
    .locals 0

    .line 978
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isVideoSuperNightSupport()Z

    move-result p0

    return p0
.end method

.method public isVideoSuperNightYUVSupport()Z
    .locals 0

    .line 983
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isVideoSuperNightYUVSupport()Z

    move-result p0

    return p0
.end method

.method public isVideoWaterMarkSupport()Z
    .locals 0

    .line 742
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isVideoWaterMarkSupport()Z

    move-result p0

    return p0
.end method

.method public isZSLSupport()Z
    .locals 0

    .line 1018
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isZSLSupport()Z

    move-result p0

    return p0
.end method

.method public needFlipForVideoMirror()Z
    .locals 0

    .line 1023
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->needFlipForVideoMirror()Z

    move-result p0

    return p0
.end method

.method setMaxPictureSize(J)V
    .locals 0

    .line 1109
    iput-wide p1, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mMaxPictureSizePixels:J

    return-void
.end method

.method public shouldLimitZoomInSlowMotion()Z
    .locals 0

    .line 1063
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->shouldLimitZoomInSlowMotion()Z

    move-result p0

    return p0
.end method

.method public useBitmapWaterMark()Z
    .locals 0

    .line 747
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->useBitmapWaterMark()Z

    move-result p0

    return p0
.end method

.method usePreAECaptureFlow(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 1048
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->usePreAECaptureFlow(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method

.method bridge synthetic usePreAECaptureFlow(Ljava/lang/Object;)Z
    .locals 0

    .line 42
    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities2Impl;->usePreAECaptureFlow(Landroid/hardware/camera2/CameraCharacteristics;)Z

    move-result p0

    return p0
.end method
