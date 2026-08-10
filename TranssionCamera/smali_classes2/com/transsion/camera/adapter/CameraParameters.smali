.class public abstract Lcom/transsion/camera/adapter/CameraParameters;
.super Ljava/lang/Object;
.source "CameraParameters.java"


# static fields
.field static MAX_IMAGE_NUMBER:I

.field static MAX_THUMBNAIL_NUMBER:I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private m360VideoHDRMode:I

.field private mAWBLockStatus:Z

.field private mAWBMode:Ljava/lang/String;

.field private mActivityOrientation:I

.field private mAeLock:Z

.field private mAiMoonMode:I

.field private mAisMode:I

.field private mAlgorithmMigrate:Z

.field private mAnimalEyeDetection:Ljava/lang/String;

.field private mAntiVideo:Ljava/lang/String;

.field private mAppModeId:Ljava/lang/String;

.field private mAsdIsp:[I

.field private mAsdMode:I

.field private mAutoMacroSwitch:Ljava/lang/String;

.field private mAutoWatermarkMode:Ljava/lang/String;

.field private mBGImageReaderId:I

.field private mBGServiceEnable:Z

.field private mBWConvertEnable:Z

.field private mBWPortraitEnable:Z

.field private mColorLevel:Ljava/lang/String;

.field private mContrastValue:I

.field private mCustomTuning:I

.field private mDataFlowType:I

.field private mDenoiseMode:I

.field private mDistortionCorrectionMode:I

.field private mDistortionCorrectionPreviewEnable:Ljava/lang/String;

.field private mEditWatermarkMode:Ljava/lang/String;

.field private mEditWatermarkSupport:Z

.field private mExposureCompensation:I

.field private mExposureTime:J

.field private mEyeDetection:Ljava/lang/String;

.field private mFaceAttrMode:I

.field private mFaceBeautyFeaturesLevel:[I

.field private mFaceBeautyLevel:Ljava/lang/String;

.field private mFaceBeautyMode:Ljava/lang/String;

.field private mFaceDetectionEnable:Z

.field private mFakeDualLensMode:I

.field private mFilterId:I

.field private mFlashFacade:Ljava/lang/String;

.field private mFlashMode:Ljava/lang/String;

.field private mFlashStyle:Ljava/lang/String;

.field private mFocusAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusDistance:F

.field private mFocusMode:Ljava/lang/String;

.field private mFovWideCrop:Z

.field private mFrontDualFlashColorTemp:I

.field private mFrontDualFlashStrengthMode:I

.field private mFusionMode:Ljava/lang/String;

.field private mGenderAttributeValue:Ljava/lang/String;

.field private mHdMode:Ljava/lang/String;

.field private mHighFpsMode:Ljava/lang/String;

.field private mHighLightMode:I

.field private mHumanDetection:I

.field private mHumanEffectMode:Ljava/lang/String;

.field private mISOValue:I

.field private mIszBvValue:I

.field private mJpegOrientation:I

.field private mJpegQuality:I

.field private mLimitFpsRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLiveResultMode:I

.field private mLocation:Landroid/location/Location;

.field private mLowLightMode:I

.field private mLuminanceValue:I

.field private mMacroLampValue:I

.field private mMagicSkyMode:Ljava/lang/String;

.field private mMagicSkyResult:I

.field private mMagicSkyType:Ljava/lang/String;

.field private mMakeUpIntensitys:[F

.field private mMakeUpMode:I

.field private mMakeUpVideoIntensitys:[F

.field private mMakeUpVideoMode:I

.field private mManualAWBValue:Ljava/lang/String;

.field private mMeteringAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteringMode:Ljava/lang/String;

.field private mMiddleNightMode:I

.field private mMirrorEnable:Z

.field private mModeUltrazoomEnable:Z

.field private mMoonDetectionMode:I

.field private mMultiFaceBeautyMode:Ljava/lang/String;

.field private mNeedFocusModeAuto:Z

.field private mNeedLockAe:Z

.field private mNight3dnrAlgo:I

.field private mNightHawkMode:I

.field private mNightMode:I

.field private mNightMorHdsScene:I

.field private mOverrideSensorRect:Landroid/graphics/Rect;

.field private mPhotoHDRMode:Ljava/lang/String;

.field private mPhotoNightTranYUVMode:I

.field private mPictureSize:Landroid/util/Size;

.field private mPipDeviceValue:Ljava/lang/String;

.field private mPortraitMode:I

.field private mPortraitModeEnhanceMode:Ljava/lang/String;

.field private mPostViewSize:Landroid/util/Size;

.field private mPreviewFPSRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewSize:Landroid/util/Size;

.field private mProfessionalModeEnable:Z

.field private mQuickPreviewEnable:Z

.field private mRTDofEnable:Z

.field private mRecordingHint:Z

.field private mRemosaicMode:Ljava/lang/String;

.field private mRingFlashLightMode:I

.field private mRingScreenLight:Ljava/lang/String;

.field private mSMVRRequestParams:[I

.field private mSTBlurLevel:I

.field private mSTBlurLightStrength:F

.field private mSTBlurMode:I

.field private mSTBlurReaRatio:F

.field private mSTBlurStrengths:[F

.field private mSatPictureSize:Landroid/util/Size;

.field private mSceneMode:Ljava/lang/String;

.field private mScreenFlashMode:Ljava/lang/String;

.field private mScreenFlashStatus:Ljava/lang/String;

.field private mScreenTorchStatus:Ljava/lang/String;

.field private mShot2ShotMode:I

.field private mSlimBodyLevels:[I

.field private mSlimBodyMode:I

.field private mStreamFlip:Z

.field private mSuperDefinitionMode:I

.field private mSuperFlash:Ljava/lang/String;

.field private mSuperNightAlgoType:Ljava/lang/String;

.field private mSuperNightFilterId:I

.field private mSuperNightMode:Ljava/lang/String;

.field private mSuperResolutionMode:I

.field mThumbnailFormat:I

.field private mThumbnailSize:Landroid/util/Size;

.field private mTranFaceDetectMode:I

.field private mTranssionCameraMode:I

.field private mTranssionHDR:I

.field private mTranssionPluginEnable:I

.field private mVideoEffectId:I

.field private mVideoFilterId:I

.field private mVideoFilterSkinType:I

.field private mVideoFrameId:I

.field private mVideoHDRMode:Ljava/lang/String;

.field private mVideoInterpolationEnable:I

.field private mVideoNightTranYUVMode:I

.field private mVideoOrientation:I

.field private mVideoPortraitLevel:I

.field private mVideoPortraitMode:I

.field private mVideoSize:Landroid/util/Size;

.field private mVideoSnapshotTuning:Ljava/lang/String;

.field private mVideoSuperNightAlgoScene:I

.field private mVideoSuperNightMode:I

.field private mVideoSuperNightResolution:I

.field private mVideoSuperNightYUVMode:I

.field private mVsdofLevel:Ljava/lang/String;

.field private mWaterMarkParameterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;",
            ">;"
        }
    .end annotation
.end field

.field private mYuvCaptureFlipMode:Ljava/lang/String;

.field private mZSLEnable:Z

.field private mZoomRatio:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "CameraParameters"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x1

    .line 39
    sput v0, Lcom/transsion/camera/adapter/CameraParameters;->MAX_IMAGE_NUMBER:I

    const/4 v0, 0x5

    .line 41
    sput v0, Lcom/transsion/camera/adapter/CameraParameters;->MAX_THUMBNAIL_NUMBER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDataFlowType:I

    const/16 v1, 0x23

    .line 40
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mThumbnailFormat:I

    const/4 v1, 0x0

    .line 61
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRecordingHint:Z

    .line 64
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mOverrideSensorRect:Landroid/graphics/Rect;

    .line 65
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNeedLockAe:Z

    .line 66
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNeedFocusModeAuto:Z

    .line 68
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceDetectionEnable:Z

    const/4 v2, -0x1

    .line 71
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFrontDualFlashColorTemp:I

    .line 72
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFrontDualFlashStrengthMode:I

    const-string v3, "4"

    .line 75
    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVsdofLevel:Ljava/lang/String;

    const/16 v3, 0x64

    .line 100
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZoomRatio:I

    .line 101
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFovWideCrop:Z

    .line 102
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMirrorEnable:Z

    .line 103
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWPortraitEnable:Z

    .line 104
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWConvertEnable:Z

    .line 105
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mQuickPreviewEnable:Z

    .line 106
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProfessionalModeEnable:Z

    .line 107
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mModeUltrazoomEnable:Z

    .line 108
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionPluginEnable:I

    .line 109
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoInterpolationEnable:I

    .line 114
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mWaterMarkParameterList:Ljava/util/List;

    .line 118
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringAreas:Ljava/util/List;

    .line 119
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusAreas:Ljava/util/List;

    .line 122
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mISOValue:I

    const-wide/16 v2, -0x1

    .line 123
    iput-wide v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureTime:J

    const/4 v2, 0x0

    .line 124
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusDistance:F

    const-string v2, "auto"

    .line 125
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringMode:Ljava/lang/String;

    .line 127
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mJpegQuality:I

    .line 130
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZSLEnable:Z

    .line 131
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPortraitMode:I

    const-string v2, "None"

    .line 136
    iput-object v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoType:Ljava/lang/String;

    .line 137
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRTDofEnable:Z

    .line 141
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mShot2ShotMode:I

    .line 142
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDistortionCorrectionMode:I

    .line 146
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAWBLockStatus:Z

    .line 156
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurMode:I

    .line 157
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurLevel:I

    .line 162
    iput-boolean v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGServiceEnable:Z

    .line 163
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGImageReaderId:I

    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLocation:Landroid/location/Location;

    .line 169
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionCameraMode:I

    .line 171
    iput-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSMVRRequestParams:[I

    .line 191
    iput v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighLightMode:I

    return-void
.end method


# virtual methods
.method public algorithmMigrate()Z
    .locals 0

    .line 586
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAlgorithmMigrate:Z

    return p0
.end method

.method public clearAll()V
    .locals 7

    const/4 v0, 0x1

    .line 221
    iput v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDataFlowType:I

    const/4 v1, 0x0

    .line 222
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodyLevels:[I

    const/4 v2, 0x0

    .line 223
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodyMode:I

    .line 224
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpMode:I

    .line 225
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpIntensitys:[F

    .line 226
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpVideoMode:I

    .line 227
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpVideoIntensitys:[F

    .line 228
    sput v0, Lcom/transsion/camera/adapter/CameraParameters;->MAX_IMAGE_NUMBER:I

    .line 229
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewSize:Landroid/util/Size;

    .line 230
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPictureSize:Landroid/util/Size;

    .line 231
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostViewSize:Landroid/util/Size;

    .line 232
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mThumbnailSize:Landroid/util/Size;

    .line 233
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSize:Landroid/util/Size;

    .line 234
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashMode:Ljava/lang/String;

    .line 235
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMagicSkyMode:Ljava/lang/String;

    .line 236
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMagicSkyType:Ljava/lang/String;

    .line 237
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusMode:Ljava/lang/String;

    .line 238
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPhotoHDRMode:Ljava/lang/String;

    .line 239
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoHDRMode:Ljava/lang/String;

    .line 240
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->m360VideoHDRMode:I

    .line 241
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyMode:Ljava/lang/String;

    .line 242
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMultiFaceBeautyMode:Ljava/lang/String;

    .line 243
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyLevel:Ljava/lang/String;

    .line 244
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyFeaturesLevel:[I

    .line 245
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLuminanceValue:I

    const-string v3, "4"

    .line 246
    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVsdofLevel:Ljava/lang/String;

    .line 247
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdMode:I

    .line 248
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionHDR:I

    .line 249
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDenoiseMode:I

    .line 250
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightMode:I

    .line 251
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLowLightMode:I

    .line 252
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMiddleNightMode:I

    .line 253
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNight3dnrAlgo:I

    .line 254
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightMorHdsScene:I

    const/16 v3, 0x64

    .line 255
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZoomRatio:I

    .line 256
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMirrorEnable:Z

    .line 257
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWPortraitEnable:Z

    .line 258
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWConvertEnable:Z

    .line 259
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringAreas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 260
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusAreas:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 261
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mJpegQuality:I

    .line 262
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mJpegOrientation:I

    .line 263
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZSLEnable:Z

    .line 264
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureCompensation:I

    .line 265
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAeLock:Z

    .line 266
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewFPSRange:Landroid/util/Range;

    .line 267
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLimitFpsRange:Landroid/util/Range;

    .line 268
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSceneMode:Ljava/lang/String;

    .line 269
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mShot2ShotMode:I

    .line 270
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoWatermarkMode:Ljava/lang/String;

    .line 271
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEditWatermarkMode:Ljava/lang/String;

    .line 272
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEditWatermarkSupport:Z

    .line 273
    iget-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mWaterMarkParameterList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 274
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAntiVideo:Ljava/lang/String;

    .line 275
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenFlashMode:Ljava/lang/String;

    .line 276
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mYuvCaptureFlipMode:Ljava/lang/String;

    .line 277
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionPluginEnable:I

    .line 278
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRecordingHint:Z

    .line 279
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFilterId:I

    .line 280
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightFilterId:I

    .line 281
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoFilterSkinType:I

    .line 282
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoFilterId:I

    .line 283
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoEffectId:I

    .line 284
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoFrameId:I

    .line 285
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mOverrideSensorRect:Landroid/graphics/Rect;

    .line 286
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPortraitMode:I

    .line 287
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHdMode:Ljava/lang/String;

    .line 288
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighFpsMode:Ljava/lang/String;

    .line 289
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFusionMode:Ljava/lang/String;

    .line 290
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightMode:Ljava/lang/String;

    const-string v3, "None"

    .line 291
    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoType:Ljava/lang/String;

    .line 292
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurMode:I

    .line 293
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurLevel:I

    .line 294
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurStrengths:[F

    const/4 v3, 0x0

    .line 295
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurLightStrength:F

    .line 296
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurReaRatio:F

    .line 297
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGServiceEnable:Z

    .line 298
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGImageReaderId:I

    .line 299
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFakeDualLensMode:I

    .line 300
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLocation:Landroid/location/Location;

    .line 301
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDistortionCorrectionMode:I

    .line 302
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperDefinitionMode:I

    .line 303
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperResolutionMode:I

    .line 304
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRemosaicMode:Ljava/lang/String;

    .line 305
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightHawkMode:I

    .line 306
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMoonDetectionMode:I

    .line 307
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAiMoonMode:I

    .line 308
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoInterpolationEnable:I

    .line 309
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEyeDetection:Ljava/lang/String;

    .line 310
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAnimalEyeDetection:Ljava/lang/String;

    .line 311
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoMacroSwitch:Ljava/lang/String;

    .line 312
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHumanDetection:I

    .line 313
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranFaceDetectMode:I

    .line 314
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionCameraMode:I

    .line 315
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mQuickPreviewEnable:Z

    .line 316
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProfessionalModeEnable:Z

    .line 317
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mModeUltrazoomEnable:Z

    .line 318
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSMVRRequestParams:[I

    .line 319
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPortraitMode:I

    .line 320
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPortraitLevel:I

    .line 321
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAlgorithmMigrate:Z

    .line 322
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMacroLampValue:I

    const/4 v4, -0x1

    .line 323
    iput v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mISOValue:I

    const-wide/16 v5, -0x1

    .line 324
    iput-wide v5, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureTime:J

    .line 325
    iput v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusDistance:F

    const-string v3, "auto"

    .line 326
    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringMode:Ljava/lang/String;

    .line 327
    iput-object v3, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAWBMode:Ljava/lang/String;

    .line 328
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPortraitModeEnhanceMode:Ljava/lang/String;

    .line 329
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGenderAttributeValue:Ljava/lang/String;

    .line 330
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdIsp:[I

    .line 331
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHumanEffectMode:Ljava/lang/String;

    .line 332
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNeedLockAe:Z

    .line 333
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNeedFocusModeAuto:Z

    .line 334
    iput-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceDetectionEnable:Z

    .line 335
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSatPictureSize:Landroid/util/Size;

    .line 336
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighLightMode:I

    .line 337
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAppModeId:Ljava/lang/String;

    .line 338
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashFacade:Ljava/lang/String;

    .line 339
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperFlash:Ljava/lang/String;

    .line 340
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashStyle:Ljava/lang/String;

    .line 341
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRingScreenLight:Ljava/lang/String;

    .line 342
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenTorchStatus:Ljava/lang/String;

    .line 343
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenFlashStatus:Ljava/lang/String;

    const/4 v0, 0x3

    .line 344
    iput v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mContrastValue:I

    .line 345
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceAttrMode:I

    .line 346
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mActivityOrientation:I

    .line 347
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPipDeviceValue:Ljava/lang/String;

    .line 348
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSnapshotTuning:Ljava/lang/String;

    .line 349
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightMode:I

    .line 350
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightResolution:I

    .line 351
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightAlgoScene:I

    .line 352
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCustomTuning:I

    .line 353
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLiveResultMode:I

    .line 354
    iput-object v1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mColorLevel:Ljava/lang/String;

    .line 355
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRingFlashLightMode:I

    .line 356
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAisMode:I

    .line 357
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightYUVMode:I

    .line 358
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoNightTranYUVMode:I

    .line 359
    iput v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPhotoNightTranYUVMode:I

    .line 360
    iput-boolean v2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mStreamFlip:Z

    .line 361
    iput v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFrontDualFlashColorTemp:I

    .line 362
    iput v4, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFrontDualFlashStrengthMode:I

    return-void
.end method

.method public enableBGServiceMode(Z)V
    .locals 0

    .line 1194
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGServiceEnable:Z

    return-void
.end method

.method public enableBWConvert(Z)V
    .locals 0

    .line 693
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWConvertEnable:Z

    return-void
.end method

.method public enableMirror(Z)V
    .locals 0

    .line 677
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMirrorEnable:Z

    return-void
.end method

.method public get360VideoHDRMode()I
    .locals 0

    .line 747
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->m360VideoHDRMode:I

    return p0
.end method

.method public getAWBLockStatus()Z
    .locals 0

    .line 1101
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAWBLockStatus:Z

    return p0
.end method

.method public getAWBMode()Ljava/lang/String;
    .locals 0

    .line 1069
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAWBMode:Ljava/lang/String;

    return-object p0
.end method

.method public getActivityOrientation()I
    .locals 0

    .line 1526
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mActivityOrientation:I

    return p0
.end method

.method public getAeLock()Z
    .locals 0

    .line 541
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAeLock:Z

    return p0
.end method

.method public getAiMoonMode()I
    .locals 0

    .line 1382
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAiMoonMode:I

    return p0
.end method

.method public getAisMode()I
    .locals 0

    .line 1566
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAisMode:I

    return p0
.end method

.method public getAntiVideoMode()Ljava/lang/String;
    .locals 0

    .line 1021
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAntiVideo:Ljava/lang/String;

    return-object p0
.end method

.method public getAppModeId()Ljava/lang/String;
    .locals 0

    .line 1466
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAppModeId:Ljava/lang/String;

    return-object p0
.end method

.method public getAutoWaterMarkParameterList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$WaterMarkParameter;",
            ">;"
        }
    .end annotation

    .line 1013
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mWaterMarkParameterList:Ljava/util/List;

    return-object p0
.end method

.method public getAutoWatermarkMode()Ljava/lang/String;
    .locals 1

    .line 1005
    iget-boolean v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEditWatermarkSupport:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEditWatermarkMode:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoWatermarkMode:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getBGImageReaderId()I
    .locals 0

    .line 1206
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGImageReaderId:I

    return p0
.end method

.method public getBodySlimMode()I
    .locals 0

    .line 832
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodyMode:I

    return p0
.end method

.method public getColorLevel()Ljava/lang/String;
    .locals 0

    .line 1558
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mColorLevel:Ljava/lang/String;

    return-object p0
.end method

.method public getContrastValue()I
    .locals 0

    .line 1093
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mContrastValue:I

    return p0
.end method

.method public getCustomTuning()I
    .locals 0

    .line 1342
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mCustomTuning:I

    return p0
.end method

.method public getDataFlowType()I
    .locals 0

    .line 409
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDataFlowType:I

    return p0
.end method

.method public getDistortionCorrectionMode()I
    .locals 0

    .line 976
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDistortionCorrectionMode:I

    return p0
.end method

.method public getDistortionCorrectionPreviewEnablet()Ljava/lang/String;
    .locals 0

    .line 984
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDistortionCorrectionPreviewEnable:Ljava/lang/String;

    return-object p0
.end method

.method public getExposureCompensation()I
    .locals 0

    .line 533
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureCompensation:I

    return p0
.end method

.method public getExposureTime()J
    .locals 2

    .line 606
    iget-wide v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureTime:J

    return-wide v0
.end method

.method public getFaceAttrMode()I
    .locals 0

    .line 1234
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceAttrMode:I

    return p0
.end method

.method public getFaceBeautyFeaturesLevel()[I
    .locals 0

    .line 656
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyFeaturesLevel:[I

    return-object p0
.end method

.method public getFaceBeautyLevel()Ljava/lang/String;
    .locals 0

    .line 648
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyLevel:Ljava/lang/String;

    return-object p0
.end method

.method public getFaceBeautyMode()Ljava/lang/String;
    .locals 0

    .line 640
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyMode:Ljava/lang/String;

    return-object p0
.end method

.method public getFakeDualLensMode()I
    .locals 0

    .line 1214
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFakeDualLensMode:I

    return p0
.end method

.method public getFlashFacade()Ljava/lang/String;
    .locals 0

    .line 1478
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashFacade:Ljava/lang/String;

    return-object p0
.end method

.method public getFlashMode()Ljava/lang/String;
    .locals 0

    .line 488
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashMode:Ljava/lang/String;

    return-object p0
.end method

.method public getFlashStyle()Ljava/lang/String;
    .locals 0

    .line 1494
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashStyle:Ljava/lang/String;

    return-object p0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;"
        }
    .end annotation

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusAreas:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getFocusDistance()F
    .locals 0

    .line 614
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusDistance:F

    return p0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusMode:Ljava/lang/String;

    return-object p0
.end method

.method public getFovWideCrop()Z
    .locals 0

    .line 509
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFovWideCrop:Z

    return p0
.end method

.method public getFrontDualFlashColorTemp()I
    .locals 0

    .line 1061
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFrontDualFlashColorTemp:I

    return p0
.end method

.method public getFrontDualFlashStrengthMode()I
    .locals 0

    .line 1053
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFrontDualFlashStrengthMode:I

    return p0
.end method

.method public getFusionMode()Ljava/lang/String;
    .locals 0

    .line 1133
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFusionMode:Ljava/lang/String;

    return-object p0
.end method

.method public getGenderAttributeValue()Ljava/lang/String;
    .locals 0

    .line 1398
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGenderAttributeValue:Ljava/lang/String;

    return-object p0
.end method

.method public getHdMode()Ljava/lang/String;
    .locals 0

    .line 1117
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHdMode:Ljava/lang/String;

    return-object p0
.end method

.method public getHighFpsMode()Ljava/lang/String;
    .locals 0

    .line 1129
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighFpsMode:Ljava/lang/String;

    return-object p0
.end method

.method public getHighLightMode()I
    .locals 0

    .line 1438
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighLightMode:I

    return p0
.end method

.method public getHumanEffectMode()Ljava/lang/String;
    .locals 0

    .line 1406
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHumanEffectMode:Ljava/lang/String;

    return-object p0
.end method

.method public getISOValue()I
    .locals 0

    .line 598
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mISOValue:I

    return p0
.end method

.method public getIszBvValue()I
    .locals 0

    .line 1077
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mIszBvValue:I

    return p0
.end method

.method public getJpegGPSLocation()Landroid/location/Location;
    .locals 0

    .line 448
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLocation:Landroid/location/Location;

    return-object p0
.end method

.method public getJpegOrientation()I
    .locals 0

    .line 436
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mJpegOrientation:I

    return p0
.end method

.method public getJpegQuality()I
    .locals 0

    .line 424
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mJpegQuality:I

    return p0
.end method

.method public getLimitFpsRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 557
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLimitFpsRange:Landroid/util/Range;

    return-object p0
.end method

.method public getLiveResultMode()I
    .locals 0

    .line 1546
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLiveResultMode:I

    return p0
.end method

.method public getLuminanceValue()I
    .locals 0

    .line 1045
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLuminanceValue:I

    return p0
.end method

.method public getMacroLampValue()I
    .locals 0

    .line 1358
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMacroLampValue:I

    return p0
.end method

.method public getMagicSkyMode()Ljava/lang/String;
    .locals 0

    .line 1446
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMagicSkyMode:Ljava/lang/String;

    return-object p0
.end method

.method public getMagicSkyResult()I
    .locals 0

    .line 1462
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMagicSkyResult:I

    return p0
.end method

.method public getMagicSkyType()Ljava/lang/String;
    .locals 0

    .line 1454
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMagicSkyType:Ljava/lang/String;

    return-object p0
.end method

.method public getMakeUpIntensitys()[F
    .locals 0

    .line 848
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpIntensitys:[F

    return-object p0
.end method

.method public getMakeUpMode()I
    .locals 0

    .line 844
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpMode:I

    return p0
.end method

.method public getMakeUpVideoIntensitys()[F
    .locals 0

    .line 864
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpVideoIntensitys:[F

    return-object p0
.end method

.method public getMakeUpVideoMode()I
    .locals 0

    .line 860
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpVideoMode:I

    return p0
.end method

.method public getManualAWBValue()Ljava/lang/String;
    .locals 0

    .line 1085
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mManualAWBValue:Ljava/lang/String;

    return-object p0
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;"
        }
    .end annotation

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringAreas:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getMeteringMode()Ljava/lang/String;
    .locals 0

    .line 624
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringMode:Ljava/lang/String;

    return-object p0
.end method

.method public getMiddleNightMode()I
    .locals 0

    .line 888
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMiddleNightMode:I

    return p0
.end method

.method public getMoonDetection()I
    .locals 0

    .line 1374
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMoonDetectionMode:I

    return p0
.end method

.method public getMultiFaceBeautyMode()Ljava/lang/String;
    .locals 0

    .line 644
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMultiFaceBeautyMode:Ljava/lang/String;

    return-object p0
.end method

.method public getNight3dnrAlgo()I
    .locals 0

    .line 896
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNight3dnrAlgo:I

    return p0
.end method

.method public getNightHawkMode()I
    .locals 0

    .line 1366
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightHawkMode:I

    return p0
.end method

.method public getNightMorHdsScene()I
    .locals 0

    .line 904
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightMorHdsScene:I

    return p0
.end method

.method public getOverrideSensorRect()Landroid/graphics/Rect;
    .locals 0

    .line 582
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mOverrideSensorRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPhotoHDRMode()Ljava/lang/String;
    .locals 0

    .line 734
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPhotoHDRMode:Ljava/lang/String;

    return-object p0
.end method

.method public getPhotoNightTranYUVMode()I
    .locals 0

    .line 1314
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPhotoNightTranYUVMode:I

    return p0
.end method

.method public getPictureSize()Landroid/util/Size;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPictureSize:Landroid/util/Size;

    return-object p0
.end method

.method public getPipDeviceValue()Ljava/lang/String;
    .locals 0

    .line 1534
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPipDeviceValue:Ljava/lang/String;

    return-object p0
.end method

.method public getPortraitMode()I
    .locals 0

    .line 1109
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPortraitMode:I

    return p0
.end method

.method public getPortraitModeEnhanceMode()Ljava/lang/String;
    .locals 1

    .line 1390
    iget v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperResolutionMode:I

    if-lez v0, :cond_0

    const-string p0, "off"

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPortraitModeEnhanceMode:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getPostViewSize()Landroid/util/Size;
    .locals 0

    .line 390
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostViewSize:Landroid/util/Size;

    return-object p0
.end method

.method public getPreviewFPSRange()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 549
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewFPSRange:Landroid/util/Range;

    return-object p0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 0

    .line 370
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method public getRemosaicMode()Ljava/lang/String;
    .locals 0

    .line 932
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRemosaicMode:Ljava/lang/String;

    return-object p0
.end method

.method public getRingScreenLight()Ljava/lang/String;
    .locals 0

    .line 1502
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRingScreenLight:Ljava/lang/String;

    return-object p0
.end method

.method public getSMVRRequestParams()[I
    .locals 0

    .line 1254
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSMVRRequestParams:[I

    return-object p0
.end method

.method public getSTBlurLevel()I
    .locals 0

    .line 1190
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurLevel:I

    return p0
.end method

.method public getSTBlurLightStrength()F
    .locals 0

    .line 1170
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurLightStrength:F

    return p0
.end method

.method public getSTBlurMode()I
    .locals 0

    .line 1158
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurMode:I

    return p0
.end method

.method public getSTBlurReaRatio()F
    .locals 0

    .line 1178
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurReaRatio:F

    return p0
.end method

.method public getSTBlurStrengths()[F
    .locals 0

    .line 1162
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurStrengths:[F

    return-object p0
.end method

.method public getSatPictureSize()Landroid/util/Size;
    .locals 0

    .line 386
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSatPictureSize:Landroid/util/Size;

    return-object p0
.end method

.method public getSceneMode()Ljava/lang/String;
    .locals 0

    .line 565
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSceneMode:Ljava/lang/String;

    return-object p0
.end method

.method public getScreenFlashMode()Ljava/lang/String;
    .locals 0

    .line 1029
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenFlashMode:Ljava/lang/String;

    return-object p0
.end method

.method public getScreenFlashStatus()Ljava/lang/String;
    .locals 0

    .line 1518
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenFlashStatus:Ljava/lang/String;

    return-object p0
.end method

.method public getScreenTorchStatus()Ljava/lang/String;
    .locals 0

    .line 1510
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenTorchStatus:Ljava/lang/String;

    return-object p0
.end method

.method public getShot2ShotMode()I
    .locals 0

    .line 968
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mShot2ShotMode:I

    return p0
.end method

.method public getSlimBodyLevels()[I
    .locals 0

    .line 828
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodyLevels:[I

    return-object p0
.end method

.method public getStreamFlip()Z
    .locals 0

    .line 1574
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mStreamFlip:Z

    return p0
.end method

.method public getSuperDefinitionMode()I
    .locals 0

    .line 920
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperDefinitionMode:I

    return p0
.end method

.method public getSuperFlashValue()Ljava/lang/String;
    .locals 0

    .line 1486
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperFlash:Ljava/lang/String;

    return-object p0
.end method

.method public getSuperNightAlgoType()Ljava/lang/String;
    .locals 0

    .line 1150
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoType:Ljava/lang/String;

    return-object p0
.end method

.method public getSuperNightMode()Ljava/lang/String;
    .locals 0

    .line 1142
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightMode:Ljava/lang/String;

    return-object p0
.end method

.method public getSuperResolutionMode()I
    .locals 0

    .line 944
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperResolutionMode:I

    return p0
.end method

.method public getThumbnailSize()Landroid/util/Size;
    .locals 0

    .line 394
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mThumbnailSize:Landroid/util/Size;

    return-object p0
.end method

.method public getTranFaceDetectMode()I
    .locals 0

    .line 1230
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranFaceDetectMode:I

    return p0
.end method

.method public getTranssionAnimalEyeDetection()Ljava/lang/String;
    .locals 0

    .line 1278
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAnimalEyeDetection:Ljava/lang/String;

    return-object p0
.end method

.method public getTranssionAsdMode()I
    .locals 0

    .line 760
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdMode:I

    return p0
.end method

.method public getTranssionAutoMacroSwitch()Ljava/lang/String;
    .locals 0

    .line 1286
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoMacroSwitch:Ljava/lang/String;

    return-object p0
.end method

.method public getTranssionCameraMode()I
    .locals 0

    .line 1246
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionCameraMode:I

    return p0
.end method

.method public getTranssionCusIspAsd()[I
    .locals 0

    .line 768
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdIsp:[I

    return-object p0
.end method

.method public getTranssionEyeDetection()Ljava/lang/String;
    .locals 0

    .line 1262
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEyeDetection:Ljava/lang/String;

    return-object p0
.end method

.method public getTranssionFilterId()I
    .locals 0

    .line 776
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFilterId:I

    return p0
.end method

.method public getTranssionHDR()I
    .locals 0

    .line 958
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionHDR:I

    return p0
.end method

.method public getTranssionHumanDetection()I
    .locals 0

    .line 1270
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHumanDetection:I

    return p0
.end method

.method public getTranssionLowLightMode()I
    .locals 0

    .line 880
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLowLightMode:I

    return p0
.end method

.method public getTranssionNightMode()I
    .locals 0

    .line 872
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightMode:I

    return p0
.end method

.method public getTranssionPluginEnable()I
    .locals 0

    .line 1037
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionPluginEnable:I

    return p0
.end method

.method public getTranssionSmartDenoise()I
    .locals 0

    .line 912
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDenoiseMode:I

    return p0
.end method

.method public getTranssionSuperNightFilterId()I
    .locals 0

    .line 784
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightFilterId:I

    return p0
.end method

.method public getTranssionVideoEffectId()I
    .locals 0

    .line 808
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoEffectId:I

    return p0
.end method

.method public getTranssionVideoFilterId()I
    .locals 0

    .line 792
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoFilterId:I

    return p0
.end method

.method public getTranssionVideoFilterSkinType()I
    .locals 0

    .line 800
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoFilterSkinType:I

    return p0
.end method

.method public getTranssionVideoFrameId()I
    .locals 0

    .line 816
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoFrameId:I

    return p0
.end method

.method public getVideoHDRMode()Ljava/lang/String;
    .locals 0

    .line 743
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoHDRMode:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoInterpolationEnable()I
    .locals 0

    .line 1222
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoInterpolationEnable:I

    return p0
.end method

.method public getVideoNightTranYUVMode()I
    .locals 0

    .line 1306
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoNightTranYUVMode:I

    return p0
.end method

.method public getVideoOrientation()I
    .locals 0

    .line 440
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoOrientation:I

    return p0
.end method

.method public getVideoPortraitLevel()I
    .locals 0

    .line 673
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPortraitLevel:I

    return p0
.end method

.method public getVideoPortraitMode()I
    .locals 0

    .line 1294
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPortraitMode:I

    return p0
.end method

.method public getVideoSnapshotTuning()Ljava/lang/String;
    .locals 0

    .line 1542
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSnapshotTuning:Ljava/lang/String;

    return-object p0
.end method

.method public getVideoSuperNightMode()I
    .locals 0

    .line 1302
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightMode:I

    return p0
.end method

.method public getVideoSuperNightResolution()I
    .locals 0

    .line 1326
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightResolution:I

    return p0
.end method

.method public getVideoSuperNightScene()I
    .locals 0

    .line 1350
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightAlgoScene:I

    return p0
.end method

.method public getVideoSuperNightYUVMode()I
    .locals 0

    .line 1334
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightYUVMode:I

    return p0
.end method

.method public getVsdofLevel()Ljava/lang/String;
    .locals 0

    .line 669
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVsdofLevel:Ljava/lang/String;

    return-object p0
.end method

.method public getYuvCaptureFlipMode()Ljava/lang/String;
    .locals 0

    .line 1001
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mYuvCaptureFlipMode:Ljava/lang/String;

    return-object p0
.end method

.method public getZoomRatio()I
    .locals 0

    .line 501
    iget p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZoomRatio:I

    return p0
.end method

.method public isBWConvertEnable()Z
    .locals 0

    .line 697
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWConvertEnable:Z

    return p0
.end method

.method public isBWPortraitEnable()Z
    .locals 0

    .line 689
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBWPortraitEnable:Z

    return p0
.end method

.method public isBgServiceEnable()Z
    .locals 0

    .line 1198
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGServiceEnable:Z

    return p0
.end method

.method public isFaceDetectionEnable()Z
    .locals 0

    .line 1418
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceDetectionEnable:Z

    return p0
.end method

.method public isMirrorEnable()Z
    .locals 0

    .line 681
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMirrorEnable:Z

    return p0
.end method

.method public isModeUltrazoomEnable()Z
    .locals 0

    .line 717
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mModeUltrazoomEnable:Z

    return p0
.end method

.method public isProfessionModeEnable()Z
    .locals 0

    .line 709
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProfessionalModeEnable:Z

    return p0
.end method

.method public isQuickPreviewEnable()Z
    .locals 0

    .line 701
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mQuickPreviewEnable:Z

    return p0
.end method

.method public isRTDofEnable()Z
    .locals 0

    .line 525
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRTDofEnable:Z

    return p0
.end method

.method public isRecordingHint()Z
    .locals 0

    .line 574
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRecordingHint:Z

    return p0
.end method

.method public isZSLEnable()Z
    .locals 0

    .line 517
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZSLEnable:Z

    return p0
.end method

.method public needFocusModeAuto()Z
    .locals 0

    .line 1414
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNeedFocusModeAuto:Z

    return p0
.end method

.method public needLockAe()Z
    .locals 0

    .line 1430
    iget-boolean p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNeedLockAe:Z

    return p0
.end method

.method public overrideSensorRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mOverrideSensorRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setAWBLockStatus(Z)V
    .locals 0

    .line 1097
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAWBLockStatus:Z

    return-void
.end method

.method public setAWBMode(Ljava/lang/String;)V
    .locals 0

    .line 1065
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAWBMode:Ljava/lang/String;

    return-void
.end method

.method public setActivityOrientation(I)V
    .locals 0

    .line 1522
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mActivityOrientation:I

    return-void
.end method

.method public setAeLock(Z)V
    .locals 0

    .line 537
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAeLock:Z

    return-void
.end method

.method public setAntiVideoMode(Ljava/lang/String;)V
    .locals 0

    .line 1017
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAntiVideo:Ljava/lang/String;

    return-void
.end method

.method public setAppModeId(Ljava/lang/String;)V
    .locals 0

    .line 1470
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAppModeId:Ljava/lang/String;

    return-void
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

    .line 1009
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mWaterMarkParameterList:Ljava/util/List;

    return-void
.end method

.method public setAutoWatermarkMode(Ljava/lang/String;)V
    .locals 0

    .line 988
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAutoWatermarkMode:Ljava/lang/String;

    return-void
.end method

.method public setBGImageReaderId(I)V
    .locals 0

    .line 1202
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mBGImageReaderId:I

    return-void
.end method

.method public setColorLevel(Ljava/lang/String;)V
    .locals 0

    .line 1554
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mColorLevel:Ljava/lang/String;

    return-void
.end method

.method public setDataFlowType(I)V
    .locals 0

    .line 406
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDataFlowType:I

    return-void
.end method

.method public setDistortionCorrectionMode(I)V
    .locals 0

    .line 972
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDistortionCorrectionMode:I

    return-void
.end method

.method public setDistortionCorrectionPreviewEnable(Ljava/lang/String;)V
    .locals 0

    .line 980
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDistortionCorrectionPreviewEnable:Ljava/lang/String;

    return-void
.end method

.method public setEditWatermarkMode(ZLjava/lang/String;)V
    .locals 0

    .line 992
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEditWatermarkSupport:Z

    .line 993
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEditWatermarkMode:Ljava/lang/String;

    return-void
.end method

.method public setExposureCompensation(I)V
    .locals 0

    .line 529
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureCompensation:I

    return-void
.end method

.method public setExposureTime(J)V
    .locals 0

    .line 602
    iput-wide p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mExposureTime:J

    return-void
.end method

.method public setFaceBeautyFeaturesLevel([I)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyFeaturesLevel:[I

    return-void
.end method

.method public setFaceBeautyLevel(Ljava/lang/String;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyLevel:Ljava/lang/String;

    return-void
.end method

.method public setFaceBeautyMode(Ljava/lang/String;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceBeautyMode:Ljava/lang/String;

    return-void
.end method

.method public setFaceDetectionEnable(Z)V
    .locals 0

    .line 1422
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFaceDetectionEnable:Z

    return-void
.end method

.method public setFakeDualLensMode(I)V
    .locals 0

    .line 1210
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFakeDualLensMode:I

    return-void
.end method

.method public setFlashFacade(Ljava/lang/String;)V
    .locals 0

    .line 1474
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashFacade:Ljava/lang/String;

    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashMode:Ljava/lang/String;

    return-void
.end method

.method public setFlashStyle(Ljava/lang/String;)V
    .locals 0

    .line 1490
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFlashStyle:Ljava/lang/String;

    return-void
.end method

.method public setFocusAreas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;)V"
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 463
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusAreas:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setFocusDistance(F)V
    .locals 0

    .line 610
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusDistance:F

    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFocusMode:Ljava/lang/String;

    return-void
.end method

.method public setFocusModeAuto(Z)V
    .locals 0

    .line 1410
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNeedFocusModeAuto:Z

    return-void
.end method

.method public setFovWideCrop(Z)V
    .locals 0

    .line 505
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFovWideCrop:Z

    return-void
.end method

.method public setFrontDualFlashColorTemp(I)V
    .locals 0

    .line 1049
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFrontDualFlashColorTemp:I

    return-void
.end method

.method public setFrontDualFlashStrengthMode(I)V
    .locals 0

    .line 1057
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFrontDualFlashStrengthMode:I

    return-void
.end method

.method public setFusionMode(Ljava/lang/String;)V
    .locals 0

    .line 1125
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFusionMode:Ljava/lang/String;

    return-void
.end method

.method public setGenderAttributeValue(Ljava/lang/String;)V
    .locals 0

    .line 1394
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mGenderAttributeValue:Ljava/lang/String;

    return-void
.end method

.method public setHighFpsMode(Ljava/lang/String;)V
    .locals 0

    .line 1121
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighFpsMode:Ljava/lang/String;

    return-void
.end method

.method public setHighLightMode(I)V
    .locals 0

    .line 1434
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHighLightMode:I

    return-void
.end method

.method public setISOValue(I)V
    .locals 0

    .line 594
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mISOValue:I

    return-void
.end method

.method public setJpegGPSLocation(Landroid/location/Location;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLocation:Landroid/location/Location;

    return-void
.end method

.method public setJpegOrientation(I)V
    .locals 0

    .line 428
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mJpegOrientation:I

    return-void
.end method

.method public setLiveResultMode(I)V
    .locals 0

    .line 1550
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLiveResultMode:I

    return-void
.end method

.method public setLuminanceValue(I)V
    .locals 0

    .line 1041
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLuminanceValue:I

    return-void
.end method

.method public setMacroLampValue(I)V
    .locals 0

    .line 1354
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMacroLampValue:I

    return-void
.end method

.method public setMagicSkyResult(I)V
    .locals 0

    .line 1458
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMagicSkyResult:I

    return-void
.end method

.method public setMagicSkyType(Ljava/lang/String;)V
    .locals 0

    .line 1450
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMagicSkyType:Ljava/lang/String;

    return-void
.end method

.method public setMakeUpIntensitys([F)V
    .locals 0

    .line 840
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpIntensitys:[F

    return-void
.end method

.method public setMakeUpMode(I)V
    .locals 0

    .line 836
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpMode:I

    return-void
.end method

.method public setMakeUpVideoIntensitys([F)V
    .locals 0

    .line 856
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpVideoIntensitys:[F

    return-void
.end method

.method public setMakeUpVideoMode(I)V
    .locals 0

    .line 852
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMakeUpVideoMode:I

    return-void
.end method

.method public setManualAWBValue(Ljava/lang/String;)V
    .locals 0

    .line 1081
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mManualAWBValue:Ljava/lang/String;

    return-void
.end method

.method public setMeteringAreas(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;)V"
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 474
    iget-object p0, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringAreas:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setMeteringMode(Ljava/lang/String;)V
    .locals 0

    .line 619
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMeteringMode:Ljava/lang/String;

    return-void
.end method

.method public setMiddleNightMode(I)V
    .locals 0

    .line 884
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMiddleNightMode:I

    return-void
.end method

.method public setMultiFaceBeautyMode(Ljava/lang/String;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mMultiFaceBeautyMode:Ljava/lang/String;

    return-void
.end method

.method public setNightHawkMode(I)V
    .locals 0

    .line 1362
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightHawkMode:I

    return-void
.end method

.method public setPhotoHDRMode(Ljava/lang/String;)V
    .locals 3

    .line 725
    sget-object v0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setPhotoHDRMode], hdrMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "on"

    .line 726
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "hdr"

    .line 727
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSceneMode(Ljava/lang/String;)V

    .line 729
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPhotoHDRMode:Ljava/lang/String;

    return-void
.end method

.method public setPhotoNightTranYUVMode(I)V
    .locals 0

    .line 1318
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPhotoNightTranYUVMode:I

    return-void
.end method

.method public setPictureSize(Landroid/util/Size;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPictureSize:Landroid/util/Size;

    return-void
.end method

.method public setPipDeviceValue(Ljava/lang/String;)V
    .locals 0

    .line 1530
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPipDeviceValue:Ljava/lang/String;

    return-void
.end method

.method public setPortraitModeEnhanceMode(Ljava/lang/String;)V
    .locals 0

    .line 1386
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPortraitModeEnhanceMode:Ljava/lang/String;

    return-void
.end method

.method public setPostViewSize(Landroid/util/Size;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPostViewSize:Landroid/util/Size;

    return-void
.end method

.method public setPreviewFPSRange(Landroid/util/Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 545
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewFPSRange:Landroid/util/Range;

    return-void
.end method

.method public setPreviewSize(Landroid/util/Size;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mPreviewSize:Landroid/util/Size;

    return-void
.end method

.method public setProfessionMode(Z)V
    .locals 0

    .line 713
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mProfessionalModeEnable:Z

    return-void
.end method

.method public setQuickPreview(Z)V
    .locals 0

    .line 705
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mQuickPreviewEnable:Z

    return-void
.end method

.method public setRTDofEnable(Z)V
    .locals 0

    .line 522
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRTDofEnable:Z

    return-void
.end method

.method public setRecordingHint(Z)V
    .locals 0

    .line 570
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRecordingHint:Z

    return-void
.end method

.method public setRemosaicMode(Ljava/lang/String;)V
    .locals 1

    .line 924
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRemosaicMode:Ljava/lang/String;

    .line 925
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 926
    sget-object p1, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "It\'s a project under 4G,close remosaicMode in Monkey scenarios."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 927
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRemosaicMode:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setRingScreenLight(Ljava/lang/String;)V
    .locals 0

    .line 1498
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mRingScreenLight:Ljava/lang/String;

    return-void
.end method

.method public setSMVRRequestParams([I)V
    .locals 0

    .line 1250
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSMVRRequestParams:[I

    return-void
.end method

.method public setSTBlurLightStrength(F)V
    .locals 0

    .line 1174
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurLightStrength:F

    return-void
.end method

.method public setSTBlurMode(I)V
    .locals 0

    .line 1154
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurMode:I

    return-void
.end method

.method public setSTBlurReaRatio(F)V
    .locals 0

    .line 1182
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurReaRatio:F

    return-void
.end method

.method public setSTBlurStrengths([F)V
    .locals 0

    .line 1166
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurStrengths:[F

    return-void
.end method

.method public setSatPictureSize(Landroid/util/Size;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSatPictureSize:Landroid/util/Size;

    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSceneMode:Ljava/lang/String;

    return-void
.end method

.method public setScreenFlashMode(Ljava/lang/String;)V
    .locals 0

    .line 1025
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenFlashMode:Ljava/lang/String;

    return-void
.end method

.method public setScreenFlashStatus(Ljava/lang/String;)V
    .locals 0

    .line 1514
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenFlashStatus:Ljava/lang/String;

    return-void
.end method

.method public setScreenTorchStatus(Ljava/lang/String;)V
    .locals 0

    .line 1506
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mScreenTorchStatus:Ljava/lang/String;

    return-void
.end method

.method public setShot2ShotMode(I)V
    .locals 0

    .line 964
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mShot2ShotMode:I

    return-void
.end method

.method public setSingleBlurLevel(I)V
    .locals 0

    .line 1186
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSTBlurLevel:I

    return-void
.end method

.method public setSlimBodyLevels([I)V
    .locals 0

    .line 820
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodyLevels:[I

    return-void
.end method

.method public setSlimBodyMode(I)V
    .locals 0

    .line 824
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSlimBodyMode:I

    return-void
.end method

.method public setStreamFlip(Z)V
    .locals 0

    .line 1570
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mStreamFlip:Z

    return-void
.end method

.method public setSuperDefinitionMode(I)V
    .locals 0

    .line 916
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperDefinitionMode:I

    return-void
.end method

.method public setSuperFlashValue(Ljava/lang/String;)V
    .locals 0

    .line 1482
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperFlash:Ljava/lang/String;

    return-void
.end method

.method public setSuperNightAlgoType(Ljava/lang/String;)V
    .locals 0

    .line 1146
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightAlgoType:Ljava/lang/String;

    return-void
.end method

.method public setSuperNightMode(Ljava/lang/String;)V
    .locals 0

    .line 1138
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightMode:Ljava/lang/String;

    return-void
.end method

.method public setSuperResolutionMode(I)V
    .locals 1

    .line 936
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperResolutionMode:I

    .line 937
    invoke-static {}, Lcom/transsion/camera/utils/MonkeyUtils;->specialMonkeySupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 938
    sget-object p1, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "It\'s a project under 4G,close superResolution in Monkey scenarios."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p1, "0"

    .line 939
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperDefinitionMode:I

    :cond_0
    return-void
.end method

.method public setThumbnailSize(Landroid/util/Size;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mThumbnailSize:Landroid/util/Size;

    return-void
.end method

.method public setTranFaceDetectMode(I)V
    .locals 0

    .line 1226
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranFaceDetectMode:I

    return-void
.end method

.method public setTranssionAnimalEyeDetection(Ljava/lang/String;)V
    .locals 0

    .line 1274
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAnimalEyeDetection:Ljava/lang/String;

    return-void
.end method

.method public setTranssionAsdMode(I)V
    .locals 0

    .line 756
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdMode:I

    return-void
.end method

.method public setTranssionCameraMode(I)V
    .locals 0

    .line 1242
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionCameraMode:I

    return-void
.end method

.method public setTranssionCusIspAsd([I)V
    .locals 0

    .line 764
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mAsdIsp:[I

    return-void
.end method

.method public setTranssionEyeDetection(Ljava/lang/String;)V
    .locals 0

    .line 1258
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mEyeDetection:Ljava/lang/String;

    return-void
.end method

.method public setTranssionHDR(I)V
    .locals 3

    .line 948
    sget-object v0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setTranssionHDR], value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 949
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "hdr"

    .line 950
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSceneMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "auto"

    .line 952
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraParameters;->setSceneMode(Ljava/lang/String;)V

    .line 954
    :goto_0
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionHDR:I

    return-void
.end method

.method public setTranssionHumanDetection(I)V
    .locals 0

    .line 1266
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mHumanDetection:I

    return-void
.end method

.method public setTranssionLowLightMode(I)V
    .locals 0

    .line 876
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mLowLightMode:I

    return-void
.end method

.method public setTranssionNightMode(I)V
    .locals 0

    .line 868
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mNightMode:I

    return-void
.end method

.method public setTranssionPluginEnable(I)V
    .locals 0

    .line 1033
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mTranssionPluginEnable:I

    return-void
.end method

.method public setTranssionSmartDenoise(I)V
    .locals 0

    .line 908
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mDenoiseMode:I

    return-void
.end method

.method public setTranssionSuperNightFilterId(I)V
    .locals 0

    .line 780
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mSuperNightFilterId:I

    return-void
.end method

.method public setTranssionVideoFilterId(I)V
    .locals 0

    .line 788
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoFilterId:I

    return-void
.end method

.method public setTranssionVideoFilterSkinType(I)V
    .locals 0

    .line 796
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoFilterSkinType:I

    return-void
.end method

.method public setTranssionaFilterId(I)V
    .locals 0

    .line 772
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mFilterId:I

    return-void
.end method

.method public setTranssionaVideoFrameId(I)V
    .locals 0

    .line 812
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoFrameId:I

    return-void
.end method

.method public setVideoInterpolation(I)V
    .locals 0

    .line 1218
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoInterpolationEnable:I

    return-void
.end method

.method public setVideoNightTranYUVMode(I)V
    .locals 0

    .line 1310
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoNightTranYUVMode:I

    return-void
.end method

.method public setVideoOrientation(I)V
    .locals 0

    .line 432
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoOrientation:I

    return-void
.end method

.method public setVideoPortraitLevel(I)V
    .locals 0

    .line 665
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPortraitLevel:I

    return-void
.end method

.method public setVideoPortraitMode(I)V
    .locals 0

    .line 1290
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoPortraitMode:I

    return-void
.end method

.method public setVideoSuperNightResolution(I)V
    .locals 0

    .line 1322
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVideoSuperNightResolution:I

    return-void
.end method

.method public setVsdofModeLevel(Ljava/lang/String;)V
    .locals 3

    .line 660
    sget-object v0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVsdofModeLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 661
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mVsdofLevel:Ljava/lang/String;

    return-void
.end method

.method public setYuvCaptureFlipMode(Ljava/lang/String;)V
    .locals 0

    .line 997
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mYuvCaptureFlipMode:Ljava/lang/String;

    return-void
.end method

.method public setZSLEnable(Z)V
    .locals 0

    .line 513
    iput-boolean p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZSLEnable:Z

    return-void
.end method

.method public setZoomRatio(IZ)V
    .locals 1

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    if-nez p2, :cond_0

    .line 494
    sget-object p0, Lcom/transsion/camera/adapter/CameraParameters;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set invalid value in setZoomRatio: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 497
    :cond_0
    iput p1, p0, Lcom/transsion/camera/adapter/CameraParameters;->mZoomRatio:I

    return-void
.end method
