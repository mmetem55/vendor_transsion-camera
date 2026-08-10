.class public interface abstract Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;
.super Ljava/lang/Object;
.source "IPlatformCamera2.java"


# virtual methods
.method public abstract aeStateFlashRequired(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;I)Z
.end method

.method public abstract afSearchStateAvailable()Z
.end method

.method public abstract checkAfSearchStateResult(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;
.end method

.method public abstract checkAnimalEyeDetectionResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkAsdResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkAutoMacroSwitchResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkBrightnessResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkDualLensResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkEyeDetectionResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkHumanDetectResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkInSensorZoomMode(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkMagicSkyDetection(Landroid/hardware/camera2/CaptureResult;)Z
.end method

.method public abstract checkNightHawkResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkPreAECaptureOnStarted(Landroid/hardware/camera2/CaptureResult;)Z
.end method

.method public abstract checkScreenFlashFireResult(Landroid/hardware/camera2/CaptureResult;)Z
.end method

.method public abstract checkShot2ShotResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkStreamIdResult(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract checkTranssionFaceInfo(Landroid/hardware/camera2/CaptureResult;)[Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;
.end method

.method public abstract colorLevelSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract enableBWConvert(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableBWPortrait(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableBgServiceMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableContinuousShot(Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableFace3A(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableFakeDualLensMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableMirror(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableModeUltrazoom(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableProfessionalMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableQuickPreview(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableRTDofMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableStreamFlip(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableTranssionPlugin(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableVideoInterpolation(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract enableVideoMirror(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract flashStyleSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract frontDualFlashSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract get4cellInOneSize(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getAEState(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;
.end method

.method public abstract getAntiFaceInfoRect(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract getAntiVideoMode(Landroid/hardware/camera2/CaptureResult;)Ljava/lang/Integer;
.end method

.method public abstract getBaseZoomRatio()F
.end method

.method public abstract getCCTValue(Landroid/hardware/camera2/CaptureResult;)I
.end method

.method public abstract getCaptureThumbnailSource(ZJZ)I
.end method

.method public abstract getCreateSessionThumbnailSource()I
.end method

.method public abstract getFlashWillFire()Z
.end method

.method public abstract getFovCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;
.end method

.method public abstract getFovWideCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;
.end method

.method public abstract getHighFpsResolutions(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getLogicId(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/lang/String;
.end method

.method public abstract getMultiCameraZoomSteps(Landroid/hardware/camera2/CameraCharacteristics;)[F
.end method

.method public abstract getSlimBodyFeatureSize(Landroid/hardware/camera2/CameraCharacteristics;)I
.end method

.method public abstract getStereoSensorCropRegion(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/graphics/Rect;
.end method

.method public abstract getSuitableVideoFrameRange(Ljava/util/List;I)Landroid/util/Range;
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
.end method

.method public abstract getSuperDefinitionType(Landroid/hardware/camera2/CameraCharacteristics;)I
.end method

.method public abstract getSupportLogicalCameraMode()[I
.end method

.method public abstract getSupportSMVRModeMetaData(Landroid/hardware/camera2/CameraCharacteristics;)[Lcom/transsion/camera/utils/SettingInfo$SMVRMetaData;
.end method

.method public abstract getSupportSTBlurModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportSingleBlurLevels(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedAsdMode(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedAutoMacroSwitch(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedContrastValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedDistortionCorrection(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedDolHdrModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedDualCamCalibSize(Landroid/hardware/camera2/CameraCharacteristics;)Landroid/util/Size;
.end method

.method public abstract getSupportedDualCamPictureSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedEyeDetection(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedFaceBeautyFeatures(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedFaceBeautyFeaturesLevelScope(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedFaceBeautyLevels(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedFaceBeautyModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedFilterIds(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedHDSize(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedHdModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedHumanEffectModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedISOValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedLuminanceValues(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedMagicSkyType(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedManualWBRangeValue(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedMeteringModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedPhotoHdrModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedPictureSizes(Ljava/util/List;Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedScreenFlashModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedScreenTorchStatus(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedShot2Shot(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedSuperNightModes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getSupportedTranFaceDetectMode(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedTranssionHDR(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedVideoEffectIds(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedVideoFilterIds(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedVideoFrameIds(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedVideoHdrModes(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedVideoPortraitLevel(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedVsdofLevel(Landroid/hardware/camera2/CameraCharacteristics;)[Ljava/lang/String;
.end method

.method public abstract getSupportedYuvCaptureFlipMode(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;
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
.end method

.method public abstract getTintValue(Landroid/hardware/camera2/CaptureResult;)I
.end method

.method public abstract initFirst(Landroid/hardware/camera2/CameraCharacteristics;)V
.end method

.method public abstract initSecond(Landroid/hardware/camera2/CameraCharacteristics;)V
.end method

.method public abstract is4cell(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isAENeedOff()Z
.end method

.method public abstract isAnimalEyeDetectSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isAntiVideoSupport()Z
.end method

.method public abstract isAutoWaterMarkSupport()Z
.end method

.method public abstract isBGServiceModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isBWPortraitSupport()Z
.end method

.method public abstract isCameraFoldedFlagSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isDspSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isFakeRAW_RAWCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isFakeRAW_YUVCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isFastThumbSupport()Ljava/lang/Boolean;
.end method

.method public abstract isFusionSupport()Z
.end method

.method public abstract isGenderAttributeValueSupport()Z
.end method

.method public abstract isHighFpsSupport()Z
.end method

.method public abstract isLogicalCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isLowLightScene(Landroid/hardware/camera2/CaptureResult;I)Z
.end method

.method public abstract isMTKCaptureFlow()Z
.end method

.method public abstract isMacroTorchSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isMicroPanTiltSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isMultiDualCamLogicalSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isMultiDualCamTeleCamSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isNeedRestrictExposureTime()Z
.end method

.method public abstract isOISSupport()Z
.end method

.method public abstract isPeriscopeLensSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isPortraitModeEnhanceSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSMVRModeSupport()Z
.end method

.method public abstract isSatModeSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isScreenFlashFireSupport()Z
.end method

.method public abstract isStreamFlip()Z
.end method

.method public abstract isSupportContinuousVideoFocus()Z
.end method

.method public abstract isSupportHDRForSuperNight()Z
.end method

.method public abstract isSupportHighLight()Z
.end method

.method public abstract isSupportMicroCamera(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSupportMultichannelFlow(Ljava/lang/String;)Z
.end method

.method public abstract isSupportSlimBodyMode(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSupportedAIRemosaic(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSupportedAiShutter(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSupportedFastSuperNightMode(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSupportedHumanDetection(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSupportedNightHawkMode(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSupportedStableSuperNight(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSupportedSuperDefinition(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isSupportedSuperResolution(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isTeleCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isThumbnailPostViewSupport()Ljava/lang/Boolean;
.end method

.method public abstract isVideoCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isVideoPortraitSupport()Z
.end method

.method public abstract isVideoSuperNightSupport()Z
.end method

.method public abstract isVideoSuperNightYUVSupport()Z
.end method

.method public abstract isVideoWaterMarkSupport()Z
.end method

.method public abstract isWideCameraSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract isZSLSupport()Z
.end method

.method public abstract needFastThumbSurface(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract needFlipForVideoMirror()Z
.end method

.method public abstract needThumbnailSurface(I)Z
.end method

.method public abstract needTriggerPreCapture(Landroid/hardware/camera2/CaptureResult;Ljava/lang/String;II)Z
.end method

.method public abstract needUpdateSceneForPortrait()Z
.end method

.method public abstract release()V
.end method

.method public abstract requestCancelFocus(Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract set360VideoHdrMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setActivityOrientation(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAiMoonMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAiShutterMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAnimalEyeDetection(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAntiVideoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAppMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAsdMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAutoMacroSwitch(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAutoWaterMarkMode(Ljava/lang/String;ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setAutoWaterMarkParameterList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setBgImageReaderId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setColorLevelValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setContinuousCapture(Z)V
.end method

.method public abstract setContrastParameter(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setCusIspAsd([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setCustomTuning(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setDenoiseMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setDistortionCorrection(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setDistortionCorrectionPreview(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setEyeDetection(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setFaceAttrDetectMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setFaceBeautyFeaturesLevel([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setFaceBeautyLevel(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setFaceBeautyMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setFlashFacade(Ljava/lang/String;)V
.end method

.method public abstract setFlashStyle(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setFrontDualFlashColorTemp(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setFrontDualFlashStrengthMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setFusionMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setGenderAttributeValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setHdMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setHighFpsMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setHighLight(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setHumanDetection(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setHumanEffectMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setISOParameter(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setIszBvValueMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setLiveResultMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setLowLightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setLuminanceValue(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setMacroLampValue(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setMagicSkyMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setMagicSkyResult(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setMagicSkyType(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setManualAWBValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setMeteringMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setMiddleNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setMoonDetectionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setMultiCropRegion([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setNightHawkMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setPDAF(Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setPhotoHdrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setPipDeviceValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setPortraitMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setPortraitModeEnhanceMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setRecordingOrientation(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setRemosaicMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setRingFlashLight(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSMVRMode([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSTBlurLightStrength(FLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSTBlurMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSTBlurReaRatio(FLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSTBlurStrengths([FLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSatPictureSize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setScreenFlashMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setScreenFlashStatus(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setScreenTorchStatus(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSdofPhotoLevel(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSdofPhotoMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSdofPreviewSize(Landroid/util/Size;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSessionCreate(Z)V
.end method

.method public abstract setShot2ShotMode(ILjava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSingleBlurLevel(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSuperDefinitionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSuperFlashValue(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSuperNightFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSuperNightMode(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setSuperResolutionMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setThumbnailPostViewSize([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranFaceDetectMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranssionCameraMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranssionHDR(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranssionMakeUpIntensity([FLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranssionMakeUpMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranssionMakeUpVideoIntensity([FLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranssionMakeUpVideoMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranssionSlimBodyLevels([ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTranssionSlimBodyMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setTuningChn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoEffectId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoFilterId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoFilterSkinType(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoFrameId(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoHdrMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoPortraitLevel(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoPortraitMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoSnapshotCustomTuning(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoSuperNightMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoSuperNightResolution(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoSuperNightScene(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setVideoSuperNightYUVMode(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setYuvCaptureFlipMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract setZSLMode(ZLandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract shouldLimitZoomInSlowMotion()Z
.end method

.method public abstract superFlashSupport(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method

.method public abstract supportZoomRatioKey()Z
.end method

.method public abstract triggerFrontFlash(Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract updateControlSceneMode(I)I
.end method

.method public abstract updateNight3dnrAlgo(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract updateNightMorHdsScene(ILandroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract updateOISMode(Ljava/lang/String;Landroid/hardware/camera2/CaptureRequest$Builder;)V
.end method

.method public abstract updateOnePeriodFlashTime(Landroid/hardware/camera2/CaptureResult;)[I
.end method

.method public abstract useBitmapWaterMark()Z
.end method

.method public abstract usePreAECaptureFlow(Landroid/hardware/camera2/CameraCharacteristics;)Z
.end method
