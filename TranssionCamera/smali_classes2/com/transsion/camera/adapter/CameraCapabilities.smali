.class public abstract Lcom/transsion/camera/adapter/CameraCapabilities;
.super Ljava/lang/Object;
.source "CameraCapabilities.java"

# interfaces
.implements Lcom/transsion/camera/adapter/ICameraCapabilities;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/adapter/ICameraCapabilities;"
    }
.end annotation


# instance fields
.field private m4CellInOneSize:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimalEyeDetectSupport:Z

.field private mBaseZoomRatio:F

.field private mCameraFoldedFlagSupport:Z

.field private mColorLevelSupport:Z

.field private mDspSupport:Z

.field private mDualCamCalibrationSize:Landroid/util/Size;

.field private mExposureCompensationStep:Landroid/util/Rational;

.field private mFakeRAW_RAW_Support:Z

.field private mFakeRAW_YUV_Support:Z

.field private mFlashStyleSupport:Z

.field private mFovCropRegion:Landroid/graphics/Rect;

.field private mFrontDualFlashSupport:Z

.field private mHighFpsResolutions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/HighFpsResolution;",
            ">;"
        }
    .end annotation
.end field

.field private mHighSpeedVideoSupport:Z

.field private mHumanDetectSupport:Z

.field private mIsAutoExposureLockSupported:Z

.field private mIsBGServiceModeSupport:Z

.field private mIsSatModeSupport:Z

.field private mIsSupportFastSuperNight:Z

.field private mIsSupportMicroCamera:Z

.field private mIsSupportNightHawkMode:Z

.field private mIsSupportPortraitEnhance:Z

.field private mIsSupportSlimBodyMode:Z

.field private mIsSupportStableSuperNight:Z

.field private mIsSupportedAIRemosaic:Z

.field private mLogicId:Ljava/lang/String;

.field private mLogicalCameraSupport:Z

.field private mMacroTorchSupport:Z

.field private mMaxExposureCompensation:I

.field private mMaxNumOfFocusAreas:I

.field private mMaxNumOfMeteringAreas:I

.field private mMicroPanTiltSupport:Z

.field private mMinExposureCompensation:I

.field private mMultiDualCamLogicalSupport:Z

.field private mMultiDualCamTeleSupport:Z

.field private mPeriscopeLensSupport:Z

.field private mPhysicalCameraIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mSMVRMetaDatas:[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

.field private mScreenFlashFireSupport:Z

.field private mSensorRect:Landroid/graphics/Rect;

.field private mSlimBodyFeatureSize:I

.field private mStereoSensorCropRegion:Landroid/graphics/Rect;

.field private mSuperDefinitionType:I

.field private mSuperFlashSupport:Z

.field private mSupport4Cell:Z

.field private mSupportAiShutter:Z

.field private mSupportAsdMode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportAutoMacroSwitch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportEyeDetection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportFaceBeautyFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportFaceBeautyFeaturesLevelScope:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportFaceBeautyLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportFaceBeautyModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportFilterIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportHdModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportHumanEffectModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportLuminanceValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportMacroValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportMagicSkyType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportManualWBRangeValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportMultiZoomSteps:[F

.field private mSupportSTBlurModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportScreenTorchStatus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportShot2Shot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportSingleBlurLevels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportSuperDefinition:Z

.field private mSupportSuperNightModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportSuperResolution:Z

.field private mSupportTranFaceDetectMode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportTranssionHDR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportVideoEffectIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportVideoFilterIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportVideoFrameIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportVideoPortraitLevel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportVsdofLevel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportYuvCaptureFlipMode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedAWBModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedContinuousVideoFocus:Z

.field private mSupportedContrastValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedDistortionCorrection:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedDualCamPictureSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedExposureTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedFlashModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedFocusDistanceRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedFocusModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedHDThumbnailSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedHighPreviewFPSRange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mSupportedHighSpeedSizesAndFPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/HighFpsResolution;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedISOValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedMeteringModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedPhotoHDRModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedPictureSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedPostViewSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedPreviewFPSRange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSupportedPreviewSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedScreenFlashModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedStaggerHDRModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedThumbnailSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedVideoHDRModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedVideoSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTeleCameraSupport:Z

.field private mUsePreAECaptureFlow:Z

.field private mVideoCameraSupport:Z

.field private mWideCameraSupport:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mWideCameraSupport:Z

    .line 107
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mTeleCameraSupport:Z

    .line 109
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mLogicalCameraSupport:Z

    .line 110
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMultiDualCamLogicalSupport:Z

    .line 111
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMultiDualCamTeleSupport:Z

    const/4 v1, 0x0

    .line 113
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportMacroValue:Ljava/util/List;

    .line 119
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mHighSpeedVideoSupport:Z

    .line 125
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFakeRAW_RAW_Support:Z

    .line 126
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFakeRAW_YUV_Support:Z

    .line 127
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportTranFaceDetectMode:Ljava/util/List;

    .line 130
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mVideoCameraSupport:Z

    .line 131
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mCameraFoldedFlagSupport:Z

    .line 132
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mDspSupport:Z

    .line 141
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMacroTorchSupport:Z

    .line 158
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mPeriscopeLensSupport:Z

    return-void
.end method


# virtual methods
.method abstract buildAiShutterSupport(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method buildAllCapabilities(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 185
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportSlimBodyMode(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportSlimBodyMode:Z

    .line 186
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportSlimBodyFeatureSize(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSlimBodyFeatureSize:I

    .line 187
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedPreviewSizes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPreviewSizes:Ljava/util/List;

    .line 188
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedPictureSizes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPictureSizes:Ljava/util/List;

    .line 189
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedDualCamPictureSizes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedDualCamPictureSizes:Ljava/util/List;

    .line 190
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedVideoSizes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedVideoSizes:Ljava/util/List;

    .line 191
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedFlashModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedFlashModes:Ljava/util/List;

    .line 192
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedPhotoHDRModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPhotoHDRModes:Ljava/util/List;

    .line 193
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedVideoHDRModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedVideoHDRModes:Ljava/util/List;

    .line 194
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedDolHdrModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedStaggerHDRModes:Ljava/util/List;

    .line 195
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedFocusModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedFocusModes:Ljava/util/List;

    .line 196
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedContinuousVideoFocus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedContinuousVideoFocus:Z

    .line 197
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedScreenFlashModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedScreenFlashModes:Ljava/util/List;

    .line 198
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildMaxNumOfSupportedFocusAreas(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMaxNumOfFocusAreas:I

    .line 199
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildMaxNumOfSupportedMeteringAreas(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMaxNumOfMeteringAreas:I

    .line 200
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedZoomRatios(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedZoomRatios:Ljava/util/List;

    .line 201
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedFaceBeautyModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportFaceBeautyModes:Ljava/util/List;

    .line 202
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedFaceBeautyLevels(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportFaceBeautyLevels:Ljava/util/List;

    .line 203
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedFaceBeautyFeatures(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportFaceBeautyFeatures:Ljava/util/List;

    .line 204
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedFaceBeautyFeaturesLevelScope(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportFaceBeautyFeaturesLevelScope:Ljava/util/List;

    .line 205
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedFilterIds(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportFilterIds:Ljava/util/List;

    .line 206
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedVideoFilterIds(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportVideoFilterIds:Ljava/util/List;

    .line 207
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedVideoEffectIds(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportVideoEffectIds:Ljava/util/List;

    .line 208
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedVideoFrameIds(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportVideoFrameIds:Ljava/util/List;

    .line 209
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedAsdMode(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportAsdMode:Ljava/util/List;

    .line 210
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedTranssionHDR(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportTranssionHDR:Ljava/util/List;

    .line 211
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedSuperDefinition(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSuperDefinition:Z

    .line 212
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupported4Cell(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupport4Cell:Z

    .line 213
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSuperDefinitionType(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSuperDefinitionType:I

    .line 214
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedSuperResolution(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSuperResolution:Z

    .line 215
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedVsdofLevel(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportVsdofLevel:Ljava/util/List;

    .line 216
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedManualWBRangeValue(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportManualWBRangeValue:Ljava/util/List;

    .line 217
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildDualCamCalibrationSize(Ljava/lang/Object;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mDualCamCalibrationSize:Landroid/util/Size;

    .line 218
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildStereoSensorCropRegion(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mStereoSensorCropRegion:Landroid/graphics/Rect;

    .line 219
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildFovCropRegion(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFovCropRegion:Landroid/graphics/Rect;

    .line 220
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsAutoExposureLockSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsAutoExposureLockSupported:Z

    .line 221
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildMaxExposureCompensation(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMaxExposureCompensation:I

    .line 222
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildMinExposureCompensation(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMinExposureCompensation:I

    .line 223
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildExposureCompensationStep(Ljava/lang/Object;)Landroid/util/Rational;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mExposureCompensationStep:Landroid/util/Rational;

    .line 224
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedPreviewFPSRanges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPreviewFPSRange:Ljava/util/List;

    .line 225
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedPostViewSizes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPostViewSizes:Ljava/util/List;

    .line 226
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedHDThumbnailSizes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedHDThumbnailSizes:Ljava/util/List;

    .line 227
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedThumbnailSizes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedThumbnailSizes:Ljava/util/List;

    .line 228
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsWideCameraSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mWideCameraSupport:Z

    .line 229
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsTeleCameraSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mTeleCameraSupport:Z

    .line 230
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsMultiDualCamLogicalSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMultiDualCamLogicalSupport:Z

    .line 231
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsMultiDualCamTeleSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMultiDualCamTeleSupport:Z

    .line 232
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsLogicalCameraSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mLogicalCameraSupport:Z

    .line 233
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsFakeRAWRAWCameraSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFakeRAW_RAW_Support:Z

    .line 234
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsFakeRAWYUVCameraSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFakeRAW_YUV_Support:Z

    .line 235
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedLuminanceValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportLuminanceValues:Ljava/util/List;

    .line 236
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedShot2Shot(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportShot2Shot:Ljava/util/List;

    .line 237
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedHdModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportHdModes:Ljava/util/List;

    .line 238
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsAIRemosaicSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportedAIRemosaic:Z

    .line 239
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedSuperNightModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSuperNightModes:Ljava/util/List;

    .line 240
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedStableSuperNight(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportStableSuperNight:Z

    .line 241
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedFastSuperNight(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportFastSuperNight:Z

    .line 242
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedAWBModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedAWBModes:Ljava/util/List;

    .line 243
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedSTBlurModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSTBlurModes:Ljava/util/List;

    .line 244
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedSingleBlurLevels(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSingleBlurLevels:Ljava/util/List;

    .line 245
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsBGServiceModeSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsBGServiceModeSupport:Z

    .line 246
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedDistortionCorrection(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedDistortionCorrection:Ljava/util/List;

    .line 247
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedMacro(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportMacroValue:Ljava/util/List;

    .line 248
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupport4CellInOneSize(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->m4CellInOneSize:Ljava/util/List;

    .line 249
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsVideoCameraSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mVideoCameraSupport:Z

    .line 250
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsCameraFoldedFlagSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mCameraFoldedFlagSupport:Z

    .line 251
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsDspSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mDspSupport:Z

    .line 252
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsMacroTorchSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMacroTorchSupport:Z

    .line 253
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildScreenFlashFireSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mScreenFlashFireSupport:Z

    .line 254
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportTranFaceDetect(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportTranFaceDetectMode:Ljava/util/List;

    .line 255
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildHumanDetectionSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mHumanDetectSupport:Z

    .line 256
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildMicroPanTiltSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMicroPanTiltSupport:Z

    .line 257
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildAnimalEyeDetectionSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mAnimalEyeDetectSupport:Z

    .line 258
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildAutoMacroSwitchSupported(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportAutoMacroSwitch:Ljava/util/List;

    .line 259
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSensorRect(Ljava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSensorRect:Landroid/graphics/Rect;

    .line 260
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsHighSpeedVideoSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mHighSpeedVideoSupport:Z

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedSMVRMetaDatas(Ljava/lang/Object;)[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSMVRMetaDatas:[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    .line 263
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedHighPreviewFPSRanges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedHighPreviewFPSRange:Ljava/util/List;

    .line 264
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedHighSpeedSizesAndFPS(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedHighSpeedSizesAndFPS:Ljava/util/List;

    .line 266
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedHighFpsResolutions(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mHighFpsResolutions:Ljava/util/List;

    .line 267
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedEyeDecetion(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportEyeDetection:Ljava/util/List;

    .line 268
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedVideoPortraitLevel(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportVideoPortraitLevel:Ljava/util/List;

    .line 269
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedExposureTimes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedExposureTimes:Ljava/util/List;

    .line 270
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedISOValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedISOValues:Ljava/util/List;

    .line 271
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedContrastValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedContrastValues:Ljava/util/List;

    .line 272
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedFocusDistanceRange(Ljava/lang/Object;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedFocusDistanceRange:Landroid/util/Range;

    .line 273
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedMeteringModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedMeteringModes:Ljava/util/List;

    .line 274
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildAiShutterSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportAiShutter:Z

    .line 275
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsNightHawkSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportNightHawkMode:Z

    .line 276
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildIsPortraitEnhanceSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportPortraitEnhance:Z

    .line 277
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedHumanEffectModes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportHumanEffectModes:Ljava/util/List;

    .line 278
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildYuvCaptureFlipModeSupported(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportYuvCaptureFlipMode:Ljava/util/List;

    .line 279
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportSatModeSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSatModeSupport:Z

    .line 280
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportMultiZoomSteps(Ljava/lang/Object;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportMultiZoomSteps:[F

    .line 281
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildPeriscopeCamSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mPeriscopeLensSupport:Z

    .line 282
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->usePreAECaptureFlow(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mUsePreAECaptureFlow:Z

    .line 283
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedMagicSkyType(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportMagicSkyType:Ljava/util/List;

    .line 284
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildPhysicalCameraIds(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mPhysicalCameraIds:Ljava/util/Set;

    .line 285
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildLogicId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mLogicId:Ljava/lang/String;

    .line 286
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSuperFlashSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSuperFlashSupport:Z

    .line 287
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildFrontDualFlashSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFrontDualFlashSupport:Z

    .line 288
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildFlashStyleSupported(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFlashStyleSupport:Z

    .line 289
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildSupportedScreenTorchStatus(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportScreenTorchStatus:Ljava/util/List;

    .line 290
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildCameraBaseZoomRatio(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mBaseZoomRatio:F

    .line 291
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildColorLevelSupport(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mColorLevelSupport:Z

    .line 292
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraCapabilities;->buildMicroCameraSupport(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportMicroCamera:Z

    return-void
.end method

.method abstract buildAnimalEyeDetectionSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildAutoMacroSwitchSupported(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildCameraBaseZoomRatio(Ljava/lang/Object;)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)F"
        }
    .end annotation
.end method

.method abstract buildColorLevelSupport(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildDualCamCalibrationSize(Ljava/lang/Object;)Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/util/Size;"
        }
    .end annotation
.end method

.method abstract buildExposureCompensationStep(Ljava/lang/Object;)Landroid/util/Rational;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/util/Rational;"
        }
    .end annotation
.end method

.method abstract buildFlashStyleSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildFovCropRegion(Ljava/lang/Object;)Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation
.end method

.method abstract buildFrontDualFlashSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildHumanDetectionSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsAIRemosaicSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsAutoExposureLockSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsBGServiceModeSupport(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsCameraFoldedFlagSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsDspSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsFakeRAWRAWCameraSupport(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsFakeRAWYUVCameraSupport(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsHighSpeedVideoSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsLogicalCameraSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsMacroTorchSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsMultiDualCamLogicalSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsMultiDualCamTeleSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsNightHawkSupport(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsPortraitEnhanceSupport(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsTeleCameraSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsVideoCameraSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildIsWideCameraSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildLogicId(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method abstract buildMaxExposureCompensation(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract buildMaxNumOfSupportedFocusAreas(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract buildMaxNumOfSupportedMeteringAreas(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract buildMicroCameraSupport(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildMicroPanTiltSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildMinExposureCompensation(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract buildPeriscopeCamSupport(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildPhysicalCameraIds(Ljava/lang/Object;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildScreenFlashFireSupport(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildSensorRect(Ljava/lang/Object;)Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation
.end method

.method abstract buildStereoSensorCropRegion(Ljava/lang/Object;)Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation
.end method

.method abstract buildSuperDefinitionType(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract buildSuperFlashSupported(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildSupport4CellInOneSize(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportMultiZoomSteps(Ljava/lang/Object;)[F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[F"
        }
    .end annotation
.end method

.method abstract buildSupportSatModeSupport(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildSupportSlimBodyFeatureSize(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract buildSupportSlimBodyMode(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildSupportTranFaceDetect(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupported4Cell(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildSupportedAWBModes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedAsdMode(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedContinuousVideoFocus()Z
.end method

.method abstract buildSupportedContrastValues(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedDistortionCorrection(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedDolHdrModes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedDualCamPictureSizes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedExposureTimes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedEyeDecetion(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedFaceBeautyFeatures(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedFaceBeautyFeaturesLevelScope(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedFaceBeautyLevels(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedFaceBeautyModes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedFastSuperNight(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildSupportedFilterIds(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedFlashModes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedFocusDistanceRange(Ljava/lang/Object;)Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedFocusModes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedHDThumbnailSizes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedHdModes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedHighFpsResolutions(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/HighFpsResolution;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedHighPreviewFPSRanges(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end method

.method abstract buildSupportedHighSpeedSizesAndFPS(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/HighFpsResolution;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedHumanEffectModes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedISOValues(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedLuminanceValues(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedMacro(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedMagicSkyType(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedManualWBRangeValue(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedMeteringModes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedPhotoHDRModes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedPictureSizes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedPostViewSizes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedPreviewFPSRanges(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end method

.method abstract buildSupportedPreviewSizes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedSMVRMetaDatas(Ljava/lang/Object;)[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[",
            "Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;"
        }
    .end annotation
.end method

.method abstract buildSupportedSTBlurModes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedScreenFlashModes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedScreenTorchStatus(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedShot2Shot(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedSingleBlurLevels(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedStableSuperNight(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildSupportedSuperDefinition(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildSupportedSuperNightModes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedSuperResolution(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method abstract buildSupportedThumbnailSizes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedTranssionHDR(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedVideoEffectIds(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedVideoFilterIds(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedVideoFrameIds(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedVideoHDRModes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedVideoPortraitLevel(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedVideoSizes(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedVsdofLevel(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildSupportedZoomRatios(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method abstract buildYuvCaptureFlipModeSupported(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public colorLevelSupport()Z
    .locals 0

    .line 953
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mColorLevelSupport:Z

    return p0
.end method

.method public flashStyleSupport()Z
    .locals 0

    .line 935
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFlashStyleSupport:Z

    return p0
.end method

.method public frontDualFlashSupport()Z
    .locals 0

    .line 930
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFrontDualFlashSupport:Z

    return p0
.end method

.method public get4cellInOneSize()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 499
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->m4CellInOneSize:Ljava/util/List;

    return-object p0
.end method

.method public getBaseZoomRatio()F
    .locals 0

    .line 948
    iget p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mBaseZoomRatio:F

    return p0
.end method

.method public getDualCamCalibrationSize()Landroid/util/Size;
    .locals 0

    .line 641
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mDualCamCalibrationSize:Landroid/util/Size;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExposureCompensationStep()Landroid/util/Rational;
    .locals 0

    .line 601
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mExposureCompensationStep:Landroid/util/Rational;

    return-object p0
.end method

.method public getLogicId()Ljava/lang/String;
    .locals 0

    .line 920
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mLogicId:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxExposureCompensation()I
    .locals 0

    .line 591
    iget p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMaxExposureCompensation:I

    return p0
.end method

.method public getMaxNumOfFocusAreas()I
    .locals 0

    .line 461
    iget p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMaxNumOfFocusAreas:I

    return p0
.end method

.method public getMaxNumOfMeteringAreas()I
    .locals 0

    .line 466
    iget p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMaxNumOfMeteringAreas:I

    return p0
.end method

.method public getMinExposureCompensation()I
    .locals 0

    .line 596
    iget p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMinExposureCompensation:I

    return p0
.end method

.method public getPhysicalCameraIds()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 915
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mPhysicalCameraIds:Ljava/util/Set;

    return-object p0
.end method

.method public getSensorRect()Landroid/graphics/Rect;
    .locals 0

    .line 770
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSensorRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getStereoSensorCropRegion()Landroid/graphics/Rect;
    .locals 0

    .line 636
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mStereoSensorCropRegion:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSupportFakeDualCamera()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 688
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "off"

    .line 689
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    iget-boolean v1, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFakeRAW_RAW_Support:Z

    if-eqz v1, :cond_0

    const-string p0, "raw_raw"

    .line 691
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 692
    :cond_0
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFakeRAW_YUV_Support:Z

    if-eqz p0, :cond_1

    const-string p0, "raw_yuv"

    .line 693
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getSupportSTBlurLevels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 745
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSingleBlurLevels:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportSTBlurModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 740
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSTBlurModes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedAWBMode()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 735
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedAWBModes:Ljava/util/List;

    return-object p0
.end method

.method public getSupportedAsdModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 557
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportAsdMode:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedDistortionCorrection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 755
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedDistortionCorrection:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedExposureTimes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 826
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedExposureTimes:Ljava/util/List;

    return-object p0
.end method

.method public getSupportedEyeDetection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 801
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportEyeDetection:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedFaceBeautyFeaturesLevelScope()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 532
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportFaceBeautyFeaturesLevelScope:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedFaceBeautyLevels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 489
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportFaceBeautyLevels:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedFaceBeautyModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportFaceBeautyModes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedFilterIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 537
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportFilterIds:Ljava/util/List;

    return-object p0
.end method

.method public getSupportedFlashModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedFlashModes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedFocusDistanceRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 841
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedFocusDistanceRange:Landroid/util/Range;

    return-object p0
.end method

.method public getSupportedFocusModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedFocusModes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedHDThumbnailSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 621
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedHDThumbnailSizes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedHighFpsResolutions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/HighFpsResolution;",
            ">;"
        }
    .end annotation

    .line 821
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mHighFpsResolutions:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedHighSpeedFpsRanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 780
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedHighPreviewFPSRange:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 781
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedHighPreviewFPSRange:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportedISOValues()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 831
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedISOValues:Ljava/util/List;

    return-object p0
.end method

.method public getSupportedLuminanceScope()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 700
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportLuminanceValues:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedMagicSkyType()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 910
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportMagicSkyType:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedManualWBRangeValue()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 631
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportManualWBRangeValue:Ljava/util/List;

    return-object p0
.end method

.method public getSupportedMeteringModes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 846
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedMeteringModes:Ljava/util/List;

    return-object p0
.end method

.method public getSupportedPhotoHDRModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 431
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPhotoHDRModes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedPictureSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPictureSizes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedPostViewSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 611
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPostViewSizes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedPreviewFPSRanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 606
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPreviewFPSRange:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedPreviewSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedPreviewSizes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedSMVRRequestParams(I)[I
    .locals 5

    .line 788
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSMVRMetaDatas:[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 792
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 793
    iget v4, v3, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->fpsMax:I

    if-ne v4, p1, :cond_1

    .line 794
    invoke-virtual {v3}, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->toRequestParams()[I

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getSupportedScreenFlashModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedScreenFlashModes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedScreenTorchStatus()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 940
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportScreenTorchStatus:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 941
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportScreenTorchStatus:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportedShot2Shot()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 705
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportShot2Shot:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedSuperDefinitionType()I
    .locals 0

    .line 567
    iget p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSuperDefinitionType:I

    return p0
.end method

.method public getSupportedSuperNightMode()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 720
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSuperNightModes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedThumbnailSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 616
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedThumbnailSizes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedTranssionHDR()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 562
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportTranssionHDR:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedVideoFilterIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 542
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportVideoFilterIds:Ljava/util/List;

    return-object p0
.end method

.method public getSupportedVideoHDRModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedVideoHDRModes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedVideoPortraitLevel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 816
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportVideoPortraitLevel:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedVideoSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedVideoSizes:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedVsdofLevel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 626
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportVsdofLevel:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSupportedZoomRatios()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedZoomRatios:Ljava/util/List;

    if-nez v0, :cond_0

    .line 477
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 479
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedZoomRatios:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isAnimalEyeDetection()Z
    .locals 0

    .line 806
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mAnimalEyeDetectSupport:Z

    return p0
.end method

.method public isAutoExposureLockSupported()Z
    .locals 0

    .line 586
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsAutoExposureLockSupported:Z

    return p0
.end method

.method public isBgServiceModeSupport()Z
    .locals 0

    .line 750
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsBGServiceModeSupport:Z

    return p0
.end method

.method public isCameraFoldedFlagSupport()Z
    .locals 0

    .line 508
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mCameraFoldedFlagSupport:Z

    return p0
.end method

.method public isDspSupport()Z
    .locals 0

    .line 513
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mDspSupport:Z

    return p0
.end method

.method public isFakeDualLensSupport()Z
    .locals 1

    .line 678
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFakeRAW_RAW_Support:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mFakeRAW_YUV_Support:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isHighSpeedVideoSupport()Z
    .locals 0

    .line 775
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mHighSpeedVideoSupport:Z

    return p0
.end method

.method public isHumanDetectionSupport()Z
    .locals 0

    .line 866
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mHumanDetectSupport:Z

    return p0
.end method

.method public isLogicalCameraSupport()Z
    .locals 0

    .line 673
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mLogicalCameraSupport:Z

    return p0
.end method

.method public isMacroTorchSupport()Z
    .locals 0

    .line 518
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMacroTorchSupport:Z

    return p0
.end method

.method public isMicroPanTiltSupport()Z
    .locals 0

    .line 876
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMicroPanTiltSupport:Z

    return p0
.end method

.method public isMultiDualCamTeleSupport()Z
    .locals 0

    .line 669
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mMultiDualCamTeleSupport:Z

    return p0
.end method

.method public isNightHawkModeSupport()Z
    .locals 0

    .line 856
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportNightHawkMode:Z

    return p0
.end method

.method public isPeriscopeLensSupport()Z
    .locals 0

    .line 900
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mPeriscopeLensSupport:Z

    return p0
.end method

.method public isPortraitModeEnhanceSupport()Z
    .locals 0

    .line 861
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportPortraitEnhance:Z

    return p0
.end method

.method public isSatModeSupport()Z
    .locals 0

    .line 894
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSatModeSupport:Z

    return p0
.end method

.method public isSupportContinuousVideoFocus()Z
    .locals 0

    .line 451
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportedContinuousVideoFocus:Z

    return p0
.end method

.method public isSupportMicroCamera()Z
    .locals 0

    .line 958
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportMicroCamera:Z

    return p0
.end method

.method public isSupported4Cell()Z
    .locals 0

    .line 576
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupport4Cell:Z

    return p0
.end method

.method public isSupportedAIRemosaic()Z
    .locals 0

    .line 715
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportedAIRemosaic:Z

    return p0
.end method

.method public isSupportedFastSuperNightMode()Z
    .locals 0

    .line 730
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportFastSuperNight:Z

    return p0
.end method

.method public isSupportedStableSuperNightMode()Z
    .locals 0

    .line 725
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mIsSupportStableSuperNight:Z

    return p0
.end method

.method public isSupportedSuperDefinition()Z
    .locals 0

    .line 571
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSuperDefinition:Z

    return p0
.end method

.method public isSupportedSuperResolution()Z
    .locals 0

    .line 581
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSupportSuperResolution:Z

    return p0
.end method

.method public isTeleCameraSupport()Z
    .locals 0

    .line 659
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mTeleCameraSupport:Z

    return p0
.end method

.method public isVideoCameraSupport()Z
    .locals 0

    .line 504
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mVideoCameraSupport:Z

    return p0
.end method

.method public isWideCameraSupport()Z
    .locals 0

    .line 654
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mWideCameraSupport:Z

    return p0
.end method

.method public superFlashSupport()Z
    .locals 0

    .line 925
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mSuperFlashSupport:Z

    return p0
.end method

.method public usePreAECaptureFlow()Z
    .locals 0

    .line 905
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraCapabilities;->mUsePreAECaptureFlow:Z

    return p0
.end method

.method abstract usePreAECaptureFlow(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
