.class public Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;
.super Ljava/lang/Object;
.source "PlatformCamera2Impl.java"

# interfaces
.implements Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;


# static fields
.field private static final DEFAULT_ISO_TABLE:[I

.field private static final FEATURE_VALUE_OFF:[I

.field private static final FEATURE_VALUE_ON:[I

.field private static final NON_ZSL_MODE:[B

.field private static final PREVIEW_SIZE_KEY_VALUE:[I

.field private static final SCREEN_TORCH_STATUS_ANNULAR:[I

.field private static final SCREEN_TORCH_STATUS_FLASH:[I

.field private static final SCREEN_TORCH_STATUS_OFF:[I

.field private static final SUPER_NIGHT_MODE_VALUE_OFF:[I

.field private static final SUPER_NIGHT_MODE_VALUE_ON:[I

.field private static final SUPER_NIGHT_MODE_VALUE_ON_LIGHT:[I

.field private static final SUPER_NIGHT_MODE_VALUE_STABLE_ON:[I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final ZSL_MODE:[B

.field private static final mDefaultFlashTime:[I

.field private static mKeyBaseZoomRatio:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation
.end field


# instance fields
.field private mAiMoonMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mAiShutterSupport:Z

.field private mAnimalEyeDetectSupport:Z

.field private mAntiVideoSupport:Z

.field private mAsdRequestMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mAutoWatermarkSupport:Z

.field private mAvailableCaptureRequestKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mAvailableFaceDetection3A:[I

.field private mAvailableKeyTranFaceDetectMode:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mAvaliableZoomRatio:[F

.field private mBGServiceSupport:Z

.field private mBWPortraitSupport:Z

.field private mBackFake_RAW_YUV_Support:Z

.field private mBackFake_Second_YUV_Cam_Support:Z

.field private mCameraFoldedFlagSupport:Z

.field private mCaptureRequestAisMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mCaptureResultAisMode:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mCaptureResultAsdMode:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mCaptureResultBrightness:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mCaptureResultInSensorZoomMode:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mCaptureResultMagicSky:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mCaptureResultMasterId:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mCaptureResultMoonDetection:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mCaptureResultNightHawk:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mCaptureResultStreamId:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mColorLevelRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mColorLevelSupport:Z

.field private mCusIspAsdRequestMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mDenoiseMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mDofLevelKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mDofPreviewSizeKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mDspSupport:Z

.field private mDualLensWarningKey:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mFake_RAW_RAW_Support:Z

.field private mFlashCustomizedAvailable:Z

.field private mFlashFireForThisCapture:Z

.field private mFlashStyleRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mFlashStyleSupport:Z

.field private mFlashWillFire:Z

.field private mFrontDualFlashSupport:Z

.field private mFrontFake_RAW_YUV_Support:Z

.field private mFusionKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFusionModeSupport:Z

.field private mGenderAttributeValueSupport:Z

.field private mHfpsModeSupport:Z

.field private mHumanDetectSupport:Z

.field private mIsAllInitialized:Z

.field private mIsFastSuperNightModeSupported:Z

.field private mIsFlashOn:Z

.field private mIsHdModeSupported:Z

.field private mIsMegSuperNightModeSupported:Z

.field private mIsStableSuperNightModeSupported:Z

.field private mIsSuperNightDetectModeSupported:Z

.field private mIsSuperNightModeSupported:Z

.field private mIsSupperFlash:Z

.field private mIsVideoMirrorSupport:Z

.field private mKeyAvailable4Cell:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailable4CellInOneSize:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableAIRemosaic:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyAvailableAnimalEyeDetection:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableAntiVideoModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableAsdMode:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableAutoMacroSwitch:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableAutoWaterMarkModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableBWPortraitModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableBgServiceModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableDolHDRModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableEyeDetection:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableFaceBeautyFeatures:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableFaceBeautyFeaturesLevelScope:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableFaceBeautyLevel:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableFaceBeautyMode:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableFakeDualCamera:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableFilterIds:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableFoldedFlagSupport:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableFovCropRegion:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableFovWideCropRegion:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableFusionMode:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableGenderAttributeValueModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableHfpsMode:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableHighFpsResolutions:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableHumanDetect:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableHumanEffectMode:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableLuminanceValue:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableMaxISO:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableMaxMagicskyType:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableMicroPanTilt:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableMirrorModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableMultiCameraZoomSteps:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[F>;"
        }
    .end annotation
.end field

.field private mKeyAvailableNightHawk:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableOIS:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailablePeriscopeCam:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailablePhotoHDRModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailablePortraitModeEnhance:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableSMVRModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableSTBlurModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableSatMode:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableSingleBlurLevels:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableSuperresolution:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableTeleCamera:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableTranMultiDualCam:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableTranssionCameraMode:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableTranssionHDR:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableVideoCamera:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableVideoEffectIds:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableVideoFilterIds:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableVideoFilterSkinTypes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableVideoFrameIds:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableVideoHDRModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableVideoPortraitLevelModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableVideoPortraitModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableVideoSuperNightModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableVideoSuperNightYUVModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableVideoWaterMarkModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableWideCamera:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyAvailableYuvCaptureFlipMode:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyDistortionCorrectionAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyFastSuperNightModeSupport:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyIszBvRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyMegSuperNightModeSupport:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyMicroCamera:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyMultiCropRegion:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyPipDeviceKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyPipProp:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyPortraitModeEnhance:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyPostViewRequestSizeMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyScreenFlashAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyShot2shotAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeySlimBodyFeatures:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeySlimBodyModeSupport:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeyStereoSensorCropRegion:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeySuperNightDetectModeSupport:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeySuperNightModeSupport:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeySupportedDofLevel:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeySupportedDualCamCalibSize:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeySupportedDualCamPictures:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeySupportedHdMode:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mKeySupportedHdThumbnailSize:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyThumbnailAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mLocalSessionKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mLogicalCameraSupport:Z

.field private mLowLightHDR:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mLowLightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mMacroTorchSupport:Z

.field private mManualAWBValueKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mMicroCameraSupport:Z

.field private mMicroPanTiltSupport:Z

.field private mMiddleNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mModeUltrazoom:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mMoonDetectionMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mMultiDualCamLogicalSupport:Z

.field private mMultiDualCamTeleCamSupport:Z

.field private mNightHawkMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mOISSupport:Z

.field private mPeriscopeLensSupport:Z

.field private mProfessionalMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mQuickPreview:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRemosaicModeAvailable:Z

.field private mRemosaicWithMFNRSupport:Z

.field private mRequestKey360HDRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyAnimalEyeDetect:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyAntiVideoMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyAutoMacroSwitch:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyAutoWaterMarkMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyBWConvert:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyBWPortraitMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyBgImageReaderId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyBgPrerelease:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyCamMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyContinuousShotMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyCustomTuning:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyDistortionCorrection:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyDistortionCorrectionPreview:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyEyeDetection:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyFaceBeautyFeatures:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyFaceBeautyLevel:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyFaceDetection3A:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyFilterId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyFrontDualFlashColorTemp:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyFrontDualFlashStrengthMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyGenderAttributeValueMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyHDRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyHdMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyHfpsMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyHumanDetect:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyHumanEffectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyLuminanceValue:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyMTKISOMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyMacroLampValue:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyMakeUpIntensity:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[F>;"
        }
    .end annotation
.end field

.field private mRequestKeyMakeUpMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyMakeUpVideoIntensity:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[F>;"
        }
    .end annotation
.end field

.field private mRequestKeyMakeUpVideoMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyMegSuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyMeteringMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[B>;"
        }
    .end annotation
.end field

.field private mRequestKeyMirrorMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyOISMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyPDAF:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyPortraitMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyRawDualCamera:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyRemosaicMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyRemosaicWithMFNR:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeySMVRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeySTBlurLevel:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeySTBlurMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyScreenFlashMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyShot2Shot:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeySlimBodyLevels:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeySlimBodyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyStableSuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeySuperDefinition:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeySuperNightDetectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeySuperNightFilerId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeySuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeySuperrsolutionMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyTranFaceDetectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyTranssionCameraMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyTranssionPlugin:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyVideoEffectId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyVideoFilterId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyVideoFilterSkinType:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyVideoFrameId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyVideoMirrorMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyVideoPortraitLevel:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyVideoPortraitmode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyVideoRotationMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyVideoSuperNightResolution:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyVideoSuperNightScene:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyVideoSuperNightYUVMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyVideoSuperNightmode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyVideointerpolation:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyYuvCaptureFlipMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyYuvDualCamera:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestKeyZSL:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[B>;"
        }
    .end annotation
.end field

.field private mRequestMagicSkyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestMagicSkyResult:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRequestMagicSkyType:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mResultKeyAfSearchState:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResultKeyAnimalEyeDetect:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mResultKeyAntiFaceInfoRect:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mResultKeyAntiVideoMode:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResultKeyAutoMacroSwitch:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mResultKeyCCT:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResultKeyEyeDetection:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mResultKeyFlashCustomized:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[B>;"
        }
    .end annotation
.end field

.field private mResultKeyFlashTime:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mResultKeyHumanDetect:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mResultKeyShot2Shot:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mResultKeyTranFaceInfo:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mResultManualAWBRange:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mRingFlashLightRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mSatModeSupport:Z

.field private mSatPictureSize:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mScreenTorchStatusAvailableKey:Landroid/hardware/camera2/CameraCharacteristics$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mScreenTorchStatusRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mStreamFlip:Z

.field private mStreamFlipRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mSuperFlashRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mSuperFlashSupport:Z

.field private mSupportLogicalCameraMode:[I

.field private mTeleCameraSupport:Z

.field private mThumbnailPostViewSupport:Z

.field private mTranssionCameraModeSupport:Z

.field private mTranssionHDR:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mUsePreAeCaptureFlow:Z

.field private mValueStereoCropRegion:Landroid/graphics/Rect;

.field private mVideoCameraSupport:Z

.field private mVideoPortraitSupport:Z

.field private mVideoSnapshotTuning:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoSuperNightSupport:Z

.field private mVideoSuperNightYUVSupport:Z

.field private mVideoWatermarkSupport:Z

.field private mVsdofKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mVsdofRTKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey<",
            "[I>;"
        }
    .end annotation
.end field

.field private mWideCameraSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 41
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MTK-PlatformCam"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 44
    sput-object v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_OFF:[I

    new-array v1, v0, [I

    aput v0, v1, v2

    .line 45
    sput-object v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    new-array v1, v0, [I

    aput v0, v1, v2

    .line 135
    sput-object v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SUPER_NIGHT_MODE_VALUE_ON:[I

    new-array v1, v0, [I

    const/4 v3, 0x2

    aput v3, v1, v2

    .line 136
    sput-object v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SUPER_NIGHT_MODE_VALUE_ON_LIGHT:[I

    new-array v1, v0, [I

    const/4 v4, 0x3

    aput v4, v1, v2

    .line 137
    sput-object v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SUPER_NIGHT_MODE_VALUE_STABLE_ON:[I

    new-array v1, v0, [I

    aput v2, v1, v2

    .line 138
    sput-object v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SUPER_NIGHT_MODE_VALUE_OFF:[I

    new-array v1, v3, [I

    .line 173
    fill-array-data v1, :array_0

    sput-object v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->PREVIEW_SIZE_KEY_VALUE:[I

    new-array v1, v0, [B

    aput-byte v2, v1, v2

    .line 348
    sput-object v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->NON_ZSL_MODE:[B

    new-array v1, v0, [B

    aput-byte v0, v1, v2

    .line 349
    sput-object v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->ZSL_MODE:[B

    const/16 v1, 0x16

    new-array v1, v1, [I

    .line 672
    fill-array-data v1, :array_1

    sput-object v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->DEFAULT_ISO_TABLE:[I

    new-array v1, v3, [I

    .line 829
    fill-array-data v1, :array_2

    sput-object v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDefaultFlashTime:[I

    new-array v1, v0, [I

    aput v2, v1, v2

    .line 851
    sput-object v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SCREEN_TORCH_STATUS_OFF:[I

    new-array v1, v0, [I

    aput v0, v1, v2

    .line 852
    sput-object v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SCREEN_TORCH_STATUS_ANNULAR:[I

    new-array v0, v0, [I

    aput v3, v0, v2

    .line 853
    sput-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SCREEN_TORCH_STATUS_FLASH:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x438
        0x780
    .end array-data

    :array_1
    .array-data 4
        0x32
        0x3c
        0x50
        0x64
        0x7d
        0xa0
        0xc8
        0xfa
        0x140
        0x190
        0x1f4
        0x280
        0x320
        0x3e8
        0x4e2
        0x640
        0x7d0
        0x960
        0xc80
        0xfa0
        0x1388
        0x1900
    .end array-data

    :array_2
    .array-data 4
        0x12c
        0x320
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsAllInitialized:Z

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    .line 54
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAvailableCaptureRequestKeys:Ljava/util/List;

    .line 118
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsHdModeSupported:Z

    const/4 v1, 0x0

    .line 120
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHdMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 130
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsSuperNightModeSupported:Z

    .line 131
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 134
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsFastSuperNightModeSupported:Z

    .line 144
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsMegSuperNightModeSupported:Z

    .line 145
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMegSuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 150
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsStableSuperNightModeSupported:Z

    .line 151
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyStableSuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 159
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsSuperNightDetectModeSupported:Z

    .line 160
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightDetectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 163
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVsdofKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 164
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDualLensWarningKey:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 165
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDofLevelKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 166
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDofPreviewSizeKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 174
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVsdofRTKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 177
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mValueStereoCropRegion:Landroid/graphics/Rect;

    .line 203
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsVideoMirrorSupport:Z

    .line 298
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyPDAF:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 347
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyZSL:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 356
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAutoWatermarkSupport:Z

    .line 363
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVideoWatermarkSupport:Z

    .line 370
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAntiVideoSupport:Z

    .line 378
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBWPortraitSupport:Z

    .line 386
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMacroTorchSupport:Z

    .line 390
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableWideCamera:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 391
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mWideCameraSupport:Z

    .line 395
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyMicroCamera:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 396
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMicroCameraSupport:Z

    .line 400
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableTeleCamera:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 401
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mTeleCameraSupport:Z

    .line 405
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableOIS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 406
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mOISSupport:Z

    .line 418
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableTranMultiDualCam:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 419
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMultiDualCamLogicalSupport:Z

    .line 420
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMultiDualCamTeleCamSupport:Z

    .line 425
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLogicalCameraSupport:Z

    .line 463
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableBgServiceModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 464
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBgPrerelease:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 465
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBgImageReaderId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 466
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBGServiceSupport:Z

    .line 481
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFakeDualCamera:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 482
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyYuvDualCamera:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 483
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyRawDualCamera:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 484
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFake_RAW_RAW_Support:Z

    .line 485
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFrontFake_RAW_YUV_Support:Z

    .line 486
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBackFake_RAW_YUV_Support:Z

    .line 487
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBackFake_Second_YUV_Cam_Support:Z

    .line 525
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableVideoCamera:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 526
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVideoCameraSupport:Z

    .line 571
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mTranssionCameraModeSupport:Z

    .line 577
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableSMVRModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 714
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAiShutterSupport:Z

    .line 723
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mGenderAttributeValueSupport:Z

    .line 740
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mSatModeSupport:Z

    .line 750
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailablePeriscopeCam:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 751
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mPeriscopeLensSupport:Z

    .line 765
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mUsePreAeCaptureFlow:Z

    .line 770
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mManualAWBValueKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 824
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mSuperFlashSupport:Z

    .line 838
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFrontDualFlashSupport:Z

    .line 844
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFlashStyleSupport:Z

    .line 857
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyPipDeviceKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 860
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyPipProp:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 873
    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFoldedFlagSupport:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 885
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mColorLevelSupport:Z

    .line 890
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsFlashOn:Z

    .line 891
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFlashWillFire:Z

    .line 892
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFlashFireForThisCapture:Z

    .line 893
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsSupperFlash:Z

    return-void
.end method

.method private static convertFaceBeautyValue(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    .line 2431
    :pswitch_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported face beauty value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    const-string p0, "supernight"

    return-object p0

    :pswitch_2
    const-string p0, "mild"

    return-object p0

    :pswitch_3
    const-string p0, "contrast_on"

    return-object p0

    :pswitch_4
    const-string p0, "custom"

    return-object p0

    :pswitch_5
    const-string p0, "pre3"

    return-object p0

    :pswitch_6
    const-string p0, "pre2"

    return-object p0

    :pswitch_7
    const-string p0, "pre1"

    return-object p0

    :pswitch_8
    const-string p0, "aiv2"

    return-object p0

    :pswitch_9
    const-string p0, "ai"

    return-object p0

    :pswitch_a
    const-string p0, "on"

    return-object p0

    :pswitch_b
    const-string p0, "off"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static convertHDRVendorValue(I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_5

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    goto :goto_0

    .line 2401
    :cond_2
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported HDR value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_3
    :goto_0
    const-string p0, "auto"

    return-object p0

    :cond_4
    :goto_1
    const-string p0, "on"

    return-object p0

    :cond_5
    :goto_2
    const-string p0, "off"

    return-object p0
.end method

.method private getAvailableMaxISO(Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 3

    .line 3842
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableMaxISO:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    .line 3843
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 3844
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAvailableMaxISO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 3851
    array-length p1, p0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 3852
    aget p0, p0, p1

    move v0, p0

    :cond_0
    return v0
.end method

.method private initAvailableKeys(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 11

    .line 937
    const-class v0, [F

    const-class v1, [I

    const-string v2, "com.mediatek.hdrfeature.availableHdrModesPhoto"

    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailablePhotoHDRModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.mediatek.hdrfeature.availableHdrModesVideo"

    .line 938
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableVideoHDRModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.mediatek.hdrfeature.availableStaggerHdrModes"

    .line 939
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableDolHDRModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.availableFaceBeautyMode"

    .line 940
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFaceBeautyMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.availableMaxFaceBeautyLevel"

    .line 941
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFaceBeautyLevel:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.availableMaxSensitivity"

    .line 942
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableMaxISO:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.availableslimbodyMode"

    .line 943
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySlimBodyModeSupport:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.slimbodyFeaturesize"

    .line 944
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySlimBodyFeatures:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.mediatek.control.capture.availableflipMode"

    .line 945
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableMirrorModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.availablevideoflip"

    .line 946
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x1

    .line 947
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsVideoMirrorSupport:Z

    const-string v2, "com.transsion.availableAsdMode"

    .line 948
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableAsdMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.availHdrMode"

    .line 949
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableTranssionHDR:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.availNighthawk"

    .line 950
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableNightHawk:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.mediatek.facefeature.availableforceface3a"

    .line 951
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAvailableFaceDetection3A:[I

    const-string v2, "com.mediatek.control.capture.availablepostviewmodes"

    .line 952
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyThumbnailAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 953
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 954
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mThumbnailPostViewSupport:Z

    const-string v2, "com.mediatek.control.capture.early.notification.support"

    .line 955
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyShot2shotAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.availundistortmode"

    .line 957
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyDistortionCorrectionAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.availwatermarkMode"

    .line 959
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableAutoWaterMarkModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 961
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 962
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAutoWatermarkSupport:Z

    const-string v2, "com.transsion.availablevideowatermark"

    .line 964
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableVideoWaterMarkModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 965
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 966
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVideoWatermarkSupport:Z

    const-string v2, "com.transsion.availantivideoMode"

    .line 967
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableAntiVideoModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 968
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 969
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAntiVideoSupport:Z

    const-string v2, "com.transsion.istrancamera"

    .line 971
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableTranssionCameraMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 972
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 973
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mTranssionCameraModeSupport:Z

    const-string v2, "com.mediatek.stereofeature.supporteddoflevel"

    .line 974
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySupportedDofLevel:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.mediatek.stereofeature.stereosensorcropregion"

    .line 975
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyStereoSensorCropRegion:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 976
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 977
    array-length v6, v2

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 978
    iget-object v6, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mValueStereoCropRegion:Landroid/graphics/Rect;

    aget v7, v2, v5

    aget v8, v2, v3

    aget v9, v2, v4

    add-int/2addr v9, v7

    const/4 v10, 0x3

    aget v2, v2, v10

    add-int/2addr v2, v8

    invoke-virtual {v6, v7, v8, v9, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    const-string v2, "com.transsion.wideMode"

    .line 980
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableWideCamera:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 981
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 982
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mWideCameraSupport:Z

    const-string v2, "com.transsion.micromode"

    .line 983
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyMicroCamera:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 984
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 985
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMicroCameraSupport:Z

    const-string v2, "com.transsion.teleMode"

    .line 986
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableTeleCamera:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 987
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 988
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mTeleCameraSupport:Z

    const-string v2, "com.transsion.tranOisSupport"

    .line 989
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableOIS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 990
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 991
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mOISSupport:Z

    const-string v2, "com.transsion.availTranMultiDualCamIndex"

    .line 992
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableTranMultiDualCam:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 993
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 994
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v6

    iput-boolean v6, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMultiDualCamLogicalSupport:Z

    .line 995
    invoke-static {v2, v4}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMultiDualCamTeleCamSupport:Z

    const-string v2, "com.mediatek.multicamfeature.availableMultiCamFeatureMode"

    .line 996
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mSupportLogicalCameraMode:[I

    .line 997
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLogicalCameraSupport:Z

    const-string v2, "com.transsion.devicefunction"

    .line 998
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFakeDualCamera:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 999
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v2, :cond_3

    .line 1001
    array-length v4, v2

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_3

    aget v7, v2, v6

    and-int/lit8 v8, v7, 0xf

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    .line 1010
    :pswitch_0
    iput-boolean v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFrontFake_RAW_YUV_Support:Z

    goto :goto_1

    .line 1013
    :pswitch_1
    iput-boolean v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBackFake_RAW_YUV_Support:Z

    goto :goto_1

    .line 1007
    :pswitch_2
    iput-boolean v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFake_RAW_RAW_Support:Z

    :goto_1
    and-int/lit16 v7, v7, 0xf0

    const/16 v8, 0xe0

    if-eq v7, v8, :cond_1

    goto :goto_2

    .line 1021
    :cond_1
    iget-boolean v7, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBackFake_RAW_YUV_Support:Z

    if-nez v7, :cond_2

    .line 1022
    iput-boolean v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFrontFake_RAW_YUV_Support:Z

    .line 1024
    :cond_2
    iput-boolean v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBackFake_Second_YUV_Cam_Support:Z

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "com.transsion.availableflashLuminanceValue"

    .line 1031
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableLuminanceValue:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.mediatek.bgservicefeature.availableprereleasemodes"

    .line 1032
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableBgServiceModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1033
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1034
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBGServiceSupport:Z

    const-string v2, "com.transsion.availablescreenflashmodes"

    .line 1035
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyScreenFlashAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.supportedhdmode"

    .line 1036
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySupportedHdMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1037
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1038
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsHdModeSupported:Z

    .line 1039
    const-class v2, Ljava/lang/Integer;

    const-string v4, "com.transsion.isairemosaic"

    invoke-static {p1, v4, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableAIRemosaic:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.availsupernightMode"

    .line 1040
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySuperNightModeSupport:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1041
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1042
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsSuperNightModeSupported:Z

    const-string v2, "com.transsion.fastSupernightMode"

    .line 1043
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyFastSuperNightModeSupport:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1044
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1045
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsFastSuperNightModeSupported:Z

    const-string v2, "com.transsion.availmegSuperlowlightMode"

    .line 1046
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyMegSuperNightModeSupport:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1047
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1048
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsMegSuperNightModeSupported:Z

    const-string v2, "com.transsion.availTripodSupernightMode"

    .line 1049
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1050
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsStableSuperNightModeSupported:Z

    const-string v2, "com.transsion.availmegSuperlowlightdetectMode"

    .line 1051
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySuperNightDetectModeSupport:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1052
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1053
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsSuperNightDetectModeSupported:Z

    const-string v2, "com.transsion.availableMaxFilterType"

    .line 1055
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFilterIds:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.availableVideoMaxFilterType"

    .line 1056
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableVideoFilterIds:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.availableVideoMaxFilterSkinType"

    .line 1057
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableVideoFilterSkinTypes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.availableVideoMaxEffectType"

    .line 1058
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableVideoEffectIds:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.availableVideoMaxMaskType"

    .line 1059
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableVideoFrameIds:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.dualcampicturesize"

    .line 1060
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySupportedDualCamPictures:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.dualcamcalimodepicturesize"

    .line 1061
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySupportedDualCamCalibSize:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.availsingleblurMode"

    .line 1062
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableSTBlurModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.availsingleblurlevel"

    .line 1063
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableSingleBlurLevels:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.zoomactiveregion"

    .line 1064
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFovCropRegion:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.zoomactiveregionfishsensor"

    .line 1065
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFovWideCropRegion:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.availfeaturesvalue"

    .line 1066
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFaceBeautyFeatures:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.availfeaturescope"

    .line 1068
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFaceBeautyFeaturesLevelScope:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.4cellpicturesize"

    .line 1069
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailable4CellInOneSize:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.is4cell"

    .line 1070
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailable4Cell:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.mediatek.streamingfeature.availableHfpsMaxResolutions"

    .line 1072
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableHighFpsResolutions:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.mediatek.streamingfeature.availableHfpsModes"

    .line 1073
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableHfpsMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1074
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1075
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mHfpsModeSupport:Z

    const-string v2, "com.transsion.availmulticamCaptureFusionMode"

    .line 1077
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFusionMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1078
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1079
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFusionModeSupport:Z

    const-string v2, "com.transsion.videoMode"

    .line 1080
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableVideoCamera:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1081
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1082
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVideoCameraSupport:Z

    const-string v2, "com.transsion.cameraFoldedFlag"

    .line 1083
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFoldedFlagSupport:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1084
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1085
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCameraFoldedFlagSupport:Z

    const-string v2, "com.transsion.availablefacedetectmode"

    .line 1087
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAvailableKeyTranFaceDetectMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.isSupperNightid"

    .line 1088
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    if-eqz v2, :cond_4

    move v2, v3

    goto :goto_3

    :cond_4
    move v2, v5

    :goto_3
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDspSupport:Z

    .line 1089
    const-class v2, [B

    const-string v4, "com.mediatek.flashfeature.customization.available"

    invoke-static {p1, v4, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1090
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([BB)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFlashCustomizedAvailable:Z

    const-string v2, "com.mediatek.smvrfeature.availableSmvrModes"

    .line 1091
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableSMVRModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.eyeDetectionSupport"

    .line 1092
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableEyeDetection:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.humanDetectionSupport"

    .line 1093
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableHumanDetect:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1094
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1095
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mHumanDetectSupport:Z

    const-string v2, "com.transsion.animalDetectionSupport"

    .line 1096
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableAnimalEyeDetection:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1097
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1098
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAnimalEyeDetectSupport:Z

    const-string v2, "com.transsion.macroswitchSupport"

    .line 1100
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableAutoMacroSwitch:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.macrolampsupport"

    .line 1101
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    if-eqz v2, :cond_5

    move v2, v3

    goto :goto_4

    :cond_5
    move v2, v5

    :goto_4
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMacroTorchSupport:Z

    const-string v2, "com.transsion.tranGimbalStabilizationSupport"

    .line 1102
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableMicroPanTilt:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1103
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1104
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMicroPanTiltSupport:Z

    const-string v2, "com.transsion.availhumanlightMode"

    .line 1106
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableVideoPortraitModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1107
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1108
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVideoPortraitSupport:Z

    const-string v2, "com.transsion.availableVideoSuperNightMode"

    .line 1109
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableVideoSuperNightModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1110
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1111
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVideoSuperNightSupport:Z

    const-string v2, "com.transsion.availvideoTranYUVSuperNightMode"

    .line 1112
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableVideoSuperNightYUVModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1113
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1114
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVideoSuperNightYUVSupport:Z

    const-string v2, "com.transsion.availableMaxhumanlightType"

    .line 1116
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableVideoPortraitLevelModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.availmegSuperresolutionMode"

    .line 1117
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableSuperresolution:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.availSTPortraitMode"

    .line 1118
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailablePortraitModeEnhance:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.availDualCamSinglePortrait"

    .line 1119
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableBWPortraitModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1120
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1121
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBWPortraitSupport:Z

    const-string v2, "com.transsion.availablefacedetectback"

    .line 1122
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableGenderAttributeValueModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1123
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1124
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mGenderAttributeValueSupport:Z

    const-string v2, "com.transsion.availMegHumanMode"

    .line 1125
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableHumanEffectMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.availTranSatMode"

    .line 1126
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableSatMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1127
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1128
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mSatModeSupport:Z

    const-string v2, "com.mediatek.multicamfeature.multiCamZoomSteps"

    .line 1129
    invoke-static {p1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableMultiCameraZoomSteps:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.periscopeLens"

    .line 1130
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailablePeriscopeCam:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1131
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1132
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mPeriscopeLensSupport:Z

    const-string v2, "com.transsion.aePreCapFlowSupport"

    .line 1133
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 1134
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mUsePreAeCaptureFlow:Z

    const-string v2, "com.transsion.availableMaxMagicskyType"

    .line 1135
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableMaxMagicskyType:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1136
    const-class v2, [Landroid/util/Size;

    const-string v4, "com.transsion.hdthumbnailsize"

    invoke-static {p1, v4, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySupportedHdThumbnailSize:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.availarcflashMode"

    .line 1137
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    .line 1138
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mSuperFlashSupport:Z

    const-string v2, "com.transsion.availableFrontDualFlash"

    .line 1139
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    .line 1140
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFrontDualFlashSupport:Z

    const-string v2, "com.transsion.availoneperiodflashstatus"

    .line 1141
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    .line 1142
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFlashStyleSupport:Z

    const-string v2, "com.transsion.availscreentorchstatus"

    .line 1143
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mScreenTorchStatusAvailableKey:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "com.transsion.availremosaiccustomsensormode"

    .line 1144
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    .line 1145
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    if-eqz v2, :cond_6

    .line 1146
    array-length v2, v2

    if-lez v2, :cond_6

    move v5, v3

    :cond_6
    iput-boolean v5, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRemosaicModeAvailable:Z

    const-string v2, "com.transsion.remosaicmfnrSupport"

    .line 1148
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    .line 1149
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRemosaicWithMFNRSupport:Z

    const-string v2, "com.transsion.availableAisMotionResult"

    .line 1151
    invoke-static {p1, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v2

    .line 1152
    invoke-static {p1, v2}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAiShutterSupport:Z

    const-string v2, "com.transsion.camerabaseratio"

    .line 1154
    invoke-static {p1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyBaseZoomRatio:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1155
    invoke-static {p1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAvaliableZoomRatio:[F

    const-string v0, "com.transsion.availautocolorlevel"

    .line 1157
    invoke-static {p1, v0, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object v0

    .line 1158
    invoke-static {p1, v0}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->getValue(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mColorLevelSupport:Z

    const-string v0, "com.transsion.yuvflipsupport"

    .line 1159
    invoke-static {p1, v0, v1}, Lcom/transsion/camera/adapter/platformcamera/AvailableKeyUtil;->createAvailableKey(Landroid/hardware/camera2/CameraCharacteristics;Ljava/lang/String;Ljava/lang/Class;)Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableYuvCaptureFlipMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initCaptureRequestKeys(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 6

    .line 1163
    const-class v0, [B

    const-class v1, [F

    const-class v2, [I

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableSessionKeys()Ljava/util/List;

    move-result-object p1

    .line 1164
    new-instance v3, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v4, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v5, "com.mediatek.hdrfeature.hdrMode"

    invoke-direct {v3, v5, v2, p1, v4}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHDRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1165
    new-instance v3, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v4, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v5, "com.transsion.360videohdrMode"

    invoke-direct {v3, v5, v2, p1, v4}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKey360HDRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1166
    new-instance v3, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v4, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v5, "com.transsion.faceBeautyMode"

    invoke-direct {v3, v5, v2, p1, v4}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1167
    new-instance v3, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v4, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v5, "com.transsion.faceBeautyLevel"

    invoke-direct {v3, v5, v2, p1, v4}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyLevel:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1168
    new-instance v3, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v4, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v5, "com.transsion.slimbodyLevel"

    invoke-direct {v3, v5, v2, p1, v4}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySlimBodyLevels:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1169
    new-instance v3, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v4, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v5, "com.transsion.slimbodyMode"

    invoke-direct {v3, v5, v2, p1, v4}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySlimBodyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1170
    new-instance v3, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v4, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v5, "com.transsion.BefMakeUpMode"

    invoke-direct {v3, v5, v2, p1, v4}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMakeUpMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1171
    new-instance v3, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v4, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v5, "com.transsion.BefMakeUpStrength"

    invoke-direct {v3, v5, v1, p1, v4}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMakeUpIntensity:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1172
    new-instance v3, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v4, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v5, "com.transsion.BefMakeUpVideoMode"

    invoke-direct {v3, v5, v2, p1, v4}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMakeUpVideoMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1173
    new-instance v3, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v4, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v5, "com.transsion.BefMakeUpVideoStrength"

    invoke-direct {v3, v5, v1, p1, v4}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMakeUpVideoIntensity:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1174
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.picselfie"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyPortraitMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1175
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.mediatek.control.capture.flipmode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMirrorMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1176
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.videoflip"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoMirrorMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1177
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.mediatek.configure.setting.initrequest"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mQuickPreview:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1178
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.professionalMode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mProfessionalMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1179
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.3rdpluginenable"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyTranssionPlugin:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1180
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.asdMode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAsdRequestMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1181
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.cusIspAsd"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCusIspAsdRequestMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1182
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.hdrMode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mTranssionHDR:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1183
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.denoiseMode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDenoiseMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1184
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.lowLightMode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1185
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.dspLowlightHdrMode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLowLightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1186
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.LowlightHdrMode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLowLightHDR:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1187
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.mediatek.mfnrfeature.mfbmode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMiddleNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1188
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.nighthawkmode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mNightHawkMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1189
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.moonDetectionMode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMoonDetectionMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1190
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.aiMoonMode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAiMoonMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1191
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.mediatek.facefeature.forceface3a"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceDetection3A:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1192
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.mediatek.control.capture.postviewsize"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyPostViewRequestSizeMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1193
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.mediatek.multicamfeature.multiCamFeatureMode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVsdofKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1194
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.mediatek.vsdoffeature.vsdofFeaturePreviewSize"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDofPreviewSizeKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1195
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.mediatek.stereofeature.doflevel"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDofLevelKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1196
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.mediatek.3afeature.awbValue"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mManualAWBValueKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1197
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.mediatek.control.capture.early.notification.trigger"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyShot2Shot:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1198
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.undistortMode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyDistortionCorrection:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1199
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.satPreviewUndistortEnable"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyDistortionCorrectionPreview:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1200
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.watermarkMode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyAutoWaterMarkMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1201
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.videorotation"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoRotationMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1202
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.antivideoMode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyAntiVideoMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1203
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.DualCamSinglePortrait"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBWPortraitMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1204
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.convertBWmode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBWConvert:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1205
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.macrolamponoff"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMacroLampValue:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1206
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.mediatek.control.capture.zsl.mode"

    invoke-direct {v1, v4, v0, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyZSL:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1207
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.rtdofMode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVsdofRTKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1208
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.mediatek.bgservicefeature.prerelease"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBgPrerelease:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1209
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.mediatek.bgservicefeature.imagereaderid"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBgImageReaderId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1210
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.flashLuminanceValue"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyLuminanceValue:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1211
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.frontDualFlashColorTemp"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFrontDualFlashColorTemp:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1212
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.frontDualFlashStrengthMode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFrontDualFlashStrengthMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1213
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.screenflashmode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyScreenFlashMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1214
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.hdmode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHdMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1215
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.mediatek.streamingfeature.hfpsMode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHfpsMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1216
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.supernightMode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1217
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.megSuperlowlightMode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMegSuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1218
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.tripodSupernightMode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyStableSuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1219
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.megSuperlowlightdetectMode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightDetectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1220
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.mediatek.cshotfeature.capture"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyContinuousShotMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1221
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.filtertype"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFilterId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1222
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.videofiltertype"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoFilterId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1223
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.videofilterskintype"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoFilterSkinType:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1224
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.videoeffecttype"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoEffectId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1225
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.videomasktype"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoFrameId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1226
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.supernightfilter"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightFilerId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1227
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.singleblurMode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySTBlurMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1228
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.singleblurlevel"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySTBlurLevel:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1229
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.fakestereomode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyYuvDualCamera:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1230
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.mediatek.multicamfeature.fakeStereoFeatureMode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyRawDualCamera:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1231
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.facebeautyfeature"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyFeatures:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1232
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.mediatek.control.capture.remosaicenable"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperDefinition:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1233
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.remosaiccustomsensormode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyRemosaicMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1234
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.remosaicmfnr"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyRemosaicWithMFNR:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1235
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.shotVideoMode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideointerpolation:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1236
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.eyeDetection"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyEyeDetection:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1237
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.humanDetectionEnable"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHumanDetect:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1238
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.animalDetectionEnable"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyAnimalEyeDetect:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1239
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.macroswitchEnable"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyAutoMacroSwitch:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1240
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.facedetectmode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyTranFaceDetectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1241
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.transsioncameramode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyTranssionCameraMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1242
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.humanlightMode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoPortraitmode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1243
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.videoSuperNightMode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoSuperNightmode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1244
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.videoSuperNightScene"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoSuperNightScene:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1245
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.mediatek.control.streaming.hintForCustomTuning"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyCustomTuning:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1246
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.videoSuperNightResolution"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoSuperNightResolution:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1247
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.videoTranYUVSuperNightMode"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoSuperNightYUVMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1248
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.mediatek.configure.setting.proprietaryRequest"

    invoke-direct {v1, v4, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyPDAF:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1249
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v5, "com.mediatek.smvrfeature.smvrMode"

    invoke-direct {v1, v5, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySMVRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1250
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v5, "com.transsion.humanlightType"

    invoke-direct {v1, v5, v2, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoPortraitLevel:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1251
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v5, "com.mediatek.3afeature.aeMeteringMode"

    invoke-direct {v1, v5, v0, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMeteringMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1252
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v3, "com.mediatek.3afeature.aeIsoSpeed"

    invoke-direct {v0, v3, v2, p1, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMTKISOMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1253
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v3, "com.transsion.megSuperresolutionMode"

    invoke-direct {v0, v3, v2, p1, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperrsolutionMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1254
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v3, "com.transsion.STPortraitMode"

    invoke-direct {v0, v3, v2, p1, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyPortraitModeEnhance:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1255
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v3, "com.transsion.facedetectback"

    invoke-direct {v0, v3, v2, p1, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyGenderAttributeValueMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1256
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v3, "com.transsion.MegHumanMode"

    invoke-direct {v0, v3, v2, p1, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHumanEffectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1257
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v3, "com.mediatek.multicamfeature.multiCamConfigScalerCropRegion"

    invoke-direct {v0, v3, v2, p1, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyMultiCropRegion:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1258
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v3, "com.transsion.satCaptureJpegSize"

    invoke-direct {v0, v3, v2, p1, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mSatPictureSize:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1259
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v3, "com.transsion.magicskytype"

    invoke-direct {v0, v3, v2, p1, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestMagicSkyType:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1260
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v3, "com.transsion.magicskyMode"

    invoke-direct {v0, v3, v2, p1, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestMagicSkyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1261
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v3, "com.transsion.magicskyresult"

    invoke-direct {v0, v3, v2, p1, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestMagicSkyResult:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1262
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v3, "com.transsion.cameraMode"

    invoke-direct {v0, v3, v2, p1, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyCamMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1263
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v3, "com.transsion.marcflashMode"

    invoke-direct {v0, v3, v2, p1, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mSuperFlashRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1264
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v3, "com.transsion.oneperiodflashstatus"

    invoke-direct {v0, v3, v2, p1, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFlashStyleRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1265
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v3, "com.transsion.screentorchstatus"

    invoke-direct {v0, v3, v2, p1, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mScreenTorchStatusRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1266
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v3, "com.mediatek.streamingfeature.pipDevices"

    invoke-direct {v0, v3, v2, p1, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyPipDeviceKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1267
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    invoke-direct {v0, v4, v2, p1, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyPipProp:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1268
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v3, "com.transsion.antivideoModeUltrazoom"

    invoke-direct {v0, v3, v2, p1, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mModeUltrazoom:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1269
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const-class v1, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.mediatek.control.capture.hintForCustomTuning"

    invoke-direct {v0, v4, v1, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVideoSnapshotTuning:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1270
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v4, "com.transsion.multicamCaptureFusionMode"

    invoke-direct {v0, v4, v1, p1, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFusionKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1271
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v3, "com.transsion.autocolorlevel"

    invoke-direct {v0, v3, v2, p1, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mColorLevelRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1272
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v3, "com.transsion.ringflashlight"

    invoke-direct {v0, v3, v2, p1, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRingFlashLightRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1273
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v3, "com.mediatek.mfnrfeature.aismode"

    invoke-direct {v0, v3, v2, p1, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureRequestAisMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1274
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v3, "com.transsion.yuvflip"

    invoke-direct {v0, v3, v2, p1, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyYuvCaptureFlipMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1275
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v3, "com.transsion.streamVipFlip"

    invoke-direct {v0, v3, v2, p1, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mStreamFlipRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1276
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v3, "com.transsion.brightnessValue"

    invoke-direct {v0, v3, v2, p1, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyIszBvRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1277
    new-instance v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    const-string v3, "com.transsion.tranOisMode"

    invoke-direct {v0, v3, v2, p1, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyOISMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    return-void
.end method

.method private initCaptureResultKeys(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 4

    .line 1281
    const-class p1, Ljava/lang/Integer;

    const-class v0, [I

    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v2, "com.transsion.asdScene"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultAsdMode:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 1282
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v2, "com.mediatek.control.capture.next.ready"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyShot2Shot:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 1283
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v2, "com.mediatek.stereofeature.stereowarning"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDualLensWarningKey:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 1284
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v2, "com.transsion.brightnessValue"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultBrightness:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 1285
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v2, "com.transsion.inSensorZoomMode"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultInSensorZoomMode:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 1286
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-class v2, [B

    const-string v3, "com.mediatek.flashfeature.customizedResult"

    invoke-direct {v1, v3, v2}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyFlashCustomized:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 1287
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v2, "com.transsion.availablefacedetectreturn"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyTranFaceInfo:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 1288
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v2, "com.transsion.antivideoFaceInfo"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyAntiFaceInfoRect:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 1289
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v2, "com.transsion.eyeInfo"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyEyeDetection:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 1290
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v2, "com.transsion.humanDetectionResult"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyHumanDetect:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 1291
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v2, "com.transsion.animalDetectionResult"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyAnimalEyeDetect:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 1292
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "com.transsion.afsearchstate"

    invoke-direct {v1, v3, v2}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyAfSearchState:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 1293
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v2, "com.transsion.nighthawkresult"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultNightHawk:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 1294
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v2, "com.mediatek.multicamfeature.multiCamStreamingId"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultStreamId:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 1295
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v2, "com.mediatek.multicamfeature.multiCamMasterId"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultMasterId:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 1296
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v2, "com.transsion.moonDetectionScene"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultMoonDetection:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 1297
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v2, "com.mediatek.3afeature.awbAvailableRange"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultManualAWBRange:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 1298
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v2, "com.transsion.availableMagicskyReturn"

    invoke-direct {v1, v2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultMagicSky:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 1299
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v2, "com.transsion.colorTemperatureValue"

    invoke-direct {v1, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyCCT:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 1300
    new-instance v1, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v2, "com.transsion.antivideoMode"

    invoke-direct {v1, v2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyAntiVideoMode:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 1301
    new-instance p1, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v1, "com.transsion.macroswitchFlag"

    invoke-direct {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyAutoMacroSwitch:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 1302
    new-instance p1, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v1, "com.transsion.AisMotionResult"

    invoke-direct {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultAisMode:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    .line 1303
    new-instance p1, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const-string v1, "com.transsion.oneperiodflashtimestruct"

    invoke-direct {p1, v1, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyFlashTime:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    return-void
.end method

.method private updateFlashFireState(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "on"

    .line 4088
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4089
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFlashWillFire:Z

    goto :goto_1

    :cond_0
    const-string v0, "auto"

    .line 4090
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 4091
    :goto_0
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFlashWillFire:Z

    goto :goto_1

    .line 4093
    :cond_2
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFlashWillFire:Z

    :goto_1
    return-void
.end method


# virtual methods
.method public aeStateFlashRequired(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;I)Z
    .locals 0

    .line 4099
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 4104
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p2, 0x4

    if-eq p0, p2, :cond_1

    if-ne p3, p2, :cond_2

    :cond_1
    const/4 p1, 0x1

    :cond_2
    return p1
.end method

.method public afSearchStateAvailable()Z
    .locals 0

    .line 2886
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyAfSearchState:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public checkAfSearchStateResult(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;
    .locals 1

    .line 2891
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyAfSearchState:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2894
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyAfSearchState:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public checkAnimalEyeDetectionResult(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    .line 2553
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyAnimalEyeDetect:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2554
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyAnimalEyeDetect:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public checkAsdResult(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    .line 2438
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultAsdMode:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2439
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultAsdMode:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public checkAutoMacroSwitchResult(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    .line 2562
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyAutoMacroSwitch:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2563
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyAutoMacroSwitch:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    .line 2447
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultBrightness:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2448
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultBrightness:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public checkDualLensResult(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    .line 2535
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDualLensWarningKey:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2536
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDualLensWarningKey:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public checkEyeDetectionResult(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    .line 2526
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyEyeDetection:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2527
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyEyeDetection:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public checkHumanDetectResult(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    .line 2544
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyHumanDetect:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2545
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyHumanDetect:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public checkInSensorZoomMode(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    .line 2455
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultInSensorZoomMode:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2456
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultInSensorZoomMode:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public checkMagicSkyDetection(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 3

    .line 3774
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultMagicSky:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3775
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultMagicSky:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_0

    .line 3776
    aget p0, p0, v2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public checkNightHawkResult(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    .line 2502
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultNightHawk:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2503
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultNightHawk:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public checkPreAECaptureOnStarted(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public checkScreenFlashFireResult(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 3

    .line 3350
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyFlashCustomized:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3354
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyFlashCustomized:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 3355
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkScreenFlashFireResult value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3356
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3355
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_2

    .line 3357
    array-length p1, p0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_1

    goto :goto_0

    .line 3360
    :cond_1
    aget-byte p0, p0, v1

    if-ne v0, p0, :cond_2

    move v1, v0

    :cond_2
    :goto_0
    return v1

    .line 3351
    :cond_3
    :goto_1
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mResultKeyFlashCustomized is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public checkShot2ShotResult(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    .line 2878
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyShot2Shot:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2881
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyShot2Shot:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public checkStreamIdResult(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    .line 4164
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultStreamId:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4165
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultStreamId:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    .line 4167
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultMasterId:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4168
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureResultMasterId:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public checkTranssionFaceInfo(Landroid/hardware/camera2/CaptureResult;)[Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;
    .locals 7

    .line 1343
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyTranFaceInfo:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1344
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyTranFaceInfo:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_0

    .line 1346
    array-length p1, p0

    div-int/lit8 p1, p1, 0x6

    new-array v0, p1, [Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_1

    .line 1349
    new-instance v3, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;

    const/4 v4, -0x1

    add-int/lit8 v5, v2, 0x4

    aget v5, p0, v5

    add-int/lit8 v6, v2, 0x5

    aget v6, p0, v6

    invoke-direct {v3, v4, v5, v6}, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;-><init>(III)V

    aput-object v3, v0, v1

    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public colorLevelSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 4442
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mColorLevelSupport:Z

    return p0
.end method

.method public enableBWConvert(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 2307
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBWConvert:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2312
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBWConvert:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 2314
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBWConvert:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_OFF:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public declared-synchronized enableBWPortrait(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    monitor-enter p0

    .line 2294
    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBWPortraitSupport:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBWPortraitMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 2299
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBWPortraitMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 2301
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBWPortraitMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_OFF:[I

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2303
    :goto_0
    monitor-exit p0

    return-void

    .line 2295
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public enableBgServiceMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 3078
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBgPrerelease:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3082
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[enableBgServiceMode] ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 3084
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBgPrerelease:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 3086
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBgPrerelease:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_OFF:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 3079
    :cond_2
    :goto_1
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "enableBgService return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public enableContinuousShot(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 3297
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyContinuousShotMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3302
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyContinuousShotMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    return-void

    .line 3298
    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mRequestKeyContinuousShotMode is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized enableFace3A(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    monitor-enter p0

    .line 2759
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAvailableFaceDetection3A:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceDetection3A:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_3

    .line 2760
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2765
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAvailableFaceDetection3A:[I

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2766
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceDetection3A:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v2, v0, [I

    aput v0, v2, v1

    invoke-virtual {p1, p2, v2}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 2769
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAvailableFaceDetection3A:[I

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2770
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceDetection3A:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v0, [I

    aput v1, v0, v1

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2773
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 2761
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public enableFakeDualLensMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 3309
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBackFake_Second_YUV_Cam_Support:Z

    if-eqz v0, :cond_1

    const/16 p1, 0xe0

    goto :goto_0

    .line 3311
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBackFake_RAW_YUV_Support:Z

    if-eqz v0, :cond_2

    const/16 p1, 0xe

    goto :goto_0

    .line 3313
    :cond_2
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFrontFake_RAW_YUV_Support:Z

    if-eqz v0, :cond_3

    const/16 p1, 0xf

    .line 3317
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFake_RAW_RAW_Support:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "mRequestKeyYuvDualCamera is null"

    if-eqz v0, :cond_6

    .line 3318
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyRawDualCamera:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 3322
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyRawDualCamera:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v2, [I

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_2

    .line 3319
    :cond_5
    :goto_1
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 3324
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyYuvDualCamera:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    .line 3328
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyYuvDualCamera:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v2, [I

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :goto_2
    return-void

    .line 3325
    :cond_8
    :goto_3
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized enableMirror(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    monitor-enter p0

    .line 2281
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMirrorMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 2286
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMirrorMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 2288
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMirrorMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_OFF:[I

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2290
    :goto_0
    monitor-exit p0

    return-void

    .line 2282
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enableModeUltrazoom(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    monitor-enter p0

    .line 2365
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mModeUltrazoom:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2368
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[enableModeUltrazoom] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mModeUltrazoom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mModeUltrazoom:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 2370
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mModeUltrazoom:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 2372
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mModeUltrazoom:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_OFF:[I

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2374
    :goto_0
    monitor-exit p0

    return-void

    .line 2366
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enableProfessionalMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    monitor-enter p0

    .line 2352
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mProfessionalMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2355
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[enableProfessionalMode] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mProfessionalMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mProfessionalMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 2357
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mProfessionalMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 2359
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mProfessionalMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_OFF:[I

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2361
    :goto_0
    monitor-exit p0

    return-void

    .line 2353
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enableQuickPreview(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    monitor-enter p0

    .line 2339
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mQuickPreview:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    .line 2344
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mQuickPreview:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 2346
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mQuickPreview:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_OFF:[I

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2348
    :goto_0
    monitor-exit p0

    return-void

    .line 2340
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public enableRTDofMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 3028
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVsdofRTKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3032
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[enableRTDofMode] ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 3034
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVsdofRTKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_OFF:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 3036
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVsdofRTKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 3029
    :cond_2
    :goto_1
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "enableRTDofMode,return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public enableStreamFlip(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 4474
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mStreamFlipRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4477
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[enableStreamFlip] value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mStreamFlip: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mStreamFlip:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4478
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mStreamFlipRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz p1, :cond_1

    sget-object v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_OFF:[I

    :goto_0
    invoke-virtual {v0, p2, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    .line 4479
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mStreamFlip:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public enableTranssionPlugin(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 2385
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyTranssionPlugin:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2388
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[enableTranssionPlugin] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRequestKeyTranssionPlugin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyTranssionPlugin:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2390
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyTranssionPlugin:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public enableVideoInterpolation(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 3334
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideointerpolation:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3337
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[enableVideoInterpolation] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRequestKeyVideointerpolation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideointerpolation:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3339
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideointerpolation:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public enableVideoMirror(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 2320
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsVideoMirrorSupport:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoMirrorMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_2

    .line 2321
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2326
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoMirrorMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 2328
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoMirrorMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_OFF:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public flashStyleSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 4293
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFlashStyleSupport:Z

    return p0
.end method

.method public frontDualFlashSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 4271
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFrontDualFlashSupport:Z

    return p0
.end method

.method public get4cellInOneSize(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 4
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

    .line 3265
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailable4CellInOneSize:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 3266
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 3268
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 3270
    :goto_1
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 3271
    aget v1, p0, v0

    add-int/lit8 v2, v0, 0x1

    .line 3272
    aget v2, p0, v2

    .line 3273
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 3274
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public getAEState(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;
    .locals 0

    .line 4213
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public getAntiFaceInfoRect(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    .line 2140
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyAntiFaceInfoRect:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2141
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyAntiFaceInfoRect:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAntiVideoMode(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;
    .locals 1

    .line 2960
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyAntiVideoMode:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2963
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyAntiVideoMode:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBaseZoomRatio()F
    .locals 1

    .line 4412
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAvaliableZoomRatio:[F

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 4413
    aget p0, p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCCTValue(Landroid/hardware/camera2/CaptureResult;)I
    .locals 1

    .line 4250
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyCCT:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4251
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyCCT:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 4253
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, -0x3e8

    :goto_0
    return p0
.end method

.method public getCaptureThumbnailSource(ZJZ)I
    .locals 2

    const-wide/32 v0, 0x3b9aca00

    cmp-long p2, p2, v0

    if-ltz p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p1, :cond_2

    .line 2786
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsFlashOn:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsSupperFlash:Z

    if-nez p1, :cond_2

    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFlashFireForThisCapture:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public getCreateSessionThumbnailSource()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getFlashWillFire()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFovCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;
    .locals 4

    .line 2727
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2728
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFovCropRegion:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 2729
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 2730
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFovCropRegion return driver rect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 2731
    array-length p1, p0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 2732
    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    add-int/2addr v2, v0

    const/4 v3, 0x3

    aget p0, p0, v3

    add-int/2addr p0, v1

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 2734
    :cond_0
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isFovCropSupport()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_1

    .line 2735
    new-instance p0, Landroid/graphics/Rect;

    const/16 p1, 0x96

    const/16 v0, 0x70

    const/16 v1, 0xc2a

    const/16 v2, 0x91e

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2736
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "getFovCropRegion return default rect."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0

    .line 2739
    :cond_1
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getFovCropRegion return null rect."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2740
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public getFovWideCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;
    .locals 4

    .line 2745
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFovWideCropRegion:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 2746
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 2747
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFovWideCropRegion return driver rect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 2748
    array-length p1, p0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 2749
    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    add-int/2addr v2, v0

    const/4 v3, 0x3

    aget p0, p0, v3

    add-int/2addr p0, v1

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 2753
    :cond_0
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getFovWideCropRegion return null rect."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2754
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public getHighFpsResolutions(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 6
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

    .line 3424
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableHighFpsResolutions:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 3425
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 3427
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 3429
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_1

    .line 3430
    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    mul-int/lit8 v2, v1, 0x3

    .line 3432
    aget v3, p0, v2

    add-int/lit8 v4, v2, 0x1

    .line 3433
    aget v4, p0, v4

    add-int/lit8 v2, v2, 0x2

    .line 3434
    aget v2, p0, v2

    .line 3435
    new-instance v5, Lcom/transsion/camera/utils/HighFpsResolution;

    invoke-direct {v5, v3, v4, v2}, Lcom/transsion/camera/utils/HighFpsResolution;-><init>(III)V

    .line 3436
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public getLogicId(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMultiCameraZoomSteps(Landroid/hardware/camera2/CameraCharacteristics;)[F
    .locals 0

    .line 4137
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableMultiCameraZoomSteps:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 4138
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSlimBodyFeatureSize(Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 1

    .line 1923
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySlimBodyFeatures:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1924
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_0

    .line 1925
    array-length p1, p0

    if-lez p1, :cond_0

    .line 1926
    aget v0, p0, v0

    :cond_0
    return v0
.end method

.method public getStereoSensorCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;
    .locals 0

    .line 2722
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mValueStereoCropRegion:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getSuitableVideoFrameRange(Ljava/util/List;I)Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    move v0, p2

    .line 4371
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    .line 4372
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 4373
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 4376
    :cond_1
    new-instance p0, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p0
.end method

.method public getSuperDefinitionType(Landroid/hardware/camera2/CameraCharacteristics;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSupportLogicalCameraMode()[I
    .locals 0

    .line 4147
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mSupportLogicalCameraMode:[I

    return-object p0
.end method

.method public getSupportSMVRModeMetaData(Landroid/hardware/camera2/CameraCharacteristics;)[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;
    .locals 5

    .line 3380
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableSMVRModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3381
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getSupportSMVRModeMetaData, not support SMVR."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 3385
    :cond_0
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_4

    .line 3386
    array-length p1, p0

    if-eqz p1, :cond_4

    array-length p1, p0

    rem-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1

    goto :goto_2

    .line 3393
    :cond_1
    array-length p1, p0

    div-int/lit8 p1, p1, 0x4

    .line 3394
    new-array v0, p1, [Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    .line 3396
    new-instance v2, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;

    invoke-direct {v2}, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;-><init>()V

    aput-object v2, v0, v1

    mul-int/lit8 v3, v1, 0x4

    .line 3397
    aget v4, p0, v3

    iput v4, v2, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->width:I

    add-int/lit8 v4, v3, 0x1

    .line 3398
    aget v4, p0, v4

    iput v4, v2, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->height:I

    add-int/lit8 v4, v3, 0x2

    .line 3399
    aget v4, p0, v4

    iput v4, v2, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->fpsMax:I

    add-int/lit8 v3, v3, 0x3

    .line 3400
    aget v3, p0, v3

    iput v3, v2, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->cusP2BatchSize:I

    .line 3401
    sget-object v2, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportSMVRModeMetaData metaDatas["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3402
    aget-object v3, v0, v1

    iget v4, v3, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->cusP2BatchSize:I

    iget v3, v3, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->fpsMax:I

    div-int/lit8 v3, v3, 0x1e

    if-ge v4, v3, :cond_2

    const-string v3, "getSupportSMVRModeMetaData as Burst mode."

    .line 3403
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3404
    aget-object v2, v0, v1

    sget-object v3, Lcom/transsion/camera/utils/SettingInfo$Pattern;->BURST:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    iput-object v3, v2, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->pattern:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    goto :goto_1

    :cond_2
    const-string v3, "getSupportSMVRModeMetaData as Continuous mode."

    .line 3406
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3407
    aget-object v2, v0, v1

    sget-object v3, Lcom/transsion/camera/utils/SettingInfo$Pattern;->CONTINUOUS:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    iput-object v3, v2, Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;->pattern:Lcom/transsion/camera/utils/SettingInfo$Pattern;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    .line 3388
    :cond_4
    :goto_2
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getSupportSMVRModeMetaData, available modes info in meta data is not right, return null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSupportSTBlurModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 2

    .line 2002
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableSTBlurModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 2003
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 2009
    array-length p1, p0

    new-array p1, p1, [Ljava/lang/String;

    .line 2010
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 2011
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_2
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportSingleBlurLevels(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 4

    .line 2051
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableSingleBlurLevels:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2052
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSupportSingleBlurLevels:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableSingleBlurLevels:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2053
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableSingleBlurLevels:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 2058
    aget p1, p0, v1

    const/4 v0, 0x1

    aget p0, p0, v0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 2059
    new-array p1, p0, [Ljava/lang/String;

    :goto_0
    if-ge v1, p0, :cond_0

    add-int/lit8 v0, v1, 0x1

    .line 2061
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    new-array p0, v1, [Ljava/lang/String;

    return-object p0

    :cond_2
    new-array p0, v1, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedAsdMode(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 2

    .line 2572
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableAsdMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 2573
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 2579
    array-length p1, p0

    new-array p1, p1, [Ljava/lang/String;

    .line 2580
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 2581
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_2
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedAutoMacroSwitch(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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

    .line 3499
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableAutoMacroSwitch:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_2

    .line 3500
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 3505
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 3506
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 3507
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    .line 3511
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 3502
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getSupportedContrastValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportedDistortionCorrection(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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

    .line 3249
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyDistortionCorrectionAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_1

    .line 3250
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 3252
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 3253
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 3254
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    .line 3259
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getSupportedDolHdrModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 3

    .line 1411
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableDolHDRModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1412
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 1418
    array-length p1, p0

    .line 1419
    new-array v1, p1, [Ljava/lang/String;

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1421
    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_2
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedDualCamCalibSize(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Size;
    .locals 2

    .line 3221
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySupportedDualCamCalibSize:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 3222
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 3227
    array-length p1, p0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 3228
    new-instance v0, Landroid/util/Size;

    const/4 p1, 0x0

    aget p1, p0, p1

    const/4 v1, 0x1

    aget p0, p0, v1

    invoke-direct {v0, p1, p0}, Landroid/util/Size;-><init>(II)V

    :cond_1
    return-object v0
.end method

.method public getSupportedDualCamPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 4
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

    .line 3199
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySupportedDualCamPictures:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 3200
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 3203
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 3206
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 3207
    aget v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 3208
    aget v2, p0, v0

    .line 3210
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 3211
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public getSupportedEyeDetection(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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

    .line 3475
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableEyeDetection:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_2

    .line 3476
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 3482
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 3483
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 3484
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    .line 3488
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 3478
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getSupportedFaceBeautyFeatures(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1731
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFaceBeautyFeatures:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 1732
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 1735
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 1736
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1737
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p1

    .line 1741
    :cond_2
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "please config key : com.transsion.availfeaturesvalue"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1743
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getSupportedFaceBeautyFeatures(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->getSupportedFaceBeautyFeatures(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedFaceBeautyFeaturesLevelScope(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1749
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFaceBeautyFeaturesLevelScope:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 1750
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 1753
    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    .line 1754
    aget p0, p0, p1

    .line 1755
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    if-gt v0, p0, :cond_1

    .line 1757
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p1

    .line 1761
    :cond_2
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "please config key : com.transsion.availfeaturescope"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1763
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getSupportedFaceBeautyFeaturesLevelScope(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->getSupportedFaceBeautyFeaturesLevelScope(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedFaceBeautyLevels(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 4

    .line 1700
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFaceBeautyLevel:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1701
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 1702
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportedFaceBeautyLevels : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_3

    .line 1709
    array-length p1, p0

    if-lez p1, :cond_0

    .line 1710
    aget p0, p0, v0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    add-int/lit8 p1, p0, 0x1

    .line 1711
    new-array v1, p1, [Ljava/lang/String;

    move v2, v0

    :goto_1
    if-ge v0, p1, :cond_2

    if-lt p0, v2, :cond_1

    .line 1716
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_4
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedFaceBeautyModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 3

    .line 1676
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFaceBeautyMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1677
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 1678
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportedFaceBeautyModes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 1685
    array-length p1, p0

    .line 1686
    new-array v1, p1, [Ljava/lang/String;

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1688
    aget v2, p0, v0

    invoke-static {v2}, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->convertFaceBeautyValue(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_2
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedFilterIds(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 3

    .line 1769
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableFilterIds:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 1770
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1773
    :goto_0
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSupportedFilterIds : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1774
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 1776
    array-length v0, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget v2, p0, v1

    .line 1777
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1780
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 1781
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedHDSize(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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

    .line 4234
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySupportedHdThumbnailSize:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-nez p0, :cond_0

    .line 4235
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 4237
    :cond_0
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/util/Size;

    if-eqz p0, :cond_1

    .line 4239
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4240
    invoke-static {p1}, Lcom/transsion/camera/utils/CameraUtil;->sortSizeInDescending(Ljava/util/List;)V

    return-object p1

    .line 4243
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getSupportedHdModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 2

    .line 2149
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySupportedHdMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 2150
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 2156
    array-length p1, p0

    new-array p1, p1, [Ljava/lang/String;

    .line 2157
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 2158
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_2
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedHumanEffectModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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

    .line 3719
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableHumanEffectMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v0, "0"

    if-eqz p0, :cond_2

    .line 3720
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 3721
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportedHumanEffectModes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 3728
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 3730
    aget v0, p0, v0

    :goto_0
    const/4 v1, 0x1

    aget v1, p0, v1

    if-gt v0, v1, :cond_0

    .line 3731
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    .line 3736
    :cond_1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3723
    :cond_2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedISOValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 5
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

    .line 3860
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 3861
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_4

    .line 3863
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->getAvailableMaxISO(Landroid/hardware/camera2/CameraCharacteristics;)I

    move-result p0

    const/4 p1, -0x1

    .line 3864
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3865
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 3866
    :cond_0
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    if-ge v2, p0, :cond_3

    .line 3868
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3869
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->DEFAULT_ISO_TABLE:[I

    array-length v0, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    aget v4, p1, v3

    if-le v4, v2, :cond_1

    if-ge v4, p0, :cond_1

    .line 3871
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3874
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3876
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    return-object v1
.end method

.method public getSupportedLuminanceValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 2
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

    .line 3140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3142
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableLuminanceValue:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 3143
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 3148
    array-length p1, p0

    const/4 v1, 0x2

    if-le p1, v1, :cond_1

    const/4 p1, 0x1

    .line 3149
    aget p1, p0, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3150
    aget p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public getSupportedMagicSkyType(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 3

    .line 3787
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableMaxMagicskyType:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 3788
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 3789
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportedMagicSkyType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_3

    .line 3796
    array-length p1, p0

    if-lez p1, :cond_0

    .line 3797
    aget p0, p0, v0

    goto :goto_0

    :cond_0
    move p0, v0

    .line 3798
    :goto_0
    new-array p1, p0, [Ljava/lang/String;

    const/4 v1, 0x1

    :goto_1
    if-ge v0, p0, :cond_2

    if-lt p0, v1, :cond_1

    .line 3803
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p1

    :cond_3
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_4
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedManualWBRangeValue(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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

    .line 2681
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p1, "2000"

    .line 2682
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "9000"

    .line 2683
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "auto"

    .line 2684
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    if-gt p1, v0, :cond_0

    .line 2686
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x64

    goto :goto_0

    .line 2688
    :cond_0
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSupportedManualWBRangeValue, values:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method public getSupportedMeteringModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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

    .line 3647
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p1, "center"

    .line 3648
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "spot"

    .line 3649
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "average"

    .line 3650
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3651
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSupportedMeteringModes, values:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0
.end method

.method public getSupportedPhotoHdrModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 3

    .line 1366
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailablePhotoHDRModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1367
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 1368
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSupportedPhotoHdrModes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 1375
    array-length p1, p0

    .line 1376
    new-array v1, p1, [Ljava/lang/String;

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1378
    aget v2, p0, v0

    invoke-static {v2}, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->convertHDRVendorValue(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_2
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedPictureSizes(Ljava/util/List;Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method public getSupportedScreenFlashModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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

    .line 3157
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyScreenFlashAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3158
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "screen flash is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 3161
    :cond_0
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_1

    .line 3163
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "supportedModes is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 3167
    :cond_1
    array-length p1, p0

    .line 3168
    new-array v0, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 3170
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3172
    :cond_2
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "supported screen flash modes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3174
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedScreenTorchStatus(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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

    .line 4321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4322
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mScreenTorchStatusAvailableKey:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-nez p0, :cond_0

    return-object v0

    .line 4325
    :cond_0
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_1

    return-object v0

    .line 4329
    :cond_1
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SCREEN_TORCH_STATUS_OFF:[I

    const/4 v1, 0x0

    aget p1, p1, v1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "off"

    .line 4330
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4332
    :cond_2
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SCREEN_TORCH_STATUS_ANNULAR:[I

    aget p1, p1, v1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "ring_screen_light"

    .line 4333
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4335
    :cond_3
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SCREEN_TORCH_STATUS_FLASH:[I

    aget p1, p1, v1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "screen_flash"

    .line 4336
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public getSupportedShot2Shot(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 2

    .line 3235
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyShot2shotAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 3236
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 3238
    array-length p1, p0

    new-array p1, p1, [Ljava/lang/String;

    .line 3239
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 3240
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedSuperNightModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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

    .line 2230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2231
    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySuperNightModeSupport:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const-string v2, "off"

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 2232
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 2233
    invoke-static {p0, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "dsp_super_night"

    .line 2234
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2235
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2237
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyMegSuperNightModeSupport:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_2

    .line 2238
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 2239
    invoke-static {p0, v3}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "meg_super_night"

    .line 2240
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2241
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object v0

    .line 2244
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0
.end method

.method public getSupportedTranFaceDetectMode(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 2

    .line 1316
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAvailableKeyTranFaceDetectMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1317
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 1323
    array-length p1, p0

    new-array p1, p1, [Ljava/lang/String;

    .line 1324
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1325
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_2
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedTranssionHDR(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 6

    .line 2591
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableTranssionHDR:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 2592
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 2596
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 2598
    array-length v1, p1

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget v4, p1, v2

    const/16 v5, 0x12

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_3

    if-eqz v3, :cond_3

    .line 2604
    array-length p1, p0

    new-array p1, p1, [Ljava/lang/String;

    .line 2605
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 2606
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p1

    :cond_3
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_4
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedVideoEffectIds(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 3

    .line 1827
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableVideoEffectIds:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 1828
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1831
    :goto_0
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSupportedVideoEffectIds : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1833
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 1835
    array-length v0, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget v2, p0, v1

    .line 1836
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1840
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 1841
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedVideoFilterIds(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 3

    .line 1787
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableVideoFilterIds:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 1788
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1791
    :goto_0
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSupportedVideoFilterIds : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1793
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 1795
    array-length v0, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget v2, p0, v1

    .line 1796
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1800
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 1801
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedVideoFrameIds(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 3

    .line 1847
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableVideoFrameIds:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 1848
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1851
    :goto_0
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSupportedVideoFrameIds : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1853
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 1855
    array-length v0, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    aget v2, p0, v1

    .line 1856
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1860
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 1861
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedVideoHdrModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 3

    .line 1390
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableVideoHDRModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1391
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 1397
    array-length p1, p0

    .line 1398
    new-array v1, p1, [Ljava/lang/String;

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1400
    aget v2, p0, v0

    invoke-static {v2}, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->convertHDRVendorValue(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_2
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedVideoPortraitLevel(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 2

    .line 3540
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableVideoPortraitLevelModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 3541
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 3545
    array-length p1, p0

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    .line 3546
    aget p0, p0, v1

    add-int/lit8 p1, p0, 0x1

    .line 3547
    new-array p1, p1, [Ljava/lang/String;

    :goto_0
    if-gt v0, p0, :cond_0

    .line 3549
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_2
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedVsdofLevel(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
    .locals 2

    .line 2704
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySupportedDofLevel:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 2705
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 2710
    aget p0, p0, v0

    .line 2711
    new-array p1, p0, [Ljava/lang/String;

    :goto_0
    if-ge v0, p0, :cond_0

    .line 2713
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    new-array p0, v0, [Ljava/lang/String;

    return-object p0

    :cond_2
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method

.method public getSupportedYuvCaptureFlipMode(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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

    .line 3825
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableYuvCaptureFlipMode:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_2

    .line 3826
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_1

    .line 3831
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 3832
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 3833
    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    .line 3837
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 3828
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getTintValue(Landroid/hardware/camera2/CaptureResult;)I
    .locals 0

    const/16 p0, -0x3e8

    return p0
.end method

.method public initFirst(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0

    .line 911
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->initAvailableKeys(Landroid/hardware/camera2/CameraCharacteristics;)V

    return-void
.end method

.method public declared-synchronized initSecond(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 6

    monitor-enter p0

    .line 916
    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsAllInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 917
    monitor-exit p0

    return-void

    .line 919
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 920
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object v2

    .line 921
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 922
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 923
    iget-object v4, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAvailableCaptureRequestKeys:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 926
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 927
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAvailableCaptureRequestKeys time "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 928
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->initCaptureRequestKeys(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 929
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 930
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->initCaptureResultKeys(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 931
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 932
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initCaptureResultKeys time "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 933
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsAllInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 934
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public is4cell(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1

    .line 2646
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailable4Cell:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 2647
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 2649
    array-length v0, p0

    if-lez v0, :cond_1

    aget p0, p0, p1

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return p1
.end method

.method public isAENeedOff()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isAnimalEyeDetectSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 3493
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAnimalEyeDetectSupport:Z

    return p0
.end method

.method public isAntiVideoSupport()Z
    .locals 0

    .line 2914
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAntiVideoSupport:Z

    return p0
.end method

.method public isAutoWaterMarkSupport()Z
    .locals 0

    .line 2899
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAutoWatermarkSupport:Z

    return p0
.end method

.method public isBGServiceModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 3102
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBGServiceSupport:Z

    return p0
.end method

.method public isBWPortraitSupport()Z
    .locals 0

    .line 2919
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBWPortraitSupport:Z

    return p0
.end method

.method public isCameraFoldedFlagSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 3287
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCameraFoldedFlagSupport:Z

    return p0
.end method

.method public isDspSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 3292
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDspSupport:Z

    return p0
.end method

.method public isFakeRAW_RAWCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 3068
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFake_RAW_RAW_Support:Z

    return p0
.end method

.method public isFakeRAW_YUVCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 3073
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFrontFake_RAW_YUV_Support:Z

    if-nez p1, :cond_1

    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mBackFake_RAW_YUV_Support:Z

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

.method public isFastThumbSupport()Ljava/lang/Boolean;
    .locals 0

    .line 2805
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public isFusionSupport()Z
    .locals 0

    .line 2820
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFusionModeSupport:Z

    return p0
.end method

.method public isGenderAttributeValueSupport()Z
    .locals 0

    .line 3902
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mGenderAttributeValueSupport:Z

    return p0
.end method

.method public isHighFpsSupport()Z
    .locals 0

    .line 2815
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mHfpsModeSupport:Z

    return p0
.end method

.method public isLogicalCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 3063
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLogicalCameraSupport:Z

    return p0
.end method

.method public isLowLightScene(Landroid/hardware/camera2/CaptureResult;I)Z
    .locals 1

    .line 2463
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I

    move-result-object p0

    .line 2464
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[isLowLightScene], current brightness: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    .line 2465
    array-length p2, p0

    if-lez p2, :cond_1

    const/4 p2, 0x0

    .line 2466
    aget p0, p0, p2

    const/16 v0, 0x14

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :cond_1
    :goto_0
    return p1
.end method

.method public isMTKCaptureFlow()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isMacroTorchSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 3521
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMacroTorchSupport:Z

    return p0
.end method

.method public isMicroPanTiltSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 3964
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMicroPanTiltSupport:Z

    return p0
.end method

.method public isMultiDualCamLogicalSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 3053
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMultiDualCamLogicalSupport:Z

    return p0
.end method

.method public isMultiDualCamTeleCamSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 3058
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMultiDualCamTeleCamSupport:Z

    return p0
.end method

.method public isNeedRestrictExposureTime()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isOISSupport()Z
    .locals 0

    .line 3907
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mOISSupport:Z

    return p0
.end method

.method public isPeriscopeLensSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 4159
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mPeriscopeLensSupport:Z

    return p0
.end method

.method public isPortraitModeEnhanceSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 3692
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailablePortraitModeEnhance:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 3693
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSMVRModeSupport()Z
    .locals 0

    .line 3375
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableSMVRModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSatModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 4129
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mSatModeSupport:Z

    return p0
.end method

.method public isScreenFlashFireSupport()Z
    .locals 3

    .line 3344
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isScreenFlashFireSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFlashCustomizedAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3345
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFlashCustomizedAvailable:Z

    return p0
.end method

.method public isStreamFlip()Z
    .locals 0

    .line 4484
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mStreamFlip:Z

    return p0
.end method

.method public isSupportContinuousVideoFocus()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportHDRForSuperNight()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportHighLight()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportMicroCamera(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 2628
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMicroCameraSupport:Z

    return p0
.end method

.method public isSupportMultichannelFlow(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportSlimBodyMode(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 1945
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeySlimBodyModeSupport:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 1946
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportedAIRemosaic(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 1

    .line 2167
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableAIRemosaic:Landroid/hardware/camera2/CameraCharacteristics$Key;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2168
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public isSupportedAiShutter(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 2615
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAiShutterSupport:Z

    return p0
.end method

.method public isSupportedFastSuperNightMode(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 2256
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsFastSuperNightModeSupported:Z

    return p0
.end method

.method public isSupportedHumanDetection(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 3516
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mHumanDetectSupport:Z

    return p0
.end method

.method public isSupportedNightHawkMode(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 2620
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableNightHawk:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 2621
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedStableSuperNight(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 2251
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsStableSuperNightModeSupported:Z

    return p0
.end method

.method public isSupportedSuperDefinition(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 2634
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailable4CellInOneSize:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 2635
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 2637
    array-length p0, p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportedSuperResolution(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 2663
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyAvailableSuperresolution:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz p0, :cond_0

    .line 2664
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 2666
    array-length p0, p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isTeleCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 3048
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mTeleCameraSupport:Z

    return p0
.end method

.method public isThumbnailPostViewSupport()Ljava/lang/Boolean;
    .locals 0

    .line 2795
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mThumbnailPostViewSupport:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public isVideoCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 3282
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVideoCameraSupport:Z

    return p0
.end method

.method public isVideoPortraitSupport()Z
    .locals 0

    .line 3525
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVideoPortraitSupport:Z

    return p0
.end method

.method public isVideoSuperNightSupport()Z
    .locals 0

    .line 3605
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVideoSuperNightSupport:Z

    return p0
.end method

.method public isVideoSuperNightYUVSupport()Z
    .locals 0

    .line 3610
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVideoSuperNightYUVSupport:Z

    return p0
.end method

.method public isVideoWaterMarkSupport()Z
    .locals 0

    .line 2904
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVideoWatermarkSupport:Z

    return p0
.end method

.method public isWideCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 3043
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mWideCameraSupport:Z

    return p0
.end method

.method public isZSLSupport()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public needFastThumbSurface(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needFlipForVideoMirror()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public needThumbnailSurface(I)Z
    .locals 0

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needTriggerPreCapture(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;II)Z
    .locals 0

    .line 4077
    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->updateFlashFireState(Ljava/lang/String;I)V

    const-string p0, "on"

    .line 4078
    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    return p1

    :cond_0
    const-string p0, "auto"

    .line 4080
    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    if-ne p3, p0, :cond_1

    goto :goto_0

    :cond_1
    move p1, p2

    :goto_0
    return p1

    :cond_2
    return p2
.end method

.method public needUpdateSceneForPortrait()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public requestCancelFocus(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 4114
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x2

    .line 4115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4114
    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized set360VideoHdrMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    monitor-enter p0

    .line 1472
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKey360HDRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1475
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[set360VideoHdrMode], hdrMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1476
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKey360HDRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1477
    monitor-exit p0

    return-void

    .line 1473
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setActivityOrientation(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    return-void
.end method

.method public setAiMoonMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 1627
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAiMoonMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1628
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAiMoonMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setAiShutterMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1604
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAiShutterMode enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1606
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureRequestAisMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1607
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCaptureRequestAisMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setAnimalEyeDetection(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 3460
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyAnimalEyeDetect:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3461
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyAnimalEyeDetect:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setAntiVideoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 5

    .line 2929
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAntiVideoSupport:Z

    if-nez v0, :cond_0

    .line 2930
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "anti video is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2937
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyAntiVideoMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 2943
    :cond_2
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Platform setAntiVideoMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v1, "on"

    .line 2944
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_4

    const-string v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal anti video mode: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    move p1, v3

    goto :goto_0

    :cond_4
    move p1, v2

    .line 2955
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyAntiVideoMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v2, [I

    aput p1, v0, v3

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    return-void

    .line 2938
    :cond_5
    :goto_1
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mRequestKeyAntiVideoMode is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setAppMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3983
    iget-object v2, v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyCamMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v2

    if-eqz v2, :cond_1a

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 3987
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v4, 0xf

    const/16 v5, 0xe

    const/16 v6, 0xd

    const/16 v7, 0xc

    const/16 v8, 0xb

    const/16 v9, 0xa

    const/16 v10, 0x9

    const/16 v11, 0x8

    const/4 v12, 0x7

    const/4 v13, 0x6

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x2

    const/4 v2, 0x1

    const/16 v19, 0x0

    sparse-switch v3, :sswitch_data_0

    :goto_0
    const/16 v18, -0x1

    goto/16 :goto_2

    :sswitch_0
    const-string v3, "val_pmaster_portrait"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x18

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "val_360_video_hdr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0x17

    goto :goto_1

    :sswitch_2
    const-string v3, "val_stb_blur"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/16 v3, 0x16

    goto :goto_1

    :sswitch_3
    const-string v3, "val_super_definition"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/16 v3, 0x15

    goto :goto_1

    :sswitch_4
    const-string v3, "val_super_night"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/16 v3, 0x14

    goto :goto_1

    :sswitch_5
    const-string v3, "val_super_macro"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    const/16 v3, 0x13

    goto :goto_1

    :sswitch_6
    const-string v3, "val_video_super_night"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    const/16 v3, 0x12

    goto :goto_1

    :sswitch_7
    const-string v3, "val_pro"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_8
    const/16 v3, 0x11

    goto :goto_1

    :sswitch_8
    const-string v3, "val_pan"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_0

    :cond_9
    const/16 v3, 0x10

    :goto_1
    move/from16 v18, v3

    goto/16 :goto_2

    :sswitch_9
    const-string v3, "val_fun"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_0

    :cond_a
    move/from16 v18, v4

    goto/16 :goto_2

    :sswitch_a
    const-string v3, "val_doc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_0

    :cond_b
    move/from16 v18, v5

    goto/16 :goto_2

    :sswitch_b
    const-string v3, "val_def"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_0

    :cond_c
    move/from16 v18, v6

    goto/16 :goto_2

    :sswitch_c
    const-string v3, "val_video_super_night_4k"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto/16 :goto_0

    :cond_d
    move/from16 v18, v7

    goto/16 :goto_2

    :sswitch_d
    const-string v3, "val_beauty"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_0

    :cond_e
    move/from16 v18, v8

    goto/16 :goto_2

    :sswitch_e
    const-string v3, "val_magic_sky"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_0

    :cond_f
    move/from16 v18, v9

    goto/16 :goto_2

    :sswitch_f
    const-string v3, "val_ar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto/16 :goto_0

    :cond_10
    move/from16 v18, v10

    goto/16 :goto_2

    :sswitch_10
    const-string v3, "val_video_makeup"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_0

    :cond_11
    move/from16 v18, v11

    goto/16 :goto_2

    :sswitch_11
    const-string v3, "val_video_filter"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_0

    :cond_12
    move/from16 v18, v12

    goto :goto_2

    :sswitch_12
    const-string v3, "val_anti_video"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_0

    :cond_13
    move/from16 v18, v13

    goto :goto_2

    :sswitch_13
    const-string v3, "val_video"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto/16 :goto_0

    :cond_14
    move/from16 v18, v14

    goto :goto_2

    :sswitch_14
    const-string v3, "val_movie"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto/16 :goto_0

    :cond_15
    move/from16 v18, v15

    goto :goto_2

    :sswitch_15
    const-string v3, "val_lapse"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto/16 :goto_0

    :cond_16
    move/from16 v18, v16

    goto :goto_2

    :sswitch_16
    const-string v3, "val_sdof"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto/16 :goto_0

    :cond_17
    move/from16 v18, v17

    goto :goto_2

    :sswitch_17
    const-string v3, "val_pmaster_beauty"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto/16 :goto_0

    :cond_18
    move/from16 v18, v2

    goto :goto_2

    :sswitch_18
    const-string v3, "val_dual_video"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto/16 :goto_0

    :cond_19
    move/from16 v18, v19

    :goto_2
    packed-switch v18, :pswitch_data_0

    :pswitch_0
    move/from16 v4, v19

    goto :goto_3

    :pswitch_1
    const/16 v4, 0xbbc

    goto :goto_3

    :pswitch_2
    const/16 v4, 0xbb8

    goto :goto_3

    :pswitch_3
    move v4, v9

    goto :goto_3

    :pswitch_4
    move v4, v6

    goto :goto_3

    :pswitch_5
    move v4, v5

    goto :goto_3

    :pswitch_6
    const/16 v4, 0xbba

    goto :goto_3

    :pswitch_7
    move v4, v11

    goto :goto_3

    :pswitch_8
    move v4, v14

    goto :goto_3

    :pswitch_9
    move v4, v2

    goto :goto_3

    :pswitch_a
    move v4, v12

    goto :goto_3

    :pswitch_b
    const/16 v4, 0xbbb

    goto :goto_3

    :pswitch_c
    move/from16 v4, v17

    goto :goto_3

    :pswitch_d
    move v4, v7

    goto :goto_3

    :pswitch_e
    move v4, v15

    goto :goto_3

    :pswitch_f
    const/16 v4, 0xbbf

    goto :goto_3

    :pswitch_10
    const/16 v4, 0xbbe

    goto :goto_3

    :pswitch_11
    const/16 v4, 0xbb9

    goto :goto_3

    :pswitch_12
    move v4, v10

    goto :goto_3

    :pswitch_13
    move/from16 v4, v16

    goto :goto_3

    :pswitch_14
    move v4, v13

    goto :goto_3

    :pswitch_15
    move v4, v8

    goto :goto_3

    :pswitch_16
    const/16 v4, 0xbbd

    .line 4064
    :goto_3
    :pswitch_17
    sget-object v3, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCamMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,modeId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4065
    iget-object v0, v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyCamMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v1, v2, [I

    aput v4, v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1a
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e191d2a -> :sswitch_18
        -0x659b9899 -> :sswitch_17
        -0x553cf5ba -> :sswitch_16
        -0x52c5bd71 -> :sswitch_15
        -0x52b1336e -> :sswitch_14
        -0x52355e23 -> :sswitch_13
        -0x51d0d6c4 -> :sswitch_12
        -0x44f53be6 -> :sswitch_11
        -0x3974b655 -> :sswitch_10
        -0x311ab5f1 -> :sswitch_f
        -0x2eaafc0f -> :sswitch_e
        -0x16d0d0a6 -> :sswitch_d
        0x24aa324 -> :sswitch_c
        0xdc401e7 -> :sswitch_b
        0xdc4031a -> :sswitch_a
        0xdc40b61 -> :sswitch_9
        0xdc42e7f -> :sswitch_8
        0xdc4308f -> :sswitch_7
        0x10e08af2 -> :sswitch_6
        0x134421ea -> :sswitch_5
        0x1355ea36 -> :sswitch_4
        0x50c7d1f5 -> :sswitch_3
        0x5a08b723 -> :sswitch_2
        0x659dd902 -> :sswitch_1
        0x6f2a03c6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_15
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized setAsdMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    monitor-enter p0

    .line 1557
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAsdRequestMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1558
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAsdMode enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mAsdRequestMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAsdRequestMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1559
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAsdRequestMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1561
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAutoMacroSwitch(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 3467
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyAutoMacroSwitch:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3468
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyAutoMacroSwitch:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setAutoWaterMarkMode(Ljava/lang/String;ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6

    .line 2968
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mAutoWatermarkSupport:Z

    if-nez v0, :cond_0

    .line 2969
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "auto watermark is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2972
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyAutoWaterMarkMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 2978
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :sswitch_1
    const-string v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0

    :sswitch_2
    const-string v1, "value_edit_watermark_on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v4

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 2989
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal auto watermark mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :pswitch_0
    move v2, v4

    goto :goto_1

    .line 2983
    :pswitch_1
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isDoodle()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    move v2, v0

    goto :goto_1

    :cond_5
    move v2, v3

    .line 2992
    :goto_1
    :pswitch_2
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key:mRequestKeyAutoWaterMarkMode "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyAutoWaterMarkMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", mode:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2993
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyAutoWaterMarkMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v1, v3, [I

    aput v2, v1, v4

    invoke-virtual {p1, p3, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    .line 2995
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVideoWatermarkSupport:Z

    if-nez p1, :cond_6

    const-string p0, "video watermark is not support"

    .line 2996
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2999
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoRotationMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    .line 3003
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " key:mRequestKeyVideoRotationMode "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoRotationMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", orientation "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3004
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoRotationMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array p1, v3, [I

    aput p2, p1, v4

    invoke-virtual {p0, p3, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    return-void

    :cond_8
    :goto_2
    const-string p0, "mRequestKeyVideoRotationMode is null"

    .line 3000
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 2973
    :cond_9
    :goto_3
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mRequestKeyAutoWaterMarkMode is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x47b2839f -> :sswitch_2
        0xddf -> :sswitch_1
        0x1ad6f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAutoWaterMarkParameterList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setBgImageReaderId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 3092
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBgImageReaderId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3096
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBgImageReaderId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3097
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyBgImageReaderId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    return-void

    .line 3093
    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "setBgImageReaderId return"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setColorLevelValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 4447
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mColorLevelRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4450
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColorLevelValue value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "on"

    .line 4452
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 4453
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mColorLevelRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setContinuousCapture(Z)V
    .locals 0

    return-void
.end method

.method public setContrastParameter(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    return-void
.end method

.method public setCusIspAsd([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 1565
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCusIspAsdRequestMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1566
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mCusIspAsdRequestMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setCustomTuning(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 3596
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyCustomTuning:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3599
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setCustomTuning]  value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3600
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyCustomTuning:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized setDenoiseMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    monitor-enter p0

    .line 1572
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDenoiseMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDenoiseMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1575
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDistortionCorrection(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 2845
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyDistortionCorrection:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2846
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyDistortionCorrection:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 2848
    :cond_0
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "DistortionCorrection is not support or mRequestKeyShot2Shot is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setDistortionCorrectionPreview(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2858
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDistortionCorrectionPreview enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mRequestKeyDistortionCorrectionPreview = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyDistortionCorrectionPreview:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2860
    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyDistortionCorrectionPreview:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "on"

    .line 2862
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    .line 2870
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyDistortionCorrectionPreview:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v1, [I

    aput p1, v0, v2

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string p0, "setDistortionCorrectionPreview is not support or mRequestKeyShot2Shot is null"

    .line 2872
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setEyeDetection(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 3445
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyEyeDetection:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3448
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyEyeDetection:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setFaceAttrDetectMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    return-void
.end method

.method public setFaceBeautyFeaturesLevel([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1547
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyFeatures:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1548
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFaceBeautyFeaturesLevel, levels:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1549
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyFeatures:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 1551
    :cond_0
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "please config key : com.transsion.facebeautyfeature"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized setFaceBeautyLevel(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    .line 1537
    monitor-exit p0

    return-void

    .line 1539
    :cond_0
    :try_start_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFaceBeautyLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1540
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyLevel:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1541
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyLevel:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1543
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFaceBeautyMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    .line 1489
    :try_start_0
    iget-object v3, v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 1492
    :cond_0
    sget-object v3, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFaceBeautyMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1493
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0xa

    const/16 v6, 0x9

    const/16 v7, 0x8

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/16 v13, 0xb

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/4 v3, 0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "video_facebeauty_off"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v11

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "video_facebeauty_on"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "pre3"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "pre2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v8

    goto/16 :goto_1

    :sswitch_4
    const-string v4, "pre1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v9

    goto :goto_1

    :sswitch_5
    const-string v4, "mild"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_6
    const-string v4, "aiv2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v10

    goto :goto_1

    :sswitch_7
    const-string v4, "off"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v12

    goto :goto_1

    :sswitch_8
    const-string v4, "on"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v14

    goto :goto_1

    :sswitch_9
    const-string v4, "ai"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v15

    goto :goto_1

    :sswitch_a
    const-string v4, "custom"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    goto :goto_1

    :sswitch_b
    const-string v4, "supernight"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :sswitch_c
    const-string v4, "contrast_on"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v13

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 1529
    :pswitch_0
    iget-object v0, v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v3, v3, [I

    aput v5, v3, v15

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 1526
    :pswitch_1
    iget-object v0, v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v3, v3, [I

    aput v6, v3, v15

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_2

    .line 1523
    :pswitch_2
    iget-object v0, v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v3, v3, [I

    aput v7, v3, v15

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_2

    .line 1520
    :pswitch_3
    iget-object v0, v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v3, v3, [I

    aput v8, v3, v15

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_2

    .line 1517
    :pswitch_4
    iget-object v0, v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v3, v3, [I

    aput v9, v3, v15

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_2

    .line 1514
    :pswitch_5
    iget-object v0, v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v3, v3, [I

    aput v10, v3, v15

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_2

    .line 1511
    :pswitch_6
    iget-object v0, v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v3, v3, [I

    aput v11, v3, v15

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_2

    .line 1508
    :pswitch_7
    iget-object v0, v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v3, v3, [I

    aput v12, v3, v15

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_2

    .line 1505
    :pswitch_8
    iget-object v0, v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v3, v3, [I

    aput v15, v3, v15

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_2

    .line 1501
    :pswitch_9
    iget-object v0, v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v4, v3, [I

    aput v3, v4, v15

    invoke-virtual {v0, v2, v4}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_2

    .line 1498
    :pswitch_a
    iget-object v0, v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v3, v3, [I

    aput v13, v3, v15

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_2

    .line 1495
    :pswitch_b
    iget-object v0, v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFaceBeautyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v3, v3, [I

    aput v14, v3, v15

    invoke-virtual {v0, v2, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1532
    :goto_2
    monitor-exit p0

    return-void

    .line 1490
    :cond_2
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x7daf97c4 -> :sswitch_c
        -0x659a9683 -> :sswitch_b
        -0x5069748f -> :sswitch_a
        0xc28 -> :sswitch_9
        0xddf -> :sswitch_8
        0x1ad6f -> :sswitch_7
        0x2db0a4 -> :sswitch_6
        0x332414 -> :sswitch_5
        0x34a1ee -> :sswitch_4
        0x34a1ef -> :sswitch_3
        0x34a1f0 -> :sswitch_2
        0x342db601 -> :sswitch_1
        0x5189098d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public setFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1866
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFilterId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1867
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFilterId mRequestKeyFilterId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFilterId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1869
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFilterId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setFlashFacade(Ljava/lang/String;)V
    .locals 3

    .line 4308
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlashFacade flashFacade:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "on"

    .line 4309
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "torch"

    .line 4310
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ringscreenlight"

    .line 4311
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "screenflash"

    .line 4312
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4315
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsFlashOn:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 4313
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsFlashOn:Z

    :goto_1
    return-void
.end method

.method public setFlashStyle(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 4298
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFlashStyleRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "one_stage"

    .line 4302
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 4303
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFlashStyleRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFrontDualFlashColorTemp(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 3117
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFrontDualFlashColorTemp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 3121
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFrontDualFlashColorTemp:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3122
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFrontDualFlashColorTemp:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setFrontDualFlashStrengthMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 3128
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFrontDualFlashStrengthMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 3132
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFrontDualFlashStrengthMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3133
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyFrontDualFlashStrengthMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setFusionMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 2125
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFusionModeSupport:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "on"

    .line 2128
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 2133
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFusionKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 2130
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFusionKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setGenderAttributeValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 3933
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mGenderAttributeValueSupport:Z

    if-nez v0, :cond_0

    .line 3934
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "gender attribute value is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 3937
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyGenderAttributeValueMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 3943
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3951
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "illegal gender attribute value: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 p1, 0x2

    goto :goto_0

    :cond_3
    move p1, v1

    .line 3954
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyGenderAttributeValueMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v1, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    return-void

    .line 3938
    :cond_4
    :goto_1
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mRequestKeyGenderAttributeValueMode is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setHdMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 2089
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsHdModeSupported:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHdMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 2093
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 2095
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHdMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 2098
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHdMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_OFF:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setHighFpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 2105
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mHfpsModeSupport:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHfpsMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 2110
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHfpsMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_OFF:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "0"

    .line 2113
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 2115
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHfpsMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 2118
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHfpsMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_OFF:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 2106
    :cond_4
    :goto_1
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[setHighFpsMode] mode,return. "

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setHighLight(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    return-void
.end method

.method public setHumanDetection(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 3453
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHumanDetect:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3454
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHumanDetect:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setHumanEffectMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 3741
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHumanEffectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3742
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHumanEffectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setISOParameter(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    return-void
.end method

.method public setIszBvValueMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 4497
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIszBvValueMode value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4498
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyIszBvRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4499
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyIszBvRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setLiveResultMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized setLowLightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    monitor-enter p0

    .line 1586
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLowLightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLowLightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v3, v2, [I

    aput p1, v3, v1

    invoke-virtual {v0, p2, v3}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    .line 1589
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLowLightHDR:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1590
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLowLightHDR:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v2, v2, [I

    aput p1, v2, v1

    invoke-virtual {v0, p2, v2}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1592
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLuminanceValue(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    .line 3108
    monitor-exit p0

    return-void

    .line 3110
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyLuminanceValue:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3111
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyLuminanceValue:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3113
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMacroLampValue(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 3625
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMacroLampValue:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3629
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMacroLampValue:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    return-void

    .line 3626
    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[setMacroLampValue] mRequestKeyMacroLampValue is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setMagicSkyMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 3748
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestMagicSkyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "0"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 3749
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3752
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestMagicSkyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array p1, v2, [I

    const-string v0, "1"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, p1, v1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 3750
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestMagicSkyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array p1, v2, [I

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, p1, v1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setMagicSkyResult(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 3766
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestMagicSkyResult:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3767
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestMagicSkyResult:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setMagicSkyType(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 3759
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestMagicSkyType:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3760
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestMagicSkyType:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setManualAWBValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 2694
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mManualAWBValueKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2697
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setManualAWBValue value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mManualAWBValueKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mManualAWBValueKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2698
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mManualAWBValueKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMeteringMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 5

    .line 3657
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMeteringMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 3660
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMeteringMode, mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 3661
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "spot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :sswitch_1
    const-string v1, "average"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :sswitch_2
    const-string v1, "center"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v4

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 3666
    :pswitch_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMeteringMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array p1, v3, [B

    aput-byte v3, p1, v4

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 3669
    :pswitch_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMeteringMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array p1, v3, [B

    aput-byte v2, p1, v4

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 3663
    :pswitch_2
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMeteringMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array p1, v3, [B

    aput-byte v4, p1, v4

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_2
        -0x25a321e3 -> :sswitch_1
        0x35f902 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setMiddleNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    monitor-enter p0

    .line 1596
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMiddleNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1597
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMiddleNightMode mfnr enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1598
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMiddleNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1600
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMoonDetectionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 1620
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMoonDetectionMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1621
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mMoonDetectionMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setMultiCropRegion([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 4152
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyMultiCropRegion:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 4153
    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setNightHawkMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 1613
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mNightHawkMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1614
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mNightHawkMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    monitor-enter p0

    .line 1579
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1582
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPDAF(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 2378
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyPDAF:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2379
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyPDAF:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setPhotoHdrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6

    monitor-enter p0

    .line 1430
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHDRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1433
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setPhotoHdrMode] hdrMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1434
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xddf

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x1ad6f

    if-eq v1, v2, :cond_2

    const v2, 0x2dddaf

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "auto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v3

    goto :goto_0

    :cond_2
    const-string v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v4

    goto :goto_0

    :cond_3
    const-string v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v5

    :cond_4
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v5, :cond_6

    if-eq v0, v3, :cond_5

    goto :goto_1

    .line 1442
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHDRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v5, [I

    aput v3, v0, v4

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 1439
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHDRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v5, [I

    aput v5, v0, v4

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 1436
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHDRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v5, [I

    aput v4, v0, v4

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1447
    :goto_1
    monitor-exit p0

    return-void

    .line 1431
    :cond_8
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPipDeviceValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 4386
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyPipDeviceKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyPipProp:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    .line 4387
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4390
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPipDeviceValue value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mKeyPipDeviceKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyPipDeviceKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "_"

    .line 4391
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4392
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyPipDeviceKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v1, v3

    invoke-virtual {v0, p2, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    .line 4393
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyPipProp:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array p1, v3, [I

    aput v3, p1, v2

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized setPortraitMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    monitor-enter p0

    .line 1993
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyPortraitMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1996
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyPortraitMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1997
    monitor-exit p0

    return-void

    .line 1994
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPortraitModeEnhanceMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 3700
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyPortraitModeEnhance:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "on"

    .line 3704
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    new-array v0, v1, [I

    aput p1, v0, v2

    .line 3712
    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setRecordingOrientation(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    return-void
.end method

.method public setRemosaicMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1645
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRemosaicWithMFNRSupport:Z

    if-nez v0, :cond_1

    return-void

    .line 1648
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyRemosaicWithMFNR:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1649
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRemosaicMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRemosaicWithMFNRSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "billion"

    .line 1650
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 1653
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyRemosaicWithMFNR:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 p1, 0x1

    new-array v0, p1, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setRingFlashLight(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 4458
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRingFlashLightRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4461
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRingFlashLight value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "on"

    .line 4463
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 4464
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRingFlashLightRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSMVRMode([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 3415
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySMVRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3416
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSMVRMode, key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySMVRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", values:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3417
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySMVRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setSTBlurLightStrength(FLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    return-void
.end method

.method public setSTBlurMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 2020
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSTBlurMode,value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2021
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySTBlurMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2024
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySTBlurMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSTBlurReaRatio(FLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    return-void
.end method

.method public setSTBlurStrengths([FLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    return-void
.end method

.method public setSatPictureSize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 4176
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mSatPictureSize:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 4177
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mSatPictureSize:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setScreenFlashMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 3179
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyScreenFlashAvailableModes:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-nez v0, :cond_0

    .line 3180
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "screen flash is not support"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 3183
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenFlashMode screenFlashMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3184
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyScreenFlashMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 3189
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyScreenFlashMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v0, 0x0

    const/16 v1, 0x64

    aput v1, p1, v0

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "mRequestKeyScreenFlashMode is null"

    .line 3185
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setScreenFlashStatus(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    return-void
.end method

.method public setScreenTorchStatus(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 4343
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mScreenTorchStatusRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_4

    .line 4344
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    .line 4348
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "ring_screen_light"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "screen_flash"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 4353
    :pswitch_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mScreenTorchStatusRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SCREEN_TORCH_STATUS_ANNULAR:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 4350
    :pswitch_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mScreenTorchStatusRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SCREEN_TORCH_STATUS_OFF:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 4356
    :pswitch_2
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mScreenTorchStatusRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SCREEN_TORCH_STATUS_FLASH:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x505ceda3 -> :sswitch_2
        0x1ad6f -> :sswitch_1
        0x1f926532 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setSdofPhotoLevel(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_1

    .line 2272
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDofLevelKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2275
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSdofPhotoLevel] sdoflevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mDofLevelKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDofLevelKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2276
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDofLevelKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2277
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 2273
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public setSdofPhotoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 2070
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVsdofKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2073
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSdofPhotoMode] mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mVsdofKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVsdofKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "on"

    .line 2074
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2082
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVsdofKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 2079
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVsdofKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_OFF:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 2076
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVsdofKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->FEATURE_VALUE_ON:[I

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setSdofPreviewSize(Landroid/util/Size;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 2261
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDofPreviewSizeKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2264
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSdofPreviewSize] mDofPreviewSizeKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDofPreviewSizeKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", previewSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2265
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->PREVIEW_SIZE_KEY_VALUE:[I

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 2266
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    aput p1, v0, v1

    .line 2267
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDofPreviewSizeKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSessionCreate(Z)V
    .locals 1

    .line 1308
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mLocalSessionKeys:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    .line 1309
    invoke-virtual {v0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setSessionCreate(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setShot2ShotMode(ILjava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    .line 2833
    iget-object p2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyShot2Shot:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2834
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyShot2Shot:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 v0, 0x0

    aput p1, p2, v0

    invoke-virtual {p0, p3, p2}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 2836
    :cond_0
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "shot2shot is not support or mRequestKeyShot2Shot is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setSingleBlurLevel(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 2042
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySTBlurLevel:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2043
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSingleBlurLevel,value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2044
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySTBlurLevel:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setSuperDefinitionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1634
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperDefinition:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1635
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSuperDefinitionMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1636
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperDefinition:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setSuperFlashValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6

    .line 4276
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mSuperFlashRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "on"

    .line 4279
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 4280
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsSupperFlash:Z

    goto :goto_0

    .line 4282
    :cond_1
    iput-boolean v3, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsSupperFlash:Z

    .line 4284
    :goto_0
    sget-object v1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSuperFlashValue mIsSupperFlash\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsSupperFlash:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4286
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 4287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSuperFlashValue:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4288
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mSuperFlashRequestKey:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v2, [I

    aput p1, v0, v3

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setSuperNightFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1875
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightFilerId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1876
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSuperNightFilterId mRequestKeySuperNightFilerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightFilerId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1878
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightFilerId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setSuperNightMode(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6

    .line 2177
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsSuperNightModeSupported:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2178
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    goto :goto_0

    .line 2179
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsMegSuperNightModeSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMegSuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2180
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMegSuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 2186
    :cond_2
    sget-object v2, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setSuperNightMode] mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", algoType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", dsp key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", meg key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMegSuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", detect key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightDetectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 2190
    iget-boolean v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsStableSuperNightModeSupported:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyStableSuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2191
    iget-object v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyStableSuperNightMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    :cond_3
    const/4 v2, -0x1

    .line 2194
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "Night_Light"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    move v2, v5

    goto :goto_1

    :sswitch_1
    const-string v3, "Night"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_2
    const-string v3, "None"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_3
    const-string v3, "Stable"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    move v2, v4

    :cond_4
    :goto_1
    if-eqz v2, :cond_8

    if-eq v2, v5, :cond_7

    if-eq v2, v4, :cond_5

    .line 2209
    sget-object p2, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SUPER_NIGHT_MODE_VALUE_OFF:[I

    invoke-virtual {v0, p3, p2}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    if-eqz v1, :cond_9

    .line 2211
    invoke-virtual {v1, p3, p2}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    .line 2203
    sget-object p2, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SUPER_NIGHT_MODE_VALUE_ON:[I

    invoke-virtual {v1, p3, p2}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    .line 2205
    :cond_6
    sget-object p2, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SUPER_NIGHT_MODE_VALUE_STABLE_ON:[I

    invoke-virtual {v0, p3, p2}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_2

    .line 2199
    :cond_7
    sget-object p2, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SUPER_NIGHT_MODE_VALUE_ON_LIGHT:[I

    invoke-virtual {v0, p3, p2}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_2

    .line 2196
    :cond_8
    sget-object p2, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SUPER_NIGHT_MODE_VALUE_ON:[I

    invoke-virtual {v0, p3, p2}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_9
    :goto_2
    const-string p2, "dsp_super_night"

    .line 2216
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b

    const-string p2, "meg_super_night"

    .line 2217
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_3

    :cond_a
    const-string p2, "off"

    .line 2221
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 2222
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsSuperNightDetectModeSupported:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightDetectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 2223
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightDetectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SUPER_NIGHT_MODE_VALUE_OFF:[I

    invoke-virtual {p0, p3, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_4

    .line 2218
    :cond_b
    :goto_3
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mIsSuperNightDetectModeSupported:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightDetectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 2219
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperNightDetectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->SUPER_NIGHT_MODE_VALUE_ON:[I

    invoke-virtual {p0, p3, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_c
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6bcd88a5 -> :sswitch_3
        0x252358 -> :sswitch_2
        0x47c73f8 -> :sswitch_1
        0x9a041ef -> :sswitch_0
    .end sparse-switch
.end method

.method public setSuperResolutionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 2674
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperrsolutionMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2675
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySuperrsolutionMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setThumbnailPostViewSize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    monitor-enter p0

    .line 2825
    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mThumbnailPostViewSupport:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyPostViewRequestSizeMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    .line 2826
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2827
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mKeyPostViewRequestSizeMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2829
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTranFaceDetectMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 1334
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyTranFaceDetectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1337
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyTranFaceDetectMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTranssionCameraMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 3365
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyTranssionCameraMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3369
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setTranssionCameraMode] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3370
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyTranssionCameraMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    return-void

    .line 3366
    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "[setTranssionCameraMode] is null or not exist."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setTranssionHDR(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    monitor-enter p0

    .line 1481
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mTranssionHDR:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1482
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTranssionHDR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1483
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mTranssionHDR:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1485
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTranssionMakeUpIntensity([FLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1969
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMakeUpIntensity:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1970
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTranssionMakeUpIntensity, intensitys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1971
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMakeUpIntensity:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setTranssionMakeUpMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1961
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMakeUpMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1962
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTranssionMakeUpMode mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1963
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMakeUpMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setTranssionMakeUpVideoIntensity([FLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1985
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMakeUpVideoIntensity:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1986
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTranssionMakeUpVideoIntensity, intensitys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1987
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMakeUpVideoIntensity:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setTranssionMakeUpVideoMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1977
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMakeUpVideoMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1978
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTranssionMakeUpVideoMode mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1979
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyMakeUpVideoMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setTranssionSlimBodyLevels([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 4

    .line 1934
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySlimBodyLevels:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1936
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTranssionSlimBodyLevels : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [[I

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1938
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySlimBodyLevels:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setTranssionSlimBodyMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1953
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySlimBodyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1954
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTranssionSlimBodyMode mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1955
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeySlimBodyMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setTuningChn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    return-void
.end method

.method public setVideoEffectId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1902
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoEffectId mRequestKeyVideoEffectId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoEffectId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1905
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoEffectId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1906
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoEffectId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setVideoFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1884
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoFilterId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1885
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoFilterId mRequestKeyVideoFilterId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoFilterId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1887
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoFilterId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setVideoFilterSkinType(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1893
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoFilterSkinType:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1894
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoFilterSkinType mRequestKeyVideoFilterSkinType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoFilterSkinType:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1896
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoFilterSkinType:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setVideoFrameId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 1912
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoFrameId mRequestKeyVideoFrameId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoFrameId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1915
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoFrameId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1916
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoFrameId:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setVideoHdrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6

    monitor-enter p0

    .line 1451
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHDRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1454
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setVideoHdrMode] hdrMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 1455
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xddf

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_3

    const v2, 0x1ad6f

    if-eq v1, v2, :cond_2

    const v2, 0x2dddaf

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "auto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v3

    goto :goto_0

    :cond_2
    const-string v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v4

    goto :goto_0

    :cond_3
    const-string v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move v0, v5

    :cond_4
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v5, :cond_6

    if-eq v0, v3, :cond_5

    goto :goto_1

    .line 1463
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHDRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v5, [I

    const/4 v1, 0x4

    aput v1, v0, v4

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 1460
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHDRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v5, [I

    const/4 v1, 0x3

    aput v1, v0, v4

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_1

    .line 1457
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyHDRMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v5, [I

    aput v4, v0, v4

    invoke-virtual {p1, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1468
    :goto_1
    monitor-exit p0

    return-void

    .line 1452
    :cond_8
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setVideoPortraitLevel(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 3558
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoPortraitLevel:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3561
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setVideoPortraitLevel]  portraitLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3562
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoPortraitLevel:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVideoPortraitMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 3530
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoPortraitmode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3533
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setVideoPortraitMode]  enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3534
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoPortraitmode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVideoSnapshotCustomTuning(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 4420
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVideoSnapshotTuning:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_2

    .line 4421
    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4424
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4425
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVideoSnapshotTuning:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/16 p1, 0x20

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 4427
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mVideoSnapshotTuning:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setVideoSuperNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 3567
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoSuperNightmode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3570
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setVideoSuperNightMode]  enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3572
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoSuperNightmode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVideoSuperNightResolution(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 3586
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoSuperNightResolution:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3589
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setVideoSuperNightResolution]  enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3591
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoSuperNightResolution:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVideoSuperNightScene(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 3577
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoSuperNightScene:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3580
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setVideoSuperNightScene]  enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3581
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoSuperNightScene:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVideoSuperNightYUVMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 3615
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoSuperNightYUVMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3618
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mRequestKeyVideoSuperNightYUVMode]  enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3619
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isTranVideoYUVSuperNightEnable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3620
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyVideoSuperNightYUVMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setYuvCaptureFlipMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 3816
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyYuvCaptureFlipMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3817
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setYuvCaptureFlipMode] value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 3818
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyYuvCaptureFlipMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setZSLMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 3014
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyZSL:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3017
    :cond_0
    sget-object v0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setSupportZSLMode] mRequestKeyZSL="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyZSL:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 3019
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyZSL:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->ZSL_MODE:[B

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    goto :goto_0

    .line 3021
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyZSL:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->NON_ZSL_MODE:[B

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public shouldLimitZoomInSlowMotion()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public superFlashSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 4266
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mSuperFlashSupport:Z

    return p0
.end method

.method public supportZoomRatioKey()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public triggerFrontFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 4218
    sget-object p1, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerFrontFlash mFlashWillFire\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFlashWillFire:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 4219
    iget-boolean p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFlashWillFire:Z

    iput-boolean p1, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mFlashFireForThisCapture:Z

    return-void
.end method

.method public updateControlSceneMode(I)I
    .locals 0

    return p1
.end method

.method public updateNight3dnrAlgo(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    return-void
.end method

.method public updateNightMorHdsScene(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    return-void
.end method

.method public updateOISMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 3912
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyOISMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3917
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3925
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "illegal ois mode value: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    move p1, v1

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    .line 3928
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mRequestKeyOISMode:Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;

    new-array v0, v1, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p2, v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureRequestKey;->setValue(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/lang/Object;)V

    return-void

    .line 3913
    :cond_3
    :goto_1
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mRequestKeyOISMode is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateOnePeriodFlashTime(Landroid/hardware/camera2/CaptureResult;)[I
    .locals 1

    .line 4489
    iget-object v0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyFlashTime:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->isExist()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4492
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mResultKeyFlashTime:Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/platformcamera/CaptureResultKey;->getValue(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_1

    .line 4493
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDefaultFlashTime:[I

    :cond_1
    return-object p0

    .line 4490
    :cond_2
    :goto_0
    sget-object p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mDefaultFlashTime:[I

    return-object p0
.end method

.method public useBitmapWaterMark()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public usePreAECaptureFlow(Landroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 0

    .line 4183
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/platformcamera/PlatformCamera2Impl;->mUsePreAeCaptureFlow:Z

    return p0
.end method
