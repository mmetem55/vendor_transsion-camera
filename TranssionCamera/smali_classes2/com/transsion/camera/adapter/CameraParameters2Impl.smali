.class Lcom/transsion/camera/adapter/CameraParameters2Impl;
.super Lcom/transsion/camera/adapter/CameraParameters;
.source "CameraParameters2Impl.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final REGION_WEIGHT:I

.field private static final ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;


# instance fields
.field private TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private final mActiveArrayRect:Landroid/graphics/Rect;

.field private mAvailableFaceDetectModes:[I

.field private final mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

.field private final mCropRectangle:Landroid/graphics/Rect;

.field private final mFovCropRectangle:Landroid/graphics/Rect;

.field private final mFovWideCropRectangle:Landroid/graphics/Rect;

.field private mIsFlashRequiredInAutoMode:Z

.field private mMulitiCropRegionZoomRatio:F

.field private mMultiZoomKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

.field private final mSensorFacing:I

.field private final mSensorOrientation:I

.field private mZoomRatioKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    .line 54
    new-instance v7, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    const/4 v1, 0x0

    aput-object v7, v0, v1

    sput-object v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v0, 0x0

    const/high16 v1, 0x447a0000    # 1000.0f

    const v2, 0x3cb43958    # 0.022f

    .line 59
    invoke-static {v0, v1, v2}, Lcom/transsion/camera/utils/CameraUtil;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->REGION_WEIGHT:I

    return-void
.end method

.method constructor <init>(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Lcom/transsion/camera/adapter/CameraCapabilities2Impl;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 4

    .line 85
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraParameters;-><init>()V

    .line 48
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Parameters"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIsFlashRequiredInAutoMode:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 79
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mMulitiCropRegionZoomRatio:F

    .line 80
    new-instance v1, Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v3, "android.control.zoomRatio"

    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mZoomRatioKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 81
    new-instance v1, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v3, "com.mediatek.multicamfeature.multiCamZoomValue"

    invoke-direct {v1, v3, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mMultiZoomKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 86
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 87
    iput-object p3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    .line 88
    iput-object p4, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    .line 89
    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, p3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    .line 90
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->setTagValue(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[CameraParameters2Impl] cameraid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cs:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 93
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-direct {p1, v0, v0, v1, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    goto :goto_0

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p3, "CameraParameters2Impl mActiveArraySize is null !!!"

    invoke-static {p1, p3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 96
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    .line 98
    :goto_0
    invoke-interface {p4, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getFovCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mFovCropRectangle:Landroid/graphics/Rect;

    .line 99
    invoke-interface {p4, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getFovWideCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mFovWideCropRectangle:Landroid/graphics/Rect;

    .line 100
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mSensorOrientation:I

    .line 101
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mSensorFacing:I

    .line 102
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mAvailableFaceDetectModes:[I

    return-void
.end method

.method public static isStillCaptureTemplate(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static rectsToSensorRects(Ljava/util/List;IILandroid/util/Size;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;II",
            "Landroid/util/Size;",
            "Landroid/graphics/Rect;",
            ")[",
            "Landroid/hardware/camera2/params/MeteringRectangle;"
        }
    .end annotation

    .line 1297
    sget-object v0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 1298
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    if-eqz p3, :cond_0

    .line 1301
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr v0, p3

    .line 1302
    invoke-static {p4, v0}, Lcom/transsion/camera/utils/CoordinatesUtil;->getPreviewRectFromSensorRect(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p4

    .line 1307
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    new-array v0, p3, [Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 p3, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, p3

    .line 1309
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_4

    .line 1310
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/utils/SettingInfo$Area;

    if-eqz v1, :cond_3

    if-nez p4, :cond_2

    goto :goto_1

    .line 1314
    :cond_2
    iget-object v1, v1, Lcom/transsion/camera/utils/SettingInfo$Area;->rect:Landroid/graphics/Rect;

    invoke-static {v1, p1, p2, p4}, Lcom/transsion/camera/utils/CoordinatesUtil;->referenceToSensorSpace(Landroid/graphics/Rect;ZILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1316
    new-instance v2, Landroid/hardware/camera2/params/MeteringRectangle;

    sget v3, Lcom/transsion/camera/adapter/CameraParameters2Impl;->REGION_WEIGHT:I

    invoke-direct {v2, v1, v3}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    aput-object v2, v0, p3

    goto :goto_2

    .line 1312
    :cond_3
    :goto_1
    new-instance v1, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v1, v0, p3

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private updateActivityOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1457
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getActivityOrientation()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setActivityOrientation(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateAiMoonMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1389
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAiMoonMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAiMoonMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateAiShutter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1519
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAisMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAiShutterMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateAntiVideoMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1243
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isAntiVideoSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1245
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "anti video is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1248
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAntiVideoMode()Ljava/lang/String;

    move-result-object v0

    .line 1249
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAntiVideoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateAppMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 1411
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAppMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateControlMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    .line 744
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v2, "hdr"

    .line 747
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 757
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateControlMode controlMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", currentSceneMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 758
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private updateControlSceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 11

    .line 762
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    .line 764
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperNightMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dsp_super_night"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "sprd_night"

    const-string v3, "hdr"

    if-nez v1, :cond_0

    .line 765
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperNightMode()Ljava/lang/String;

    move-result-object v1

    const-string v4, "meg_super_night"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 766
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionLowLightMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "1"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isSupportHDRForSuperNight()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 777
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMagicSkyType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMagicSkyType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    move-object v0, v3

    .line 780
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperFlashValue()Ljava/lang/String;

    move-result-object v1

    const-string v4, "on"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v3

    .line 783
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPipDeviceValue()Ljava/lang/String;

    move-result-object v1

    const-string v4, "dual_video"

    if-eqz v1, :cond_5

    move-object v0, v4

    .line 787
    :cond_5
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->needUpdateSceneForPortrait()Z

    move-result v1

    const-string v5, "sprd_portrait"

    if-eqz v1, :cond_7

    .line 788
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v1

    const-string v6, "val_stb_blur"

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v1

    const-string v6, "val_sdof"

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    move-object v0, v5

    .line 794
    :cond_7
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getFlashWillFire()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v0, "off"

    :cond_8
    if-eqz v0, :cond_e

    const/4 v1, -0x1

    .line 800
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x3

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v1, v8

    goto :goto_1

    :sswitch_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v1, v7

    goto :goto_1

    :sswitch_3
    const-string v2, "mtk_360hdr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v1, v10

    goto :goto_1

    :sswitch_4
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v1, v9

    :cond_9
    :goto_1
    if-eqz v1, :cond_d

    if-eq v1, v9, :cond_c

    if-eq v1, v8, :cond_b

    if-eq v1, v10, :cond_a

    goto :goto_2

    :cond_a
    const/16 v7, 0x65

    goto :goto_2

    :cond_b
    move v7, v10

    goto :goto_2

    :cond_c
    const/16 v7, 0x8

    goto :goto_2

    :cond_d
    const/16 v7, 0x12

    .line 819
    :goto_2
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1, v7}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->updateControlSceneMode(I)I

    move-result v1

    .line 820
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentSceneMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sceneMode:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 821
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_e
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x79c99d08 -> :sswitch_4
        -0x6713495c -> :sswitch_3
        0x192f6 -> :sswitch_2
        0x2f7f4928 -> :sswitch_1
        0x6df8fc8b -> :sswitch_0
    .end sparse-switch
.end method

.method private updateCustomTuning(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1497
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getCustomTuning()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCustomTuning(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateFaceAttrDetectMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1341
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFaceAttrMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceAttrDetectMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateFakeDualLensMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1324
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFakeDualLensMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableFakeDualLensMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateFlashStyle(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1449
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashStyle()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFlashStyle(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateFocusRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    .line 527
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    .line 531
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mSensorFacing:I

    iget v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mSensorOrientation:I

    .line 532
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object p0

    .line 531
    invoke-static {v1, v2, v3, p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->rectsToSensorRects(Ljava/util/List;IILandroid/util/Size;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p0

    .line 533
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private updateFrontDualFlashColorTemp(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1265
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFrontDualFlashColorTemp()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFrontDualFlashColorTemp(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateFrontDualFlashStrengthMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1269
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFrontDualFlashStrengthMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFrontDualFlashStrengthMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateGenderAttributeValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 1397
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isGenderAttributeValueSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1399
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "gender attribute value is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1402
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getGenderAttributeValue()Ljava/lang/String;

    move-result-object v0

    .line 1403
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1404
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getAttributeValue is empty"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1407
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setGenderAttributeValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateHighLightMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1431
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    if-eqz v0, :cond_0

    .line 1432
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHighLightMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHighLight(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_0
    return-void
.end method

.method private updateIszBvValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1527
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getIszBvValue()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setIszBvValueMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateLiveResultMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1505
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLiveResultMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setLiveResultMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateMacroLampValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1377
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMacroLampValue()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMacroLampValue(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateMagicSkyMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 1436
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMagicSkyMode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMagicSkyMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1437
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMagicSkyType()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMagicSkyType(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateMagicSkyResult(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1441
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMagicSkyResult()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMagicSkyResult(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateMeteringRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 5

    .line 509
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    .line 513
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mSensorFacing:I

    iget v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mSensorOrientation:I

    .line 514
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object v4

    .line 513
    invoke-static {v1, v2, v3, v4, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->rectsToSensorRects(Ljava/util/List;IILandroid/util/Size;Landroid/graphics/Rect;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    .line 515
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 518
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMeteringMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    .line 519
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 520
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMeteringMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_0
    return-void
.end method

.method private updateMoonDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1385
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMoonDetection()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMoonDetectionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateNightHawk(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1381
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getNightHawkMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setNightHawkMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateOISMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    .line 731
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isOISSupport()Z

    move-result v0

    .line 732
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateOISMode,isSupport:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 734
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const-string v0, "on"

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->updateOISMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 735
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updatePipDeviceValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1461
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPipDeviceValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPipDeviceValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updatePortraitModeEnhanceMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1393
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPortraitModeEnhanceMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPortraitModeEnhanceMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updatePreviewRange(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 723
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewFPSRange()Landroid/util/Range;

    move-result-object v0

    .line 724
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updatePreviewRange, fpsRange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 726
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateRTDofMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isRTDofEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableRTDofMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRecordingOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1106
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isRecordingHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoOrientation()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setRecordingOrientation(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_0
    return-void
.end method

.method private updateRemosaicMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1148
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getRemosaicMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setRemosaicMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequest360VideoHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->get360VideoHDRMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->set360VideoHdrMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestAWBLockStatus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 1

    .line 872
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAWBLockStatus()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->isHDRCapture(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 873
    :goto_1
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private updateRequestAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 13

    .line 827
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAWBMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v1, -0x1

    .line 829
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v12, "10"

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "daylight"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "fluorescent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    move v1, v3

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "twilight"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    move v1, v4

    goto :goto_0

    :sswitch_3
    const-string v2, "warm_fluorescent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v5

    goto :goto_0

    :sswitch_4
    const-string v2, "cloudy_daylight"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    move v1, v6

    goto :goto_0

    :sswitch_5
    const-string v2, "shade"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    move v1, v7

    goto :goto_0

    :sswitch_6
    const-string v2, "auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    move v1, v8

    goto :goto_0

    :sswitch_7
    const-string v2, "off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    move v1, v9

    goto :goto_0

    :sswitch_8
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    move v1, v10

    goto :goto_0

    :sswitch_9
    const-string v2, "incandescent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    move v1, v11

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_1

    .line 846
    :pswitch_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 840
    :pswitch_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 852
    :pswitch_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 843
    :pswitch_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 849
    :pswitch_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 855
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 834
    :pswitch_6
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 831
    :pswitch_7
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 858
    :pswitch_8
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 837
    :pswitch_9
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 863
    :goto_1
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 865
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 866
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getManualAWBValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setManualAWBValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x37fc9231 -> :sswitch_9
        0x61f -> :sswitch_8
        0x1ad6f -> :sswitch_7
        0x2dddaf -> :sswitch_6
        0x6854e2d -> :sswitch_5
        0x11ac9bf5 -> :sswitch_4
        0x55d265ae -> :sswitch_3
        0x625dee90 -> :sswitch_2
        0x71671468 -> :sswitch_1
        0x73cf92fa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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

.method private updateRequestAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 715
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAeLock()Z

    move-result v0

    .line 716
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->needLockAe()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 719
    :cond_0
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private updateRequestAnimalEyeDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1361
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionAnimalEyeDetection()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAnimalEyeDetection(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestAsd(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1128
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionAsdMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAsdMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestAutoMacroSwitch(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1365
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionAutoMacroSwitch()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAutoMacroSwitch(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestAutoWatermark(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 3

    .line 1220
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isAutoWaterMarkSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1222
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "auto watermark is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1225
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAutoWatermarkMode()Ljava/lang/String;

    move-result-object v0

    .line 1226
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1227
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "autoWatermarkMode is empty"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1230
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isRecordingHint()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1231
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoOrientation()I

    move-result v2

    invoke-interface {v1, v0, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAutoWaterMarkMode(Ljava/lang/String;ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 1233
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 v2, -0x1

    invoke-interface {v1, v0, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAutoWaterMarkMode(Ljava/lang/String;ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :goto_0
    const/4 p1, 0x2

    if-eq p2, p1, :cond_4

    const/4 p1, 0x4

    if-eq p2, p1, :cond_4

    const/4 p1, 0x5

    if-eq p2, p1, :cond_4

    const/4 p1, 0x6

    if-eq p2, p1, :cond_4

    .line 1236
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isRecordingHint()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_5

    const-string p1, "on"

    .line 1237
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1238
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAutoWaterMarkParameterList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setAutoWaterMarkParameterList(Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method private updateRequestBWConvert(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1257
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isBWConvertEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableBWConvert(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestBWPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1253
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isBWPortraitEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableBWPortrait(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestBgImageReaderId(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1032
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isBgServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getBGImageReaderId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setBgImageReaderId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_0
    return-void
.end method

.method private updateRequestBgServiceMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1026
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isBgServiceEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isBgServiceEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableBgServiceMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_0
    return-void
.end method

.method private updateRequestColorLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1510
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getColorLevel()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setColorLevelValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestContinuousShot(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 1216
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableContinuousShot(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestContrast(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    .line 1191
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getContrastValue()I

    move-result v0

    .line 1192
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRequestContrast: config value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getContrastValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1193
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setContrastParameter(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestCusIspAsd(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1132
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionCusIspAsd()[I

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setCusIspAsd([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestDenoise(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1140
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionSmartDenoise()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setDenoiseMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestDistortionCorrection(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1211
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateRequestDistortionCorrection], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getDistortionCorrectionMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1212
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getDistortionCorrectionMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setDistortionCorrection(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestDistortionCorrectionPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1206
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateRequestDistortionCorrectionPreview], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getDistortionCorrectionPreviewEnablet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1207
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getDistortionCorrectionPreviewEnablet()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setDistortionCorrectionPreview(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 5

    .line 701
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureCompensation()I

    move-result v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    if-nez v0, :cond_0

    .line 703
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getISOValue()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v1

    const-wide/32 v3, 0x7735940

    cmp-long p2, v1, v3

    if-lez p2, :cond_0

    .line 705
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/CameraCapabilities;->getExposureCompensationStep()Landroid/util/Rational;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Rational;->getDenominator()I

    move-result p2

    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getExposureCompensationStep()Landroid/util/Rational;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Rational;->getNumerator()I

    move-result v0

    div-int/2addr p2, v0

    .line 706
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v0

    div-int/2addr v0, p2

    .line 707
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x419dcd6500000000L    # 1.25E8

    div-double/2addr v1, v3

    double-to-float v1, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    int-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    int-to-double v3, p2

    mul-double/2addr v1, v3

    double-to-int p2, v1

    .line 708
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 710
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRequestExposureCompensation: config value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureCompensation()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", set value:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 711
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private updateRequestExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 6

    .line 902
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v0

    .line 903
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isNeedRestrictExposureTime()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const-wide/32 v2, 0x7735940

    .line 904
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 907
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRequestExposureTime: config value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", set value:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", template:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 911
    :cond_1
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 913
    :goto_0
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private updateRequestEyeDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1353
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionEyeDetection()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setEyeDetection(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestFaceBeauty(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 978
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFaceBeautyMode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceBeautyMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 979
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFaceBeautyLevel()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceBeautyLevel(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestFaceDetectionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 660
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateRequestFaceDetectionMode] mFaceDetectionEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isFaceDetectionEnable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 661
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isFaceDetectionEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 664
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mAvailableFaceDetectModes:[I

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 665
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 666
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableFace3A(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mAvailableFaceDetectModes:[I

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 669
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableFace3A(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 671
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "face detect not supported."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 674
    :cond_2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    .line 675
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 674
    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 676
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableFace3A(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    :goto_0
    return-void
.end method

.method private updateRequestFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 930
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionFilterId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 11

    .line 563
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 583
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    .line 584
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v0, :cond_7

    .line 565
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x3

    const-string v9, "on"

    const/4 v10, 0x2

    sparse-switch v7, :sswitch_data_0

    :goto_0
    move v0, v1

    goto :goto_1

    :sswitch_0
    const-string v7, "torch"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v8

    goto :goto_1

    :sswitch_1
    const-string v7, "auto"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v10

    goto :goto_1

    :sswitch_2
    const-string v7, "off"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :sswitch_3
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v5

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_5

    .line 592
    :pswitch_0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_2
    move-object v0, v2

    move-object v2, v4

    goto :goto_6

    .line 567
    :pswitch_1
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isRecordingHint()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 571
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getRingScreenLight()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 572
    iget-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIsFlashRequiredInAutoMode:Z

    if-nez v2, :cond_5

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move-object v2, v6

    goto :goto_2

    .line 573
    :cond_5
    :goto_3
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    .line 578
    :cond_6
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_4

    :pswitch_2
    move-object v2, v4

    :goto_4
    move-object v0, v6

    goto :goto_6

    .line 587
    :pswitch_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_4

    :cond_7
    :goto_5
    move-object v0, v2

    .line 601
    :goto_6
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getISOValue()I

    move-result v4

    const-wide/16 v7, -0x1

    if-ne v4, v1, :cond_9

    .line 602
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v9

    cmp-long v1, v9, v7

    if-eqz v1, :cond_8

    goto :goto_7

    :cond_8
    move v3, v5

    :cond_9
    :goto_7
    if-eqz v3, :cond_a

    .line 603
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isAENeedOff()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 605
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "updateRequestAEMode to CONTROL_AE_MODE_OFF"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move-object v2, v6

    .line 608
    :cond_a
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getExposureTime()J

    move-result-wide v3

    cmp-long v1, v3, v7

    if-eqz v1, :cond_b

    .line 610
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "updateRequestFlashMode to FLASH_MODE_OFF"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_8

    :cond_b
    move-object v6, v0

    .line 614
    :goto_8
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[updateRequestFlashMode], aeMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , flashMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 615
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 616
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0xddf -> :sswitch_3
        0x1ad6f -> :sswitch_2
        0x2dddaf -> :sswitch_1
        0x696d3fc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateRequestFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 11

    .line 621
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fixed"

    const/4 v2, 0x1

    .line 647
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v0, :cond_6

    const/4 v4, -0x1

    .line 623
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v2, v4

    goto :goto_1

    :sswitch_0
    const-string v2, "continuous-picture"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v6

    goto :goto_1

    :sswitch_1
    const-string v2, "macro"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    move v2, v7

    goto :goto_1

    :sswitch_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v8

    goto :goto_1

    :sswitch_3
    const-string v2, "edof"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v9

    goto :goto_1

    :sswitch_4
    const-string v5, "auto"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_0

    :sswitch_5
    const-string v2, "continuous-video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    move v2, v10

    :cond_5
    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 628
    :pswitch_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    .line 640
    :pswitch_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    .line 637
    :pswitch_2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    .line 634
    :pswitch_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :pswitch_4
    move-object v2, v3

    goto :goto_3

    .line 631
    :pswitch_5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v2, 0x0

    .line 646
    :goto_3
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->needFocusModeAuto()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move-object v3, v2

    .line 650
    :goto_4
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateRequestFocusMode], currentFocusMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " , needFocusModeAuto:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->needFocusModeAuto()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 651
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-ne v0, v1, :cond_8

    .line 654
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFocusDistance()F

    move-result p0

    .line 655
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0xb99cbc3 -> :sswitch_5
        0x2dddaf -> :sswitch_4
        0x2f6eb6 -> :sswitch_3
        0x5cee774 -> :sswitch_2
        0x62d9bcc -> :sswitch_1
        0x363d9440 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateRequestFusionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 8

    .line 1064
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->isFusionSupport()Z

    move-result v0

    .line 1065
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFusionMode()Ljava/lang/String;

    move-result-object v1

    .line 1066
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionHDR()I

    move-result v2

    .line 1067
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionLowLightMode()I

    move-result v3

    .line 1068
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isFusionSupport: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , fusionMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-nez v1, :cond_0

    return-void

    .line 1072
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getZoomRatio()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    .line 1073
    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hdr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", lowLightHdr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , zoomRatio: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const v0, 0x3f19999a    # 0.6f

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v4, v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    if-eq v2, v0, :cond_1

    if-eq v3, v0, :cond_1

    const-string v0, "on"

    .line 1075
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1076
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFusionMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 1078
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const-string v0, "off"

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFusionMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateRequestHdMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1056
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHdMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHdMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestHighFpsMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1060
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHighFpsMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHighFpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestHumanDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1357
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionHumanDetection()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHumanDetection(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestHumanEffect(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 1415
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getHumanEffectMode()Ljava/lang/String;

    move-result-object v0

    .line 1416
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1417
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setHumanEffectMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_0
    return-void
.end method

.method private updateRequestISOValue(Landroid/hardware/camera2/CaptureRequest$Builder;I)V
    .locals 3

    .line 888
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getISOValue()I

    move-result p2

    .line 893
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRequestISOValue: config value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getISOValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", set value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 897
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setISOParameter(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 898
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private updateRequestJpegGPSLocation(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 550
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getJpegGPSLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 551
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getJpegGPSLocation()Landroid/location/Location;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateRequestJpegOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 546
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getJpegOrientation()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private updateRequestJpegQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 537
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getJpegQuality()I

    move-result p0

    if-lez p0, :cond_0

    int-to-byte p0, p0

    .line 540
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 541
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateRequestLowLight(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1160
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionLowLightMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setLowLightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestLuminance(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1261
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getLuminanceValue()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setLuminanceValue(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestMakeUpIntensitys(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 962
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMakeUpIntensitys()[F

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionMakeUpIntensity([FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestMakeUpMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 958
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMakeUpMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionMakeUpMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestMakeUpVideoIntensitys(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMakeUpVideoIntensitys()[F

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionMakeUpVideoIntensity([FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestMakeUpVideoMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 966
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMakeUpVideoMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionMakeUpVideoMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestMiddleNight(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1164
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMiddleNightMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMiddleNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestMirrorMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 1099
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isRecordingHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isMirrorEnable()Z

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableVideoMirror(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1102
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isMirrorEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableMirror(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestModeUltrazoom(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1120
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isModeUltrazoomEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableModeUltrazoom(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestMultiFaceBeauty(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    .line 983
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getMultiFaceBeautyMode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 985
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[updateRequestMultiFaceBeauty], mode is null, return!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 988
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateRequestMultiFaceBeauty], mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 989
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v1, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceBeautyMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const/4 v1, -0x1

    .line 990
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "multifaceCustom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "custom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 992
    :pswitch_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFaceBeautyLevel()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceBeautyLevel(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_1

    .line 996
    :pswitch_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFaceBeautyFeaturesLevel()[I

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setFaceBeautyFeaturesLevel([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5069748f -> :sswitch_2
        -0x4e8d49d9 -> :sswitch_1
        0xddf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateRequestNight(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1156
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionNightMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestNight3dnrAlgo(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1168
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getNight3dnrAlgo()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->updateNight3dnrAlgo(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestNightMorHdsScene(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1172
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getNightMorHdsScene()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->updateNightMorHdsScene(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestPDAF(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 1124
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPDAF(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestPhotoHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 918
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPhotoHDRMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPhotoHdrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1002
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPortraitMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setPortraitMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestPostViewSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    .line 1184
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPostViewSize()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1186
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    aput v0, v1, v2

    invoke-interface {p0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setThumbnailPostViewSize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_0
    return-void
.end method

.method private updateRequestProfessionalMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1116
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isProfessionModeEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableProfessionalMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestQuickPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1112
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isQuickPreviewEnable()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableQuickPreview(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSTBlurLightStrength(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1014
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSTBlurLightStrength()F

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSTBlurLightStrength(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSTBlurMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1006
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSTBlurMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSTBlurMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSTBlurReaRatio(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1018
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSTBlurReaRatio()F

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSTBlurReaRatio(FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSTBlurStrengths(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSTBlurStrengths()[F

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSTBlurStrengths([FLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestScreenFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    .line 1273
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getScreenFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 1274
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1275
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "screenFlashMode is empty"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1278
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " screenFlashMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1279
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setScreenFlashMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestScreenFlashStatus(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 1283
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getScreenFlashStatus()Ljava/lang/String;

    move-result-object v0

    .line 1284
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1285
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "screenFalshStatus is empty"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1288
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setScreenFlashStatus(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSdofPhotoMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 1038
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSatModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v0}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->getSupportLogicalCameraMode()[I

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1042
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSdofPhotoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_1

    .line 1045
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCapabilities;->isLogicalCameraSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1046
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const-string v1, "on"

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSdofPhotoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 1048
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const-string v1, "off"

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSdofPhotoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1050
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVsdofLevel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSdofPhotoLevel(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1051
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSdofPreviewSize(Landroid/util/Size;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateRequestShot2shot(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 1202
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getShot2ShotMode()I

    move-result v1

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setShot2ShotMode(ILjava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSingleBlurLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1022
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSTBlurLevel()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSingleBlurLevel(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSlimBodyLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 974
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSlimBodyLevels()[I

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionSlimBodyLevels([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSlimBodyMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 954
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getBodySlimMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionSlimBodyMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestStreamFlip(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1523
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getStreamFlip()Z

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableStreamFlip(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSuperNightFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 934
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionSuperNightFilterId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSuperNightFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestSuperNightMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1085
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperFlashValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "None"

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1087
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperNightAlgoType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Night_Light"

    if-ne v0, v2, :cond_1

    .line 1088
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "off"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    .line 1090
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setMiddleNightMode(I)V

    .line 1091
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMiddleNight(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    .line 1093
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperNightAlgoType()Ljava/lang/String;

    move-result-object v1

    .line 1095
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperNightMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v1, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSuperNightMode(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestThumbnailSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 881
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getThumbnailSize()Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 883
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateRequestTranssionHDR(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1136
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionHDR()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionHDR(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestTranssionPlugin(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1176
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionPluginEnable()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableTranssionPlugin(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestTuningChn(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 740
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFaceBeautyMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSceneMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTuningChn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestVideoEffect(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 946
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionVideoEffectId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoEffectId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestVideoFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 938
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionVideoFilterId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestVideoFilterSkinType(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionVideoFilterSkinType()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoFilterSkinType(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestVideoFrame(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionVideoFrameId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoFrameId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestVideoHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 922
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoHDRMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoHdrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestVideoInterpolation(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1180
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoInterpolationEnable()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->enableVideoInterpolation(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRequestZSLMode(Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V
    .locals 0

    if-nez p3, :cond_0

    .line 681
    invoke-static {p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->isStillCaptureTemplate(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 682
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isZSLEnable()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 684
    :cond_0
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->isZSLEnable()Z

    move-result p0

    invoke-interface {p2, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setZSLMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateRingFlashLight(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1514
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getRingScreenLight()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setRingFlashLight(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateSMVRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1349
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSMVRRequestParams()[I

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSMVRMode([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateSatPictureSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    .line 1422
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSatPictureSize()Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1424
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 1425
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 1426
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    invoke-interface {p0, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSatPictureSize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    :cond_0
    return-void
.end method

.method private updateScreenTorchStatus(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1453
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getScreenTorchStatus()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setScreenTorchStatus(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateSuperDefinitionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1144
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperDefinitionMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSuperDefinitionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateSuperFlashValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1445
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperFlashValue()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSuperFlashValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateSuperResolutionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1152
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getSuperResolutionMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSuperResolutionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateTranFaceDetectMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1337
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranFaceDetectMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranFaceDetectMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateTranssionCameraMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1345
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionCameraMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setTranssionCameraMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoPortraitLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1373
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoPortraitLevel()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoPortraitLevel(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1369
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoPortraitMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoPortraitMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoSnapshotCustomTuning(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1465
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoSnapshotTuning()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoSnapshotCustomTuning(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoSuperNightAlgoScene(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1473
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoSuperNightScene()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoSuperNightScene(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoSuperNightMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1469
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoSuperNightMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoSuperNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoSuperNightResolution(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1477
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoSuperNightResolution()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoSuperNightResolution(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateVideoSuperNightYUVMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1481
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoSuperNightYUVMode()I

    move-result v0

    if-lez v0, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoSuperNightYUVMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoSuperNightYUVMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 1485
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoNightTranYUVMode()I

    move-result v0

    if-lez v0, :cond_1

    .line 1486
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getVideoNightTranYUVMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoSuperNightYUVMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 1489
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPhotoNightTranYUVMode()I

    move-result v0

    if-lez v0, :cond_2

    .line 1490
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPhotoNightTranYUVMode()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoSuperNightYUVMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void

    .line 1493
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setVideoSuperNightYUVMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateYuvCaptureFlipMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1501
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getYuvCaptureFlipMode()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setYuvCaptureFlipMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method private updateZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 11

    .line 408
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getOverrideSensorRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 409
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getZoomRatio()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_0

    .line 412
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_1

    const v0, 0x3faaaaab

    goto :goto_0

    .line 419
    :cond_1
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v3, v0

    .line 422
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 423
    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v5, v3

    mul-float/2addr v2, v5

    int-to-float v6, v4

    div-float v7, v2, v6

    .line 426
    iget-object v8, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mFovCropRectangle:Landroid/graphics/Rect;

    if-eqz v8, :cond_2

    .line 427
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 428
    iget-object v9, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mFovCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lez v8, :cond_2

    if-ge v8, v3, :cond_2

    if-lez v9, :cond_2

    if-ge v9, v4, :cond_2

    int-to-float v8, v8

    div-float v8, v2, v8

    cmpg-float v9, v1, v8

    if-gez v9, :cond_2

    move v1, v8

    .line 438
    :cond_2
    iget-object v8, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mFovWideCropRectangle:Landroid/graphics/Rect;

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getFovWideCrop()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 439
    iget-object v8, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mFovWideCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 440
    iget-object v9, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mFovWideCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-lez v8, :cond_3

    if-ge v8, v3, :cond_3

    if-lez v9, :cond_3

    if-ge v9, v4, :cond_3

    int-to-float v8, v8

    div-float/2addr v2, v8

    cmpg-float v8, v1, v2

    if-gez v8, :cond_3

    move v1, v2

    .line 450
    :cond_3
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->supportZoomRatioKey()Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x3b03126f    # 0.002f

    add-float v8, v7, v2

    cmpl-float v8, v0, v8

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x0

    if-lez v8, :cond_4

    div-float v0, v5, v0

    sub-float/2addr v6, v0

    div-float/2addr v6, v9

    float-to-int v0, v6

    .line 453
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    div-float/2addr v5, v1

    float-to-int v5, v5

    .line 454
    invoke-static {v5, v10, v3}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result v5

    mul-int/lit8 v6, v0, 0x2

    sub-int v6, v4, v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    int-to-float v7, v0

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 455
    invoke-static {v6, v10, v4}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result v6

    .line 453
    invoke-virtual {v2, v10, v0, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_4
    sub-float/2addr v7, v2

    cmpg-float v2, v0, v7

    if-gez v2, :cond_5

    mul-float/2addr v0, v6

    sub-float/2addr v5, v0

    div-float/2addr v5, v9

    float-to-int v0, v5

    .line 458
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    mul-int/lit8 v5, v0, 0x2

    sub-int v5, v3, v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    int-to-float v7, v0

    add-float/2addr v5, v7

    float-to-int v5, v5

    .line 459
    invoke-static {v5, v10, v3}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result v5

    div-float/2addr v6, v1

    float-to-int v6, v6

    .line 460
    invoke-static {v6, v10, v4}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result v6

    .line 458
    invoke-virtual {v2, v0, v10, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 462
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    div-float/2addr v5, v1

    float-to-int v2, v5

    .line 463
    invoke-static {v2, v10, v3}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result v2

    div-float/2addr v6, v1

    float-to-int v5, v6

    .line 464
    invoke-static {v5, v10, v4}, Lcom/transsion/camera/utils/CameraUtil;->clamp(III)I

    move-result v5

    .line 462
    invoke-virtual {v0, v10, v10, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 466
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    .line 467
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    .line 466
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_2

    .line 469
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 470
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 471
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    div-float/2addr v3, v1

    float-to-int v3, v3

    .line 472
    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    div-float/2addr v5, v1

    float-to-int v4, v5

    .line 473
    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    sub-int v6, v0, v3

    sub-int v7, v2, v4

    add-int/2addr v0, v3

    add-int/2addr v2, v4

    invoke-virtual {v5, v6, v7, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 476
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSatModeSupport()Z

    move-result v0

    .line 477
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCropRectangle:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " isSatSupport:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " zoomRatio:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " mMulitiCropRegionZoomRatio:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mMulitiCropRegionZoomRatio:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 479
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {v2}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->supportZoomRatioKey()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 480
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mZoomRatioKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    if-eqz v0, :cond_8

    .line 482
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMultiCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 483
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mMultiZoomKey:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_3

    .line 486
    :cond_7
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCropRectangle:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method varargs addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V
    .locals 5

    .line 295
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    if-nez v2, :cond_0

    .line 297
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v4, "add null Surface as request target."

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 300
    :cond_0
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method checkShot2ShotResult(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 0

    .line 1198
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->checkShot2ShotResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p0

    return-object p0
.end method

.method public clearAll()V
    .locals 1

    .line 130
    invoke-super {p0}, Lcom/transsion/camera/adapter/CameraParameters;->clearAll()V

    .line 132
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isLowPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setFaceDetectionEnable(Z)V

    :cond_0
    return-void
.end method

.method public clone()Lcom/transsion/camera/adapter/CameraParameters2Impl;
    .locals 0

    .line 1331
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->clone()Lcom/transsion/camera/adapter/CameraParameters2Impl;

    move-result-object p0

    return-object p0
.end method

.method configureBGService(ZI)V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureBGService isEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters;->enableBGServiceMode(Z)V

    .line 125
    invoke-virtual {p0, p2}, Lcom/transsion/camera/adapter/CameraParameters;->setBGImageReaderId(I)V

    return-void
.end method

.method public varargs createBurstRequest(II[Landroid/view/Surface;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[",
            "Landroid/view/Surface;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 343
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p3, v3

    if-eqz v4, :cond_0

    .line 347
    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 345
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "add null Surface as request target."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p3, 0x1

    .line 351
    invoke-direct {p0, v0, p1, p3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestZSLMode(Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    .line 352
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestQuickPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 353
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestPostViewSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 354
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestBgServiceMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 355
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestBgImageReaderId(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 356
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestPDAF(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 357
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestBWPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 358
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSMVRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 359
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestPhotoHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 362
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 363
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 364
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 365
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFocusRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 366
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 367
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAWBLockStatus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 368
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 369
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestJpegQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 370
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestJpegOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 371
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestJpegGPSLocation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 372
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 373
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestThumbnailSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 376
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMirrorMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 377
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestContinuousShot(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const-string p3, "val_couti"

    .line 378
    invoke-direct {p0, p3, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAppMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 379
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestNight3dnrAlgo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 380
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestNightMorHdsScene(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 381
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSdofPhotoMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 382
    iget-object p3, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCapabilities:Lcom/transsion/camera/adapter/CameraCapabilities2Impl;

    invoke-virtual {p3}, Lcom/transsion/camera/adapter/CameraCapabilities;->isSatModeSupport()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 383
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSatPictureSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 386
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAutoWatermark(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 387
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestBWConvert(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 388
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTranssionPlugin(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 389
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestProfessionalMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 390
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestModeUltrazoom(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 391
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestVideoInterpolation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 392
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateTranssionCameraMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 393
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoSuperNightMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 394
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoSuperNightResolution(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 395
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoSuperNightYUVMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 396
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestHighFpsMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 397
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestStreamFlip(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 399
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge v2, p2, :cond_3

    .line 401
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method createImageReader(Landroid/util/Size;I)Landroid/media/ImageReader;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 112
    :cond_0
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    sget v0, Lcom/transsion/camera/adapter/CameraParameters;->MAX_IMAGE_NUMBER:I

    invoke-static {p0, p1, p2, v0}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p0

    return-object p0
.end method

.method createRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string v0, "createRequestBuilder"

    .line 139
    invoke-static {v0}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 142
    iget-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 144
    invoke-virtual {p0, v2, p1, v3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSessionKey(Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    .line 146
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMeteringRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 147
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFocusRectangles(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 148
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestJpegQuality(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 149
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestJpegOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 150
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestJpegGPSLocation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 151
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 152
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAeLock(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 153
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePreviewRange(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 154
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAWBMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 155
    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAWBLockStatus(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 156
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestThumbnailSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 157
    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestExposureCompensation(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 158
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateOISMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 161
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestVideoHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 162
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequest360VideoHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 163
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMirrorMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 164
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestShot2shot(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 165
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMiddleNight(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 166
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestNight3dnrAlgo(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 167
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestNightMorHdsScene(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 168
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRecordingOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 169
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestContrast(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 172
    invoke-direct {p0, v2, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAutoWatermark(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 173
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestBWConvert(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 174
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFusionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 175
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRTDofMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 176
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestScreenFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 177
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestScreenFlashStatus(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 179
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFaceBeauty(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 180
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMultiFaceBeauty(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 181
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 182
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSuperNightFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 183
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestVideoFilterSkinType(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 184
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestVideoFilter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 185
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestVideoEffect(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 186
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestVideoFrame(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 187
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 188
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestHdMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 189
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSTBlurMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 190
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSTBlurLightStrength(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 191
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSTBlurStrengths(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 192
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSTBlurReaRatio(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 193
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSingleBlurLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 194
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAsd(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 195
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestCusIspAsd(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 196
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTranssionHDR(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 197
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestDenoise(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 198
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestNight(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 199
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestLowLight(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 200
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateNightHawk(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 201
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMoonDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 202
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAiMoonMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 203
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestLuminance(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 204
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSuperDefinitionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 205
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRemosaicMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 206
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSuperResolutionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 207
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestEyeDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 208
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestHumanDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 209
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAnimalEyeDetection(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 210
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestAutoMacroSwitch(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 211
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 212
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoPortraitLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 213
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoSuperNightAlgoScene(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 214
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateCustomTuning(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 215
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoSuperNightYUVMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 216
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateYuvCaptureFlipMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 218
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSlimBodyMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 219
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSlimBodyLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 220
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMakeUpMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 221
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMakeUpIntensitys(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 222
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMakeUpVideoMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 223
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestMakeUpVideoIntensitys(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 224
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateTranFaceDetectMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 225
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFaceAttrDetectMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 226
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMacroLampValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 227
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePortraitModeEnhanceMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 228
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateGenderAttributeValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 229
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestHumanEffect(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 230
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSatPictureSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 231
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateHighLightMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 232
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMagicSkyMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 233
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateMagicSkyResult(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 234
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSuperFlashValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 235
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFlashStyle(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 236
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateScreenTorchStatus(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 237
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateActivityOrientation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 239
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoSnapshotCustomTuning(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 240
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTuningChn(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 241
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateLiveResultMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 242
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestColorLevel(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 243
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRingFlashLight(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 245
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAiShutter(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 246
    iget-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createRequestBuilder time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 248
    invoke-direct {p0, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateIszBvValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-object v2
.end method

.method varargs createRequestBuilder(I[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 325
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    .line 326
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    return-object p1
.end method

.method varargs createRequestBuilderByCustom(IZ[Landroid/view/Surface;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p2, :cond_0

    .line 313
    iget-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p2, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p2

    const/4 v2, 0x0

    .line 314
    invoke-virtual {p0, p2, p1, v2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSessionKey(Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->createRequestBuilder(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p2

    .line 318
    :goto_0
    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->addSurfaceToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;[Landroid/view/Surface;)V

    .line 319
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createSessionRequestBuilder time "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p2
.end method

.method isHDRCapture(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 877
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getTranssionHDR()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method setFlashRequiredInAutoMode(Z)V
    .locals 0

    .line 556
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mIsFlashRequiredInAutoMode:Z

    return-void
.end method

.method setSessionCreate(Z)V
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setSessionCreate(Z)V

    return-void
.end method

.method setTagValue(Ljava/lang/String;)V
    .locals 2

    .line 106
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parameters_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/debug/Log$Tag;->update(Ljava/lang/String;)V

    return-void
.end method

.method upadetMultiCropZoomRatio()V
    .locals 2

    .line 503
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getZoomRatio()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mMulitiCropRegionZoomRatio:F

    return-void
.end method

.method updateMultiCropRegion(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 8

    .line 491
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 492
    iget-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mActiveArrayRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v0, v0

    .line 493
    iget v2, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mMulitiCropRegionZoomRatio:F

    div-float v3, v0, v2

    sub-float v3, v0, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v1, v1

    div-float v5, v1, v2

    sub-float v5, v1, v5

    div-float/2addr v5, v4

    float-to-int v4, v5

    div-float/2addr v0, v2

    float-to-int v0, v0

    div-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x4

    new-array v2, v2, [I

    const/4 v5, 0x0

    aput v3, v2, v5

    const/4 v5, 0x1

    aput v4, v2, v5

    const/4 v5, 0x2

    aput v0, v2, v5

    const/4 v5, 0x3

    aput v1, v2, v5

    .line 498
    iget-object v5, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "x:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " y:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " w:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " h:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 499
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->mPlatformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    invoke-interface {p0, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;->setMultiCropRegion([ILandroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method public updateRequestSessionKey(Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "updateRequestSessionKey +"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraParameters;->getAppModeId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAppMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 257
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestPostViewSize(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 258
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestTranssionPlugin(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 259
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateTranssionCameraMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 260
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestZSLMode(Landroid/hardware/camera2/CaptureRequest$Builder;IZ)V

    .line 261
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestPhotoHDRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 262
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestQuickPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 263
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestProfessionalMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 264
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateAntiVideoMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 265
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestBWPortraitMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 266
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestBgServiceMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 267
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestBgImageReaderId(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 268
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestHighFpsMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 269
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSuperNightMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 270
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestVideoInterpolation(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 271
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoSuperNightMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 272
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateVideoSuperNightResolution(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 273
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestPDAF(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 274
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateSMVRMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 275
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updatePipDeviceValue(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 276
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestModeUltrazoom(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 277
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestSdofPhotoMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 278
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateZoomRatio(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 279
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestDistortionCorrection(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 280
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestDistortionCorrectionPreview(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 281
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestStreamFlip(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 282
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateControlSceneMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 283
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateControlMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 284
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFakeDualLensMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 285
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFrontDualFlashColorTemp(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 286
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateFrontDualFlashStrengthMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 287
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFlashMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 288
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestISOValue(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 289
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestExposureTime(Landroid/hardware/camera2/CaptureRequest$Builder;I)V

    .line 290
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraParameters2Impl;->updateRequestFaceDetectionMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 291
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "updateRequestSessionKey -"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
