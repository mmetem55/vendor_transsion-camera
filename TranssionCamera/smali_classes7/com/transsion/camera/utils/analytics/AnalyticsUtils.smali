.class public Lcom/transsion/camera/utils/analytics/AnalyticsUtils;
.super Ljava/lang/Object;
.source "AnalyticsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XVideoInfo;,
        Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;
    }
.end annotation


# static fields
.field private static final OOBE_CONTRY:Ljava/lang/String;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sFrontWideCameraId:Ljava/lang/String; = "5"

.field private static sInstance:Lcom/transsion/camera/utils/analytics/AnalyticsUtils; = null

.field private static sWideCameraId:Ljava/lang/String; = "3"


# instance fields
.field private mAIDetection:I

.field private mAIShutterValue:I

.field private mAR2Name:Ljava/lang/String;

.field private mAR2NetType:Ljava/lang/String;

.field private mAR2Size:I

.field private mAR2Sort:Ljava/lang/String;

.field private mAR2Type:Ljava/lang/String;

.field private mAR2VideoDuration:I

.field private mAgeValue:Ljava/lang/String;

.field private final mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

.field private mAntiVideoValue:Ljava/lang/String;

.field private mArcoreAudioId:I

.field private mAsdEffect:I

.field private mAsdValue:I

.field private mAsdenHanceValue:Ljava/lang/String;

.field private final mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

.field private mAutoWaterMarkValue:Ljava/lang/String;

.field private mBlurValue:Ljava/lang/String;

.field private mBvValue:I

.field private mCCTValue:I

.field private mCameraId:Ljava/lang/String;

.field private mCameraIdFacebeautyCache:Ljava/lang/String;

.field private mCameraIdFilterCache:Ljava/lang/String;

.field private mCameraIdFilterSuperNightCache:Ljava/lang/String;

.field private mCameraLaunchStartTime:J

.field private mCameraLaunchStartType:I

.field private mCameraNameValue:Ljava/lang/String;

.field private mCameraStartTime:J

.field private mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

.field private mCaptureTime:I

.field private mCaptureType:I

.field private mClickZoomValue:I

.field private final mContext:Landroid/content/Context;

.field private mDownloadFunHasMusic:Z

.field private mDownloadFunName:Ljava/lang/String;

.field private mDownloadFunSize:J

.field private mDownloadFunStartTime:J

.field private mDownloadFunType:Ljava/lang/String;

.field private mDualVideoCameraIds:Ljava/lang/String;

.field private mDualVideoCameraNames:Ljava/lang/String;

.field private mDualVideoStatus:I

.field private mDualVideoWindowCutRatio:F

.field private mDualVideoWindowStyle:I

.field private mEditWaterMarkBrandValue:Ljava/lang/String;

.field private final mFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;

.field private mFaceBeautyStartTime:J

.field private mFaceBeautyValue:[I

.field private mFaceCount:I

.field private mFaceDetectTime:J

.field private mFaceInfoAge:I

.field private mFaceInfoDetected:Z

.field private mFaceInfoSex:I

.field private mFilterStartTime:J

.field private mFilterSuperNightStartTime:J

.field private mFilterValue:Ljava/lang/String;

.field private mFlash:Ljava/lang/String;

.field private mFocusCount:I

.field private mFocusTime:J

.field private mFrontDualFlashColorTemp:I

.field private mFrontDualFlashStrengthMode:I

.field private mFunNetworkType:I

.field private mFunVideoFilterValue:Ljava/lang/String;

.field private mFunVideoSpeed:Ljava/lang/String;

.field private mGenderValue:Ljava/lang/String;

.field private mGuideFragmentStartTime:J

.field private mHdValue:Ljava/lang/String;

.field private mHdrValue:Ljava/lang/String;

.field private mHumanEffectValue:Ljava/lang/String;

.field private mIsFaceBeautyMode:Z

.field private mLVValue:I

.field private final mLock:Ljava/lang/Object;

.field private mLuminanceValue:I

.field private mMakeUpIntensityValue:F

.field private mMakeUpValue:I

.field private mMaxFaceRatio:F

.field private mModeName:Ljava/lang/String;

.field private mModeReumeTime:J

.field private mMoreModeDisplayType:Ljava/lang/String;

.field private final mMultiFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;

.field private mNightAlgo:I

.field private mNightHawkDetected:I

.field private final mNormalFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;

.field private mPictureRatioValue:Ljava/lang/String;

.field private mPortraitModeEnhanceValue:Ljava/lang/String;

.field private mScreenFlashShow:Z

.field private mScreenType:I

.field private mSelectFunHasMusic:Z

.field private mSelectFunName:Ljava/lang/String;

.field private mSelectFunType:Ljava/lang/String;

.field private mSelfTimerValue:Ljava/lang/String;

.field private mShot2SeeTime:I

.field private mSkyType:I

.field private final mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

.field private mSlimbodyValue:[I

.field private mSlowMotionFps:I

.field private mSmileValue:Ljava/lang/String;

.field private mStartCaptureTime:J

.field private mSuperNightFilterValue:Ljava/lang/String;

.field private mSuperNightStable:Ljava/lang/String;

.field private mTintValue:I

.field private mTranssionFilterValue:I

.field private mVIPCaptureValue:I

.field private mVideoBeautyValue:Ljava/lang/String;

.field private mVideoEffectValue:I

.field private mVideoEnhanceValue:Ljava/lang/String;

.field private mVideoEnhanceYUVEnable:Z

.field private mVideoFrameValue:I

.field private mVideoHDRValue:Ljava/lang/String;

.field private mVideoMakeUpIntensityValue:F

.field private mVideoMakeUpValue:I

.field private mVideoPortraitLevelValue:I

.field private mVideoPortraitValue:Ljava/lang/String;

.field private mVideoSuperNightEnable:Z

.field private mVideoSuperNightYUVEnable:Z

.field private mVideoTimeLapseDuration:Ljava/lang/String;

.field private mVideoTimeLapseRate:Ljava/lang/String;

.field private mZoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "AnalyticsUtils"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "persist.sys.oobe_country"

    const-string v1, ""

    .line 250
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->OOBE_CONTRY:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLock:Ljava/lang/Object;

    const-string v0, "0"

    .line 128
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    const-string v1, ""

    .line 129
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 130
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdValue:I

    .line 131
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdEffect:I

    .line 132
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mZoomValue:I

    .line 133
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPictureRatioValue:Ljava/lang/String;

    const-string v3, "off"

    .line 134
    iput-object v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterValue:Ljava/lang/String;

    .line 135
    iput-object v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFunVideoFilterValue:Ljava/lang/String;

    .line 136
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSuperNightFilterValue:Ljava/lang/String;

    .line 137
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdrValue:Ljava/lang/String;

    .line 138
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSelfTimerValue:Ljava/lang/String;

    const/4 v4, -0x1

    .line 139
    iput v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoSex:I

    .line 140
    iput v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoAge:I

    .line 141
    iput-object v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAntiVideoValue:Ljava/lang/String;

    const-string v5, "video_facebeauty_off"

    .line 142
    iput-object v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoBeautyValue:Ljava/lang/String;

    .line 143
    iput-object v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPortraitValue:Ljava/lang/String;

    .line 144
    iput-object v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoHDRValue:Ljava/lang/String;

    .line 145
    iput-object v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSmileValue:Ljava/lang/String;

    .line 146
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdValue:Ljava/lang/String;

    const-string v5, "1"

    .line 147
    iput-object v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoTimeLapseRate:Ljava/lang/String;

    const-string v5, "unlimited"

    .line 148
    iput-object v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoTimeLapseDuration:Ljava/lang/String;

    .line 149
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHumanEffectValue:Ljava/lang/String;

    const-wide/16 v5, 0x0

    .line 151
    iput-wide v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraStartTime:J

    .line 152
    iput-wide v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterStartTime:J

    .line 153
    iput-wide v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterSuperNightStartTime:J

    .line 154
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFilterCache:Ljava/lang/String;

    .line 155
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFilterSuperNightCache:Ljava/lang/String;

    .line 156
    iput-wide v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyStartTime:J

    .line 157
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFacebeautyCache:Ljava/lang/String;

    .line 158
    iput-boolean v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoDetected:Z

    .line 159
    iput-boolean v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsFaceBeautyMode:Z

    .line 188
    iput v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlowMotionFps:I

    .line 191
    iput v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNightAlgo:I

    const-string v0, "auto"

    .line 192
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    .line 193
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    .line 194
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    const/4 v0, 0x0

    .line 195
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    .line 197
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mArcoreAudioId:I

    .line 198
    iput-wide v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeReumeTime:J

    const/4 v7, 0x0

    .line 199
    iput-object v7, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    .line 200
    iput-object v7, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdenHanceValue:Ljava/lang/String;

    .line 201
    iput-object v7, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimbodyValue:[I

    .line 202
    iput-object v7, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyValue:[I

    const-string v8, "-1"

    .line 203
    iput-object v8, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGenderValue:Ljava/lang/String;

    .line 204
    iput-object v8, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAgeValue:Ljava/lang/String;

    const-string v8, "grid"

    .line 205
    iput-object v8, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMoreModeDisplayType:Ljava/lang/String;

    .line 207
    iput v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSkyType:I

    .line 251
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAR2Name:Ljava/lang/String;

    .line 252
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAR2Size:I

    .line 253
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAR2Type:Ljava/lang/String;

    .line 254
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAR2NetType:Ljava/lang/String;

    .line 255
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAR2Sort:Ljava/lang/String;

    .line 256
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAR2VideoDuration:I

    const/16 v8, -0x3e8

    .line 284
    iput v8, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mBvValue:I

    .line 285
    iput v8, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCCTValue:I

    .line 286
    iput v8, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLVValue:I

    .line 287
    iput v8, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTintValue:I

    .line 290
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAIDetection:I

    .line 294
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMakeUpValue:I

    .line 295
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMakeUpIntensityValue:F

    .line 298
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoMakeUpValue:I

    .line 299
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoMakeUpIntensityValue:F

    const-string v8, "f0.0"

    .line 301
    iput-object v8, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mBlurValue:Ljava/lang/String;

    .line 303
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTranssionFilterValue:I

    .line 305
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoEffectValue:I

    .line 307
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoFrameValue:I

    .line 310
    iput-object v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoEnhanceValue:Ljava/lang/String;

    .line 311
    iput-boolean v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoSuperNightEnable:Z

    .line 313
    iput-boolean v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoSuperNightYUVEnable:Z

    .line 314
    iput-boolean v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoEnhanceYUVEnable:Z

    .line 316
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPortraitLevelValue:I

    .line 318
    iput-wide v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraLaunchStartTime:J

    .line 319
    iput v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraLaunchStartType:I

    .line 331
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoStatus:I

    const-string v4, "0_1"

    .line 332
    iput-object v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoCameraIds:Ljava/lang/String;

    .line 333
    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoCameraNames:Ljava/lang/String;

    const/4 v1, 0x2

    .line 334
    iput v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoWindowStyle:I

    .line 335
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoWindowCutRatio:F

    .line 338
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mClickZoomValue:I

    .line 351
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureType:I

    .line 357
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAIShutterValue:I

    .line 359
    iput-wide v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGuideFragmentStartTime:J

    .line 372
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenType:I

    .line 388
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mShot2SeeTime:I

    .line 390
    iput-object v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mEditWaterMarkBrandValue:Ljava/lang/String;

    .line 1314
    iput-wide v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceDetectTime:J

    .line 1568
    iput-boolean v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenFlashShow:Z

    .line 1569
    iput v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNightHawkDetected:I

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string v3, "com.transsion.camera.analytics.AnalyticsImpl"

    .line 509
    invoke-static {v3, v1}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    iput-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string v2, "com.transsion.camera.athena.AnalyticsImpl"

    .line 510
    invoke-static {v2, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    .line 511
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mContext:Landroid/content/Context;

    .line 512
    new-instance p1, Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;

    invoke-direct {p1, v7}, Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;-><init>(Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;)V

    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNormalFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;

    .line 513
    new-instance v2, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;

    invoke-direct {v2, p1}, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;-><init>(Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;)V

    iput-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMultiFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;

    .line 514
    new-instance p1, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-direct {p1, v2}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;-><init>(Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;)V

    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    .line 515
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;

    .line 516
    sget-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAnalyticsImpl "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mAthenaAnalyticsImpl:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private checkFaceValid()V
    .locals 6

    .line 1333
    iget-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceDetectTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceDetectTime:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 1334
    :cond_0
    iput-wide v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceDetectTime:J

    const/4 v0, 0x0

    .line 1335
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    const/4 v0, 0x0

    .line 1336
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    :cond_1
    return-void
.end method

.method private duration(ILjava/lang/String;)V
    .locals 3

    .line 1382
    invoke-static {p2}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->simpleModeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1383
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1384
    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "key_camera_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_time_duration"

    .line 1385
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "key_mode"

    .line 1386
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v2, "duration"

    if-eqz v1, :cond_0

    .line 1388
    invoke-interface {v1, v2, v0}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1390
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v1, :cond_1

    .line 1391
    invoke-interface {v1, v2, v0}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1394
    :cond_1
    sget-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_CAMERA_ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1395
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modeName:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1396
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "duration:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;
    .locals 1

    .line 520
    sget-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->sInstance:Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    return-object v0
.end method

.method private getVideoEnhanceDescription()Ljava/lang/String;
    .locals 2

    .line 1860
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoEnhanceValue:Ljava/lang/String;

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 1861
    :cond_0
    iget-boolean p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoSuperNightEnable:Z

    if-eqz p0, :cond_1

    const-string p0, "super_night"

    goto :goto_0

    :cond_1
    const-string p0, "hdr"

    :goto_0
    return-object p0
.end method

.method private getVideoEnhanceYUVDescription()Ljava/lang/String;
    .locals 1

    .line 1869
    iget-boolean v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoEnhanceYUVEnable:Z

    if-nez v0, :cond_0

    const-string p0, "off"

    return-object p0

    .line 1870
    :cond_0
    iget-boolean p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoSuperNightYUVEnable:Z

    if-eqz p0, :cond_1

    const-string p0, "yuv_super_night"

    goto :goto_0

    :cond_1
    const-string p0, "hdr"

    :goto_0
    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 505
    new-instance v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    invoke-direct {v0, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->sInstance:Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    return-void
.end method

.method private logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1559
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v0, :cond_0

    .line 1560
    invoke-interface {v0, p1, p2}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1562
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz p0, :cond_1

    .line 1563
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method private resetCaptureParameters()V
    .locals 3

    .line 768
    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->resetFocus()V

    .line 769
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {v0}, Lcom/transsion/camera/utils/analytics/CaptureExif;->resetCaptureExif()V

    :cond_0
    const/4 v0, 0x0

    .line 772
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    const-wide/16 v1, 0x0

    .line 773
    iput-wide v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceDetectTime:J

    const/4 v1, 0x0

    .line 774
    iput v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    .line 775
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAIShutterValue:I

    return-void
.end method

.method private resetFaceInfo()V
    .locals 1

    const/4 v0, -0x1

    .line 803
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoSex:I

    .line 804
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoAge:I

    const/4 v0, 0x0

    .line 805
    iput-boolean v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoDetected:Z

    return-void
.end method

.method private resetFunDownload()V
    .locals 3

    const/4 v0, 0x0

    .line 1507
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDownloadFunName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 1508
    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDownloadFunSize:J

    const-string v2, ""

    .line 1509
    iput-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDownloadFunType:Ljava/lang/String;

    const/4 v2, 0x0

    .line 1510
    iput-boolean v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDownloadFunHasMusic:Z

    .line 1511
    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDownloadFunStartTime:J

    return-void
.end method

.method private resetVideoParameters()V
    .locals 3

    .line 1171
    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->resetFocus()V

    const/4 v0, 0x0

    .line 1172
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    const-wide/16 v1, 0x0

    .line 1173
    iput-wide v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceDetectTime:J

    const/4 v1, 0x0

    .line 1174
    iput v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    .line 1175
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNightHawkDetected:I

    return-void
.end method

.method private setFilterTime()V
    .locals 15

    .line 905
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 906
    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFilterCache:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 907
    iget-object v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v4, "filter_time"

    const-string v5, "key_camera_id"

    const-string v6, ""

    const-wide/16 v7, 0x3e8

    const-string v9, "key_time_duration"

    if-eqz v3, :cond_0

    .line 908
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 909
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterStartTime:J

    sub-long/2addr v11, v13

    div-long/2addr v11, v7

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 911
    iget-object v10, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    invoke-interface {v10, v4, v3}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 913
    :cond_0
    iget-object v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v3, :cond_1

    .line 914
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 915
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterStartTime:J

    sub-long/2addr v11, v13

    div-long/2addr v11, v7

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v9, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 917
    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    invoke-interface {v2, v4, v3}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    const-wide/16 v2, 0x0

    .line 919
    iput-wide v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterStartTime:J

    .line 920
    sget-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filter time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static setFrontWideCameraId(Ljava/lang/String;)V
    .locals 0

    .line 1248
    sput-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->sFrontWideCameraId:Ljava/lang/String;

    return-void
.end method

.method private setSuperNightFilterTime()V
    .locals 15

    .line 924
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 925
    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFilterSuperNightCache:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 926
    iget-object v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v4, "filter_supernight_time"

    const-string v5, "key_camera_id"

    const-string v6, ""

    const-wide/16 v7, 0x3e8

    const-string v9, "key_time_duration"

    if-eqz v3, :cond_0

    .line 927
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 928
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterSuperNightStartTime:J

    sub-long/2addr v11, v13

    div-long/2addr v11, v7

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 930
    iget-object v10, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    invoke-interface {v10, v4, v3}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 932
    :cond_0
    iget-object v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v3, :cond_1

    .line 933
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 934
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterSuperNightStartTime:J

    sub-long/2addr v11, v13

    div-long/2addr v11, v7

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v9, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    invoke-virtual {v3, v5, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 936
    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    invoke-interface {v2, v4, v3}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    const-wide/16 v2, 0x0

    .line 938
    iput-wide v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterSuperNightStartTime:J

    .line 939
    sget-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filter time for super night"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public static setsWideCameraId(Ljava/lang/String;)V
    .locals 0

    .line 1240
    sput-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->sWideCameraId:Ljava/lang/String;

    return-void
.end method

.method private static simpleModeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    .line 780
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "."

    .line 781
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private updateFaceInfo()V
    .locals 4

    .line 785
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoSex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoAge:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->updateFaceInfo(Landroid/content/Context;)V

    .line 789
    iget v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoSex:I

    if-eq v0, v1, :cond_1

    .line 790
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 791
    iget v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoSex:I

    add-int/lit8 v2, v2, -0x1

    const-string v3, "key_sex_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 792
    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v3, "sex"

    invoke-interface {v2, v3, v0}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 794
    :cond_1
    iget v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoAge:I

    if-eq v0, v1, :cond_2

    .line 795
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 796
    iget v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoAge:I

    const-string v2, "key_age_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 797
    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v2, "age"

    invoke-interface {v1, v2, v0}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 799
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->resetFaceInfo()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public age(I)V
    .locals 0

    .line 838
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoAge:I

    const/4 p1, 0x1

    .line 839
    iput-boolean p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoDetected:Z

    return-void
.end method

.method public ar3xCapture(Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 455
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 456
    iget-object v1, p1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;->effect:Ljava/lang/String;

    const-string v2, "key_ar3x_effect"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v1, p1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;->moduleId:Ljava/lang/String;

    const-string v2, "key_ar3x_module_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v1, p1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;->cameraId:Ljava/lang/String;

    const-string v2, "key_ar3x_camera_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v1, p1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;->background:Ljava/lang/String;

    const-string v2, "key_ar3x_ground"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v1, p1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;->express:Ljava/lang/String;

    const-string v2, "key_ar3x_express"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v1, p1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;->size:Ljava/lang/String;

    const-string v2, "key_ar3x_size"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->OOBE_CONTRY:Ljava/lang/String;

    const-string v2, "key_ar3x_country_code"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v2, "ar3x_capture"

    if-eqz v1, :cond_1

    .line 465
    invoke-interface {v1, v2, v0}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 467
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz p0, :cond_2

    .line 468
    invoke-interface {p0, v2, v0}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 472
    :cond_2
    sget-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ar3xCapture info :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public ar3xRecord(Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XVideoInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 480
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 481
    iget-object v1, p1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;->effect:Ljava/lang/String;

    const-string v2, "key_ar3x_effect"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v1, p1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;->moduleId:Ljava/lang/String;

    const-string v2, "key_ar3x_module_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v1, p1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;->cameraId:Ljava/lang/String;

    const-string v2, "key_ar3x_camera_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v1, p1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;->background:Ljava/lang/String;

    const-string v2, "key_ar3x_ground"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v1, p1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;->express:Ljava/lang/String;

    const-string v2, "key_ar3x_express"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v1, p1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;->size:Ljava/lang/String;

    const-string v2, "key_ar3x_size"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget v1, p1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XVideoInfo;->recordTime:F

    const-string v2, "key_ar3x_record_time"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 488
    iget-object v1, p1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XVideoInfo;->magicVoiceType:Ljava/lang/String;

    const-string v2, "key_ar3x_magic_voice_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->OOBE_CONTRY:Ljava/lang/String;

    const-string v2, "key_ar3x_country_code"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v1, :cond_1

    const-string v2, "ar3x_recorder"

    .line 491
    invoke-interface {v1, v2, v0}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 494
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz p0, :cond_2

    const-string v1, "ar2_recorder"

    .line 495
    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 499
    :cond_2
    sget-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ar3xRecorder info :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XVideoInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public captureDone()V
    .locals 23

    move-object/from16 v0, p0

    .line 528
    iget-object v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeName:Ljava/lang/String;

    invoke-static {v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->simpleModeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 529
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mStartCaptureTime:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureTime:I

    .line 530
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->checkFaceValid()V

    .line 531
    iget-object v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v3, "key_super_definition"

    const-string v4, "key_face_beauty"

    const-string v5, "key_self_timer"

    const-string v6, "key_hdr"

    const-string v7, "key_supernight_filter"

    const-string v8, "key_filter"

    const-string v9, "key_picture_ratio"

    const-string v10, "key_camera_zoom"

    const-string v11, "key_asd_effect"

    const-string v12, "key_asd"

    const-string v13, "key_mode"

    const-string v14, "key_camera_id"

    const/16 v16, 0x6

    const/16 v17, 0x5

    const/16 v18, 0x0

    const/16 v19, 0x1

    if-eqz v2, :cond_8

    .line 532
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 533
    iget-object v15, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-virtual {v2, v13, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget v15, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdValue:I

    invoke-virtual {v2, v12, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 536
    iget v15, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdEffect:I

    invoke-virtual {v2, v11, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 537
    iget v15, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mZoomValue:I

    invoke-virtual {v2, v10, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 538
    iget-object v15, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPictureRatioValue:Ljava/lang/String;

    invoke-virtual {v2, v9, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-object v15, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterValue:Ljava/lang/String;

    invoke-virtual {v2, v8, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    iget-object v15, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSuperNightFilterValue:Ljava/lang/String;

    invoke-virtual {v2, v7, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v15, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdrValue:Ljava/lang/String;

    invoke-virtual {v2, v6, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v15, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSelfTimerValue:Ljava/lang/String;

    invoke-virtual {v2, v5, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v15, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;

    invoke-interface {v15}, Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;->getReportValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v4, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v15, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdValue:Ljava/lang/String;

    invoke-virtual {v2, v3, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v15, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSmileValue:Ljava/lang/String;

    move-object/from16 v20, v3

    const-string v3, "key_smile"

    invoke-virtual {v2, v3, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    const-string v15, "focus_num"

    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 547
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    const-string v15, "flash"

    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    const-string v15, "face_num"

    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 549
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    const v15, 0x461c4000    # 10000.0f

    mul-float/2addr v3, v15

    float-to-int v3, v3

    const-string v15, "face_ratio"

    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 550
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureTime:I

    const-string v15, "capture_duration"

    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 551
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdenHanceValue:Ljava/lang/String;

    const-string v15, "asd_enhance"

    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGenderValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const-string v15, "key_gender"

    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 553
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAgeValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v15, "key_age"

    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 554
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHumanEffectValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v15, "human_effect"

    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 555
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSkyType:I

    const-string v15, "magic_sky_type"

    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 557
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    if-eqz v3, :cond_0

    .line 558
    invoke-virtual {v3}, Lcom/transsion/camera/utils/analytics/CaptureExif;->analyticsFlash()I

    move-result v3

    const-string v15, "exif_flash"

    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 559
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    iget v3, v3, Lcom/transsion/camera/utils/analytics/CaptureExif;->mISOSpeed:I

    const-string v15, "exif_iso"

    invoke-virtual {v2, v15, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 560
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    move-object v15, v4

    iget-wide v3, v3, Lcom/transsion/camera/utils/analytics/CaptureExif;->mExposureTime:D

    const-wide v21, 0x412e848000000000L    # 1000000.0

    mul-double v3, v3, v21

    double-to-int v3, v3

    const-string v4, "exif_ev"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    move-object v15, v4

    .line 562
    :goto_0
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNightAlgo:I

    const-string v4, "night_algo"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 563
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSuperNightStable:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getSuperNightStable(Ljava/lang/String;)I

    move-result v3

    const-string v4, "night_value"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 564
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyValue:[I

    if-eqz v3, :cond_4

    .line 566
    array-length v4, v3

    move-object/from16 v21, v15

    const/4 v15, 0x2

    if-ge v4, v15, :cond_1

    .line 567
    aget v4, v3, v18

    const-string v15, "parameter_1"

    invoke-virtual {v2, v15, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 568
    :cond_1
    array-length v4, v3

    const/4 v15, 0x4

    if-lt v4, v15, :cond_2

    .line 569
    aget v4, v3, v18

    const-string v15, "parameter_4"

    invoke-virtual {v2, v15, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x3

    .line 570
    aget v15, v3, v4

    const-string v4, "parameter_5"

    invoke-virtual {v2, v4, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x2

    .line 571
    aget v15, v3, v4

    const-string v4, "parameter_6"

    invoke-virtual {v2, v4, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 572
    aget v4, v3, v19

    const-string v15, "parameter_7"

    invoke-virtual {v2, v15, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 574
    :cond_2
    :goto_1
    array-length v4, v3

    const/4 v15, 0x7

    if-lt v4, v15, :cond_3

    .line 575
    aget v4, v3, v17

    const-string v15, "parameter_15"

    invoke-virtual {v2, v15, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 576
    aget v4, v3, v16

    const-string v15, "parameter_16"

    invoke-virtual {v2, v15, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x4

    .line 577
    aget v15, v3, v4

    const-string v4, "parameter_17"

    invoke-virtual {v2, v4, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 579
    :cond_3
    array-length v4, v3

    const/16 v15, 0x8

    if-lt v4, v15, :cond_5

    const/4 v4, 0x7

    .line 580
    aget v3, v3, v4

    const-string v4, "parameter_18"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    move-object/from16 v21, v15

    .line 583
    :cond_5
    :goto_2
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimbodyValue:[I

    if-eqz v3, :cond_7

    .line 585
    array-length v4, v3

    const/4 v15, 0x3

    if-ge v4, v15, :cond_6

    .line 586
    aget v4, v3, v18

    const-string v15, "parameter_2"

    invoke-virtual {v2, v15, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 587
    aget v3, v3, v19

    const-string v4, "parameter_3"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    .line 588
    :cond_6
    array-length v4, v3

    const/4 v15, 0x7

    if-lt v4, v15, :cond_7

    .line 589
    aget v4, v3, v18

    const-string v15, "parameter_8"

    invoke-virtual {v2, v15, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 590
    aget v4, v3, v19

    const-string v15, "parameter_9"

    invoke-virtual {v2, v15, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x2

    .line 591
    aget v15, v3, v4

    const-string v4, "parameter_10"

    invoke-virtual {v2, v4, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x3

    .line 592
    aget v15, v3, v4

    const-string v4, "parameter_11"

    invoke-virtual {v2, v4, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x4

    .line 593
    aget v15, v3, v4

    const-string v4, "parameter_12"

    invoke-virtual {v2, v4, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 594
    aget v4, v3, v17

    const-string v15, "parameter_13"

    invoke-virtual {v2, v15, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 595
    aget v3, v3, v16

    const-string v4, "parameter_14"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 598
    :cond_7
    :goto_3
    iget-boolean v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenFlashShow:Z

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getScreenFlashValue(Z)I

    move-result v3

    const-string v4, "screen_flash"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 599
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mBvValue:I

    const-string v4, "bv_value"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 600
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLVValue:I

    const-string v4, "lv_value"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 601
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCCTValue:I

    const-string v4, "cct_value"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 602
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTintValue:I

    const-string v4, "tint_value"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 603
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAIDetection:I

    const-string v4, "key_ai_detection"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 604
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMakeUpValue:I

    const-string v4, "key_makeup"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 605
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMakeUpIntensityValue:F

    const-string v4, "key_makeup_intensity"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 606
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mBlurValue:Ljava/lang/String;

    const-string v4, "key_blur"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mClickZoomValue:I

    const-string v4, "key_click_zoom"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 608
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraNameValue:Ljava/lang/String;

    const-string v4, "key_camera_name"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureType:I

    const-string v4, "key_capture_type"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 610
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAIShutterValue:I

    const-string v4, "key_ai_shutter"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 611
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVIPCaptureValue:I

    const-string v4, "key_vip_value"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 612
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenType:I

    const-string v4, "key_screen_type"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 613
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLuminanceValue:I

    const-string v4, "key_luminance"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 614
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFrontDualFlashColorTemp:I

    const-string v4, "key_front_dual_flash_color_temp"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 615
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFrontDualFlashStrengthMode:I

    const-string v4, "key_front_dual_flash_strength_mode"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 616
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPortraitModeEnhanceValue:Ljava/lang/String;

    const-string v4, "key_portraitmode_enhance"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mShot2SeeTime:I

    const-string v4, "key_shot2see_time"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 618
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mEditWaterMarkBrandValue:Ljava/lang/String;

    const-string v4, "key_brand_watermark"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v4, "capture"

    invoke-interface {v3, v4, v2}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    :cond_8
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .line 622
    :goto_4
    iget-object v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v2, :cond_10

    .line 623
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 624
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v14, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 625
    invoke-virtual {v2, v13, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdValue:I

    invoke-virtual {v2, v12, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 627
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdEffect:I

    invoke-virtual {v2, v11, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 628
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mZoomValue:I

    invoke-virtual {v2, v10, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 629
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPictureRatioValue:Ljava/lang/String;

    invoke-virtual {v2, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterValue:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getFilterId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 631
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSuperNightFilterValue:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getSuperNightFilterId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 632
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdrValue:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getHdrId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 633
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSelfTimerValue:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getTimerId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 634
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;

    invoke-interface {v3}, Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;->getReportValueInt()I

    move-result v3

    move-object/from16 v4, v21

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 635
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v4, v20

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 636
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSmileValue:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getSmileValue(Ljava/lang/String;)I

    move-result v3

    const-string v4, "key_smile"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 637
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    const-string v4, "focus_num"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 638
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getFlashValue(Ljava/lang/String;)I

    move-result v3

    const-string v4, "flash"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 639
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    const-string v4, "face_num"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 640
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    const v4, 0x461c4000    # 10000.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    const-string v4, "face_ratio"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 641
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureTime:I

    const-string v4, "capture_duration"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 642
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdenHanceValue:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getAsdEnhanceValue(Ljava/lang/String;)I

    move-result v3

    const-string v4, "asd_enhance"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 643
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGenderValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const-string v4, "key_gender"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 644
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAgeValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "key_age"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 645
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHumanEffectValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "human_effect"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 646
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSkyType:I

    const-string v4, "magic_sky_type"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 648
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    if-eqz v3, :cond_9

    .line 649
    invoke-virtual {v3}, Lcom/transsion/camera/utils/analytics/CaptureExif;->analyticsFlash()I

    move-result v3

    const-string v4, "exif_flash"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 650
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    iget v3, v3, Lcom/transsion/camera/utils/analytics/CaptureExif;->mISOSpeed:I

    const-string v4, "exif_iso"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 651
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    iget-wide v3, v3, Lcom/transsion/camera/utils/analytics/CaptureExif;->mExposureTime:D

    const-wide v5, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    const-string v4, "exif_ev"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 653
    :cond_9
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNightAlgo:I

    const-string v4, "night_algo"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 654
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSuperNightStable:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getSuperNightStable(Ljava/lang/String;)I

    move-result v3

    const-string v4, "night_value"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 655
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyValue:[I

    if-eqz v3, :cond_d

    .line 657
    array-length v4, v3

    const/4 v5, 0x2

    if-ge v4, v5, :cond_a

    .line 658
    aget v4, v3, v18

    const-string v5, "parameter_1"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_5

    .line 659
    :cond_a
    array-length v4, v3

    const/4 v5, 0x4

    if-lt v4, v5, :cond_b

    .line 660
    aget v4, v3, v18

    const-string v5, "parameter_4"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x3

    .line 661
    aget v5, v3, v4

    const-string v4, "parameter_5"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x2

    .line 662
    aget v5, v3, v4

    const-string v4, "parameter_6"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 663
    aget v4, v3, v19

    const-string v5, "parameter_7"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 665
    :cond_b
    :goto_5
    array-length v4, v3

    const/4 v5, 0x7

    if-lt v4, v5, :cond_c

    .line 666
    aget v4, v3, v17

    const-string v5, "parameter_15"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 667
    aget v4, v3, v16

    const-string v5, "parameter_16"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x4

    .line 668
    aget v5, v3, v4

    const-string v4, "parameter_17"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 670
    :cond_c
    array-length v4, v3

    const/16 v5, 0x8

    if-lt v4, v5, :cond_d

    const/4 v4, 0x7

    .line 671
    aget v3, v3, v4

    const-string v4, "parameter_18"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 674
    :cond_d
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimbodyValue:[I

    if-eqz v3, :cond_f

    .line 676
    array-length v4, v3

    const/4 v5, 0x3

    if-ge v4, v5, :cond_e

    .line 677
    aget v4, v3, v18

    const-string v5, "parameter_2"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 678
    aget v3, v3, v19

    const-string v4, "parameter_3"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_6

    .line 679
    :cond_e
    array-length v4, v3

    const/4 v5, 0x7

    if-lt v4, v5, :cond_f

    .line 680
    aget v4, v3, v18

    const-string v5, "parameter_8"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 681
    aget v4, v3, v19

    const-string v5, "parameter_9"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x2

    .line 682
    aget v4, v3, v4

    const-string v5, "parameter_10"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x3

    .line 683
    aget v4, v3, v4

    const-string v5, "parameter_11"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x4

    .line 684
    aget v4, v3, v4

    const-string v5, "parameter_12"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 685
    aget v4, v3, v17

    const-string v5, "parameter_13"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 686
    aget v3, v3, v16

    const-string v4, "parameter_14"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 689
    :cond_f
    :goto_6
    iget-boolean v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenFlashShow:Z

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getScreenFlashValue(Z)I

    move-result v3

    const-string v4, "screen_flash"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 690
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mBvValue:I

    const-string v4, "bv_value"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 691
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLVValue:I

    const-string v4, "lv_value"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 692
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCCTValue:I

    const-string v4, "cct_value"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 693
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTintValue:I

    const-string v4, "tint_value"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 694
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAIDetection:I

    const-string v4, "key_ai_detection"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 695
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMakeUpValue:I

    const-string v4, "key_makeup"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 696
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMakeUpIntensityValue:F

    const-string v4, "key_makeup_intensity"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 697
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mBlurValue:Ljava/lang/String;

    const-string v4, "key_blur"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mClickZoomValue:I

    const-string v4, "key_click_zoom"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 699
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraNameValue:Ljava/lang/String;

    const-string v4, "key_camera_name"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureType:I

    const-string v4, "key_capture_type"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 701
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAIShutterValue:I

    const-string v4, "key_ai_shutter"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 702
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVIPCaptureValue:I

    const-string v4, "key_vip_value"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 703
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenType:I

    const-string v4, "key_screen_type"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 704
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLuminanceValue:I

    const-string v4, "key_luminance"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 705
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFrontDualFlashColorTemp:I

    const-string v4, "key_front_dual_flash_color_temp"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 706
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFrontDualFlashStrengthMode:I

    const-string v4, "key_front_dual_flash_strength_mode"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 707
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPortraitModeEnhanceValue:Ljava/lang/String;

    const-string v4, "key_portraitmode_enhance"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mShot2SeeTime:I

    const-string v4, "key_shot2see_time"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 709
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mEditWaterMarkBrandValue:Ljava/lang/String;

    const-string v4, "key_brand_watermark"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v4, "capture"

    invoke-interface {v3, v4, v2}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 713
    :cond_10
    sget-object v2, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mModeName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHdValue:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdValue:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ---:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdValue:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSmileValue:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSmileValue:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSmileValue:Ljava/lang/String;

    invoke-static {v4}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getSmileValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 716
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFocusCount:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[capture] mFaceInfoSex:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoSex:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mFaceInfoAge:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoAge:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  faceInfoDetected:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoDetected:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFlash:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    invoke-static {v4}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getFlashValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAsdenHanceValue:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdenHanceValue:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdenHanceValue:Ljava/lang/String;

    invoke-static {v4}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getAsdEnhanceValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mFaceCount:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMaxFaceRatio:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    const v5, 0x461c4000    # 10000.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 722
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCaptureTime:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureTime:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mGenderValue:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGenderValue:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAgeValue:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAgeValue:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 725
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAsdValue:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdValue:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAsdEffect:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdEffect:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSuperNightFilterValue:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSuperNightFilterValue:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHumanEffectValue:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHumanEffectValue:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 729
    iget-object v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    if-eqz v1, :cond_11

    .line 730
    invoke-virtual {v1}, Lcom/transsion/camera/utils/analytics/CaptureExif;->printLog()V

    .line 732
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMagicSkyType:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSkyType:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNightAlgo:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNightAlgo:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSuperNightStable:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSuperNightStable:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSuperNightStable:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getSuperNightStable(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 735
    iget-object v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyValue:[I

    if-eqz v1, :cond_12

    move/from16 v2, v18

    .line 737
    :goto_7
    array-length v3, v1

    if-ge v2, v3, :cond_12

    .line 738
    sget-object v3, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mFaceBeautyValue["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 741
    :cond_12
    iget-object v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimbodyValue:[I

    if-eqz v1, :cond_13

    move/from16 v2, v18

    .line 743
    :goto_8
    array-length v3, v1

    if-ge v2, v3, :cond_13

    .line 744
    sget-object v3, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSlimbodyValue["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 747
    :cond_13
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScreenFlashValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenFlashShow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBvValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mBvValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 749
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLVValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLVValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 750
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCCTValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCCTValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 751
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAIDetection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAIDetection:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCameraNameValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraNameValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCaputreType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 754
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAIShutterValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAIShutterValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 755
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScreenType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 756
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLuminanceValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLuminanceValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 757
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFrontDualFlashColorTemp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFrontDualFlashColorTemp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFrontDualFlashStrengthMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFrontDualFlashStrengthMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 759
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPortraitModeEnhanceValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPortraitModeEnhanceValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 760
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mShot2SeeTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mShot2SeeTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 761
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEditWaterMarkBrandValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mEditWaterMarkBrandValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 763
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->updateFaceInfo()V

    .line 764
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->resetCaptureParameters()V

    return-void
.end method

.method public dualVideo(I)V
    .locals 7

    .line 1966
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoStatus:I

    .line 1967
    iget-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v0, "dual_video"

    const-string v1, "key_dualvideo_windowcut_ratio"

    const-string v2, "key_dualvideo_window_style"

    const-string v3, "key_dualvideo_camera_names"

    const-string v4, "key_dualvideo_camera_ids"

    const-string v5, "key_dualvideo_status"

    if-eqz p1, :cond_0

    .line 1968
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1969
    iget v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoStatus:I

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1970
    iget-object v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoCameraIds:Ljava/lang/String;

    invoke-virtual {p1, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    iget-object v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoCameraNames:Ljava/lang/String;

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    iget v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoWindowStyle:I

    invoke-virtual {p1, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1973
    iget v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoWindowCutRatio:F

    invoke-virtual {p1, v1, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1974
    iget-object v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    invoke-interface {v6, v0, p1}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1976
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz p1, :cond_1

    .line 1977
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1978
    iget v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoStatus:I

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1979
    iget-object v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoCameraIds:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    iget-object v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoCameraNames:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    iget v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoWindowStyle:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1982
    iget v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoWindowCutRatio:F

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1983
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public focus()V
    .locals 2

    .line 1321
    iget v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    .line 1322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusTime:J

    return-void
.end method

.method public funRecordEvent(ZI)V
    .locals 3

    .line 1527
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1528
    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    const-string v2, "key_fun_camera_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSelectFunName:Ljava/lang/String;

    const-string v2, "key_fun_item_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSelectFunType:Ljava/lang/String;

    const-string v2, "key_fun_item_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    iget-boolean v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSelectFunHasMusic:Z

    const-string v2, "key_fun_item_has_music"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1532
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->OOBE_CONTRY:Ljava/lang/String;

    const-string v2, "key_fun_country"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    iget v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFunNetworkType:I

    const-string v2, "key_fun_network_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1535
    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;

    invoke-interface {v1}, Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;->getReportValueInt()I

    move-result v1

    const-string v2, "key_face_beauty"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1536
    iget-object v1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFunVideoSpeed:Ljava/lang/String;

    const-string v2, "key_fun_video_speed"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_fun_save_flag"

    .line 1537
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "key_fun_share_type"

    .line 1538
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1539
    iget-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFunVideoFilterValue:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getFilterId(Ljava/lang/String;)I

    move-result p1

    const-string p2, "key_filter"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "fun_record"

    .line 1540
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 0

    .line 849
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public isFaceBeautyMode()Z
    .locals 0

    .line 809
    iget-boolean p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsFaceBeautyMode:Z

    return p0
.end method

.method public isFaceInfoDetected()Z
    .locals 0

    .line 813
    iget-boolean p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoDetected:Z

    return p0
.end method

.method public movieOperation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1747
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v1, "movie"

    const-string v2, "key_movie_operation"

    const-string v3, "key_movie_theme"

    const-string v4, "key_camera_id"

    if-eqz v0, :cond_0

    .line 1748
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1749
    iget-object v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1750
    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    iget-object v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    invoke-interface {v5, v1, v0}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1755
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v0, :cond_1

    .line 1756
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1757
    iget-object v5, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1758
    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1763
    :cond_1
    sget-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movie theme:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1764
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "movie operation:  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public needFaceInfoDetection()Z
    .locals 4

    .line 817
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 821
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoDetected:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/analytics/storage/FaceInfo;->currentDayHasMaxDetectNumber(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 827
    :cond_2
    :goto_0
    sget-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[needFaceInfoDetection] needDetection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  faceInfoDetected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoDetected:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public notifyNightHawkDetected()V
    .locals 1

    const/4 v0, 0x1

    .line 1576
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNightHawkDetected:I

    return-void
.end method

.method public quitCameraResetValue()V
    .locals 1

    .line 1297
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->clearValue()V

    .line 1298
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMultiFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->clearValue()V

    return-void
.end method

.method public recordEnterMoreModeOperation(Ljava/lang/String;)V
    .locals 5

    .line 1773
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v1, "more_mode"

    const-string v2, "key_more_mode_display_type"

    const-string v3, "key_enter_more_mode"

    if-eqz v0, :cond_0

    .line 1774
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1775
    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    iget-object v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMoreModeDisplayType:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    iget-object v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    invoke-interface {v4, v1, v0}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1780
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v0, :cond_1

    .line 1781
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1782
    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    iget-object v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMoreModeDisplayType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1787
    :cond_1
    sget-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter more mode operation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public recordExitMoreModeOperation(Ljava/lang/String;)V
    .locals 4

    .line 1792
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v1, "more_mode"

    const-string v2, "key_exit_more_mode"

    if-eqz v0, :cond_0

    .line 1793
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1794
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    iget-object v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    invoke-interface {v3, v1, v0}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1798
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v0, :cond_1

    .line 1799
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1800
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    invoke-interface {p0, v1, v0}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1804
    :cond_1
    sget-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exit more mode operation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public resetCameraLaunchStartTime()V
    .locals 2

    const/4 v0, -0x1

    .line 1885
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraLaunchStartType:I

    const-wide/16 v0, 0x0

    .line 1886
    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraLaunchStartTime:J

    return-void
.end method

.method public resetFocus()V
    .locals 2

    const/4 v0, 0x0

    .line 1326
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    const-wide/16 v0, 0x0

    .line 1327
    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusTime:J

    return-void
.end method

.method public resetFunVideo()V
    .locals 1

    const/4 v0, 0x0

    .line 1498
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSelectFunName:Ljava/lang/String;

    const-string v0, ""

    .line 1499
    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSelectFunType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1500
    iput-boolean v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSelectFunHasMusic:Z

    .line 1502
    invoke-direct {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->resetFunDownload()V

    .line 1503
    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFunNetworkType:I

    return-void
.end method

.method public selectFunItem(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1484
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSelectFunName:Ljava/lang/String;

    .line 1485
    iput-object p2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSelectFunType:Ljava/lang/String;

    .line 1486
    iput-boolean p3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSelectFunHasMusic:Z

    return-void
.end method

.method public setASDalgorithmResult(I)V
    .locals 0

    .line 861
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdValue:I

    return-void
.end method

.method public setASDeffect(I)V
    .locals 0

    .line 865
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdEffect:I

    return-void
.end method

.method public setAgeValue(Ljava/lang/String;)V
    .locals 0

    .line 1454
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAgeValue:Ljava/lang/String;

    return-void
.end method

.method public setAntiVideoValue(Ljava/lang/String;)V
    .locals 0

    .line 951
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAntiVideoValue:Ljava/lang/String;

    return-void
.end method

.method public setAutoWaterMarkValue(Ljava/lang/String;)V
    .locals 0

    .line 2032
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAutoWaterMarkValue:Ljava/lang/String;

    return-void
.end method

.method public setBlurValue(Ljava/lang/String;)V
    .locals 0

    .line 1836
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mBlurValue:Ljava/lang/String;

    return-void
.end method

.method public setBodySlimDone()V
    .locals 0

    .line 1269
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->setBodySlim()V

    return-void
.end method

.method public setButtPlumpDone()V
    .locals 0

    .line 1285
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->setButtPlump()V

    return-void
.end method

.method public setBvValue(I)V
    .locals 0

    .line 1809
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mBvValue:I

    add-int/lit8 p1, p1, 0x32

    .line 1810
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLVValue:I

    return-void
.end method

.method public setCCTValue(I)V
    .locals 0

    .line 1814
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCCTValue:I

    return-void
.end method

.method public setCameraEndTime()V
    .locals 9

    .line 1183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1184
    iget-wide v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 1185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1186
    iget-wide v6, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraStartTime:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x1f4

    cmp-long v6, v0, v6

    if-lez v6, :cond_2

    .line 1188
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    long-to-int v7, v0

    const-string v8, "key_time_duration"

    .line 1189
    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1190
    iget-object v7, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v8, "camera_time"

    if-eqz v7, :cond_0

    .line 1191
    invoke-interface {v7, v8, v6}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1193
    :cond_0
    iget-object v7, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v7, :cond_1

    .line 1194
    invoke-interface {v7, v8, v6}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1196
    :cond_1
    sget-object v6, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setCameraEndTime] cameraTimeTemp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1198
    :cond_2
    iput-wide v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraStartTime:J

    .line 1199
    sget-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "camera time "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1201
    :cond_3
    iget-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterStartTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_4

    .line 1202
    invoke-direct {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFilterTime()V

    .line 1205
    :cond_4
    iget-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterSuperNightStartTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    .line 1206
    invoke-direct {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSuperNightFilterTime()V

    :cond_5
    return-void
.end method

.method public setCameraId(Ljava/lang/String;)V
    .locals 1

    .line 843
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 844
    :try_start_0
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    .line 845
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setCameraLaunchEndTime()V
    .locals 26

    move-object/from16 v0, p0

    .line 1890
    iget v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraLaunchStartType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 1893
    :cond_0
    iget-object v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeName:Ljava/lang/String;

    invoke-static {v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->simpleModeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1894
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v4, "camera_launch_time"

    const-string v5, "key_transsion_filter"

    const-string v6, "key_filter"

    const-string v7, "key_portraitmode_enhance"

    const-string v8, "key_super_definition"

    const-string v9, "key_video_hdr"

    const-string v10, "key_hdr"

    const-string v11, "flash"

    const-string v12, "key_video_enhance_yuv"

    const-string v13, "key_video_enhance"

    const-string v14, "asd_enhance"

    const-string v15, "key_anti_video"

    const-string v2, "key_camera_name"

    move-object/from16 v16, v4

    const-string v4, "key_mode"

    move-object/from16 v17, v5

    const-string v5, "key_camera_id"

    move-object/from16 v18, v6

    const-string v6, "key_camera_launch_type"

    move-object/from16 v19, v7

    const-string v7, ""

    move-object/from16 v20, v8

    const-string v8, "key_time_duration"

    if-eqz v3, :cond_1

    .line 1895
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v21, v9

    .line 1896
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v24, v10

    move-object/from16 v25, v11

    iget-wide v10, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraLaunchStartTime:J

    sub-long v10, v22, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1897
    iget v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraLaunchStartType:I

    invoke-virtual {v3, v6, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1898
    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    invoke-virtual {v3, v5, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1900
    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraNameValue:Ljava/lang/String;

    invoke-virtual {v3, v2, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1901
    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAntiVideoValue:Ljava/lang/String;

    invoke-static {v9}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getAntivideoValue(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v3, v15, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1902
    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdenHanceValue:Ljava/lang/String;

    invoke-virtual {v3, v14, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoEnhanceValue:Ljava/lang/String;

    invoke-virtual {v3, v13, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getVideoEnhanceYUVDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v12, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    invoke-static {v9}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getFlashValue(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v10, v25

    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1906
    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdrValue:Ljava/lang/String;

    invoke-static {v9}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getHdrId(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v11, v24

    invoke-virtual {v3, v11, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1907
    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoHDRValue:Ljava/lang/String;

    invoke-static {v9}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoVideoHdrValue(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v11, v21

    invoke-virtual {v3, v11, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1908
    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdValue:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v11, v20

    invoke-virtual {v3, v11, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1909
    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPortraitModeEnhanceValue:Ljava/lang/String;

    move-object/from16 v11, v19

    invoke-virtual {v3, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterValue:Ljava/lang/String;

    move-object/from16 v11, v18

    invoke-virtual {v3, v11, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    iget v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTranssionFilterValue:I

    move-object/from16 v11, v17

    invoke-virtual {v3, v11, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1912
    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    move-object/from16 v11, v16

    invoke-interface {v9, v11, v3}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    move-object/from16 v21, v9

    move-object/from16 v24, v10

    move-object v10, v11

    move-object/from16 v11, v16

    .line 1914
    :goto_0
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v3, :cond_2

    .line 1915
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1916
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v25, v10

    move-object/from16 v16, v11

    iget-wide v10, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraLaunchStartTime:J

    sub-long v10, v22, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    iget v7, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraLaunchStartType:I

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1918
    iget-object v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraNameValue:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    iget-object v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAntiVideoValue:Ljava/lang/String;

    invoke-static {v2}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getAntivideoValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v15, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1922
    iget-object v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdenHanceValue:Ljava/lang/String;

    invoke-virtual {v3, v14, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    iget-object v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoEnhanceValue:Ljava/lang/String;

    invoke-virtual {v3, v13, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getVideoEnhanceYUVDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v12, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1925
    iget-object v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    invoke-static {v2}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getFlashValue(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v4, v25

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1926
    iget-object v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdrValue:Ljava/lang/String;

    invoke-static {v2}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getHdrId(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v4, v24

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1927
    iget-object v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoHDRValue:Ljava/lang/String;

    invoke-static {v2}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoVideoHdrValue(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v4, v21

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1928
    iget-object v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdValue:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v4, v20

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1929
    iget-object v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPortraitModeEnhanceValue:Ljava/lang/String;

    move-object/from16 v4, v19

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    iget-object v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterValue:Ljava/lang/String;

    move-object/from16 v4, v18

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    iget v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTranssionFilterValue:I

    move-object/from16 v4, v17

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1932
    iget-object v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    move-object/from16 v4, v16

    invoke-interface {v2, v4, v3}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1935
    :cond_2
    sget-object v2, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "camera launch time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraLaunchStartTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1936
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCameraLaunchStartType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraLaunchStartType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1937
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCameraId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1938
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modeName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1939
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCameraNameValue "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraNameValue:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAntiVideoValue "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAntiVideoValue:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getAntivideoValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAsdenHanceValue "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAsdenHanceValue:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoEnhanceDescription() "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getVideoEnhanceDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoEnhanceYUVDescription() "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getVideoEnhanceYUVDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFlash "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHdrValue "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdrValue:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoHDRValue "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoHDRValue:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1947
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHdValue "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdValue:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPortraitModeEnhanceValue "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPortraitModeEnhanceValue:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFilterValue "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterValue:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTranssionFilterValue "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTranssionFilterValue:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 1952
    iput v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraLaunchStartType:I

    const-wide/16 v1, 0x0

    .line 1953
    iput-wide v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraLaunchStartTime:J

    return-void
.end method

.method public setCameraLaunchStartTime(I)V
    .locals 2

    .line 1878
    iget v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraLaunchStartType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1879
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraLaunchStartTime:J

    .line 1880
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraLaunchStartType:I

    :cond_0
    return-void
.end method

.method public setCameraNameValue(Ljava/lang/String;)V
    .locals 0

    .line 2012
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraNameValue:Ljava/lang/String;

    return-void
.end method

.method public setCameraStartTime()V
    .locals 2

    .line 1179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraStartTime:J

    return-void
.end method

.method public setCaptureExif(Lcom/transsion/camera/utils/analytics/CaptureExif;)V
    .locals 0

    .line 1434
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureExif:Lcom/transsion/camera/utils/analytics/CaptureExif;

    return-void
.end method

.method public setCaptureType(I)V
    .locals 0

    .line 2016
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCaptureType:I

    return-void
.end method

.method public setClickIconId(I)V
    .locals 4

    .line 1401
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeName:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->simpleModeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1402
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_icon_click"

    .line 1403
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "key_mode"

    .line 1404
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v3, "click"

    if-eqz v2, :cond_0

    .line 1406
    invoke-interface {v2, v3, v1}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1408
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz p0, :cond_1

    .line 1409
    invoke-interface {p0, v3, v1}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1412
    :cond_1
    sget-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClickIconId id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " modeName:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setClickIconId(ILjava/lang/String;)V
    .locals 4

    .line 1417
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeName:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->simpleModeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1418
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_icon_click"

    .line 1419
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "key_icon_click_value"

    .line 1420
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_mode"

    .line 1421
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v3, "click"

    if-eqz v2, :cond_0

    .line 1423
    invoke-interface {v2, v3, v1}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1425
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz p0, :cond_1

    .line 1426
    invoke-interface {p0, v3, v1}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1429
    :cond_1
    sget-object p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClickIconId id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " modeName:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setClickZoomValue(I)V
    .locals 0

    .line 2008
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mClickZoomValue:I

    return-void
.end method

.method public setDualVideoCameraIds(Ljava/lang/String;)V
    .locals 0

    .line 1988
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoCameraIds:Ljava/lang/String;

    return-void
.end method

.method public setDualVideoCameraNames(Ljava/lang/String;)V
    .locals 0

    .line 1992
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoCameraNames:Ljava/lang/String;

    return-void
.end method

.method public setDualVideoWindowCutRatio(F)V
    .locals 0

    .line 2000
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoWindowCutRatio:F

    return-void
.end method

.method public setDualVideoWindowStyle(I)V
    .locals 0

    .line 1996
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mDualVideoWindowStyle:I

    return-void
.end method

.method public setEditWaterMarkBrandValue(Ljava/lang/String;)V
    .locals 0

    .line 2056
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mEditWaterMarkBrandValue:Ljava/lang/String;

    return-void
.end method

.method public setFaceBeautyEndTime()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1217
    iput-boolean v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsFaceBeautyMode:Z

    .line 1219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1220
    iget-wide v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyStartTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 1221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1222
    iget-object v7, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v8, "facebeauty_time"

    const-string v9, "key_camera_id"

    const-string v10, ""

    const-wide/16 v11, 0x3e8

    const-string v13, "key_time_duration"

    if-eqz v7, :cond_0

    .line 1223
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1224
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyStartTime:J

    sub-long v5, v1, v5

    div-long/2addr v5, v11

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v13, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFacebeautyCache:Ljava/lang/String;

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    invoke-interface {v5, v8, v7}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1228
    :cond_0
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v5, :cond_1

    .line 1229
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1230
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v14, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyStartTime:J

    sub-long/2addr v1, v14

    div-long/2addr v1, v11

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v13, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    iget-object v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFacebeautyCache:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v9, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1232
    iget-object v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    invoke-interface {v1, v8, v5}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    const-wide/16 v1, 0x0

    .line 1234
    iput-wide v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyStartTime:J

    .line 1235
    sget-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "facebeauty time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setFaceBeautyStartTime()V
    .locals 2

    .line 1211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyStartTime:J

    .line 1212
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFacebeautyCache:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1213
    iput-boolean v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mIsFaceBeautyMode:Z

    return-void
.end method

.method public setFaceBeautyValue(Ljava/lang/String;)V
    .locals 1

    .line 1256
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNormalFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/analytics/beauty/NormalFaceBeauty;->setFaceBeautyValue(Ljava/lang/String;)V

    .line 1257
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->setFaceBeautyValue(Ljava/lang/String;)V

    return-void
.end method

.method public setFilterValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 877
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterValue:Ljava/lang/String;

    .line 878
    iget-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "0"

    if-eqz v0, :cond_1

    .line 879
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFilterCache:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFilterCache:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 881
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setFilterTime()V

    .line 884
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterStartTime:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 885
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterStartTime:J

    .line 886
    iput-object p2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFilterCache:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public setFlash(Ljava/lang/String;)V
    .locals 0

    .line 1317
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    return-void
.end method

.method public setFrontDualFlashColorTemp(I)V
    .locals 0

    .line 2040
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFrontDualFlashColorTemp:I

    return-void
.end method

.method public setFrontDualFlashStrengthMode(I)V
    .locals 0

    .line 2044
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFrontDualFlashStrengthMode:I

    return-void
.end method

.method public setFunVideoFilterValue(Ljava/lang/String;)V
    .locals 0

    .line 1523
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFunVideoFilterValue:Ljava/lang/String;

    return-void
.end method

.method public setGenderValue(Ljava/lang/String;)V
    .locals 0

    .line 1450
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGenderValue:Ljava/lang/String;

    return-void
.end method

.method public setGuideFragmentEndTime()V
    .locals 6

    .line 1961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGuideFragmentStartTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    .line 1962
    sget-object v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "guide fragment time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGuideFragmentStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setGuideFragmentStartTime()V
    .locals 2

    .line 1957
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mGuideFragmentStartTime:J

    return-void
.end method

.method public setHdValue(Ljava/lang/String;)V
    .locals 0

    .line 947
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdValue:Ljava/lang/String;

    return-void
.end method

.method public setHdrValue(Ljava/lang/String;)V
    .locals 0

    .line 975
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mHdrValue:Ljava/lang/String;

    return-void
.end method

.method public setHeadShrinkDone()V
    .locals 0

    .line 1273
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->setHeadShrink()V

    return-void
.end method

.method public setLegLengthenDone()V
    .locals 0

    .line 1293
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->setLegLengthen()V

    return-void
.end method

.method public setLegSlimDone()V
    .locals 0

    .line 1289
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->setLegSlim()V

    return-void
.end method

.method public setLuminanceValue(I)V
    .locals 0

    .line 2036
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLuminanceValue:I

    return-void
.end method

.method public setMakeUpValue(IF)V
    .locals 0

    .line 1826
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMakeUpValue:I

    .line 1827
    iput p2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMakeUpIntensityValue:F

    return-void
.end method

.method public setModeName(Ljava/lang/String;)V
    .locals 0

    .line 853
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeName:Ljava/lang/String;

    return-void
.end method

.method public setModePauseTime(Ljava/lang/String;)V
    .locals 7

    .line 1370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1371
    iget-wide v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeReumeTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0x3e8

    .line 1374
    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 1375
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->duration(ILjava/lang/String;)V

    .line 1377
    :cond_0
    iput-wide v4, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeReumeTime:J

    :cond_1
    return-void
.end method

.method public setModeResumeTime()V
    .locals 2

    .line 1366
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeReumeTime:J

    return-void
.end method

.method public setMoreModeDisplayType(Ljava/lang/String;)V
    .locals 0

    .line 1769
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMoreModeDisplayType:Ljava/lang/String;

    return-void
.end method

.method public setMultiBeautyValue([I)V
    .locals 0

    .line 1446
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyValue:[I

    return-void
.end method

.method public setMultiFBMode(Ljava/lang/String;)V
    .locals 0

    .line 1306
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMultiFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/beauty/MultiFaceBeauty;->setMode(Ljava/lang/String;)V

    return-void
.end method

.method public setPictureRatioValue(Ljava/lang/String;)V
    .locals 0

    .line 873
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPictureRatioValue:Ljava/lang/String;

    return-void
.end method

.method public setPortraitModeEnhanceValue(Ljava/lang/String;)V
    .locals 0

    .line 2048
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mPortraitModeEnhanceValue:Ljava/lang/String;

    return-void
.end method

.method public setScreenFlashMode(Z)V
    .locals 0

    .line 1572
    iput-boolean p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenFlashShow:Z

    return-void
.end method

.method public setSelfTimerValue(Ljava/lang/String;)V
    .locals 0

    .line 979
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSelfTimerValue:Ljava/lang/String;

    return-void
.end method

.method public setShot2SeeEndTime()V
    .locals 4

    .line 2052
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mStartCaptureTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mShot2SeeTime:I

    return-void
.end method

.method public setShoulderSlimDone()V
    .locals 0

    .line 1277
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->setShoulderSlim()V

    return-void
.end method

.method public setSkyType(I)V
    .locals 0

    .line 1458
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSkyType:I

    return-void
.end method

.method public setSlimBodyEnable(Z)V
    .locals 0

    .line 1261
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/beauty/AbstractFaceBeauty;->setEnable(Z)V

    return-void
.end method

.method public setSlimBodyMode(I)V
    .locals 0

    .line 1265
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->setMode(I)V

    return-void
.end method

.method public setSlimbodyValue([I)V
    .locals 0

    .line 1442
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimbodyValue:[I

    return-void
.end method

.method public setSlowMotionFps(I)V
    .locals 0

    .line 1358
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlowMotionFps:I

    return-void
.end method

.method public setSuperNightFilterValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 891
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSuperNightFilterValue:Ljava/lang/String;

    .line 892
    iget-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterSuperNightStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, "0"

    if-eqz v0, :cond_1

    .line 893
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFilterSuperNightCache:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 894
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFilterSuperNightCache:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 895
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setSuperNightFilterTime()V

    .line 898
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterSuperNightStartTime:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 899
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFilterSuperNightStartTime:J

    .line 900
    iput-object p2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraIdFilterSuperNightCache:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public setTintValue(I)V
    .locals 0

    .line 1818
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTintValue:I

    return-void
.end method

.method public setTranssionFilterValue(I)V
    .locals 0

    .line 1840
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTranssionFilterValue:I

    return-void
.end method

.method public setVideoBeautyValue(Ljava/lang/String;)V
    .locals 0

    .line 955
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoBeautyValue:Ljava/lang/String;

    return-void
.end method

.method public setVideoFrameValue(I)V
    .locals 0

    .line 1848
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoFrameValue:I

    return-void
.end method

.method public setVideoMakeUpValue(IF)V
    .locals 0

    .line 1831
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoMakeUpValue:I

    .line 1832
    iput p2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoMakeUpIntensityValue:F

    return-void
.end method

.method public setVideoPortraitLevelValue(I)V
    .locals 0

    .line 2004
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPortraitLevelValue:I

    return-void
.end method

.method public setVideoPortraitValue(Ljava/lang/String;)V
    .locals 0

    .line 959
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPortraitValue:Ljava/lang/String;

    return-void
.end method

.method public setVideoTimeLapseDuration(Ljava/lang/String;)V
    .locals 0

    .line 971
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoTimeLapseDuration:Ljava/lang/String;

    return-void
.end method

.method public setVideoTimeLapseRate(Ljava/lang/String;)V
    .locals 0

    .line 967
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoTimeLapseRate:Ljava/lang/String;

    return-void
.end method

.method public setWaistSlimDone()V
    .locals 0

    .line 1281
    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimBody:Lcom/transsion/camera/utils/analytics/beauty/SlimBody;

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/beauty/SlimBody;->setWaistSlim()V

    return-void
.end method

.method public setZoomValue(Ljava/lang/String;)V
    .locals 0

    .line 869
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mZoomValue:I

    return-void
.end method

.method public sex(I)V
    .locals 0

    .line 833
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoSex:I

    const/4 p1, 0x1

    .line 834
    iput-boolean p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceInfoDetected:Z

    return-void
.end method

.method public startCapture()V
    .locals 2

    .line 524
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mStartCaptureTime:J

    return-void
.end method

.method public superNightAlgorithm(I)V
    .locals 0

    .line 1354
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNightAlgo:I

    return-void
.end method

.method public superNightStable(Ljava/lang/String;)V
    .locals 0

    .line 1350
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSuperNightStable:Ljava/lang/String;

    return-void
.end method

.method public thermalWaring(I)V
    .locals 4

    .line 1580
    iget-object v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeName:Ljava/lang/String;

    invoke-static {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->simpleModeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1581
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1582
    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "key_camera_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1583
    iget-object v2, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    invoke-static {v2}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getFlashValue(Ljava/lang/String;)I

    move-result v2

    const-string v3, "flash"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "key_mode"

    .line 1584
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_temp_warning_type"

    .line 1585
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "thermal_warning"

    .line 1586
    invoke-direct {p0, v2, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1588
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thermalWaring:modeName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mFlash:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " type:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public updateCurrentScreenType(I)V
    .locals 0

    .line 2028
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenType:I

    return-void
.end method

.method public updateFaceCount(I)V
    .locals 2

    .line 1341
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    .line 1342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceDetectTime:J

    return-void
.end method

.method public updateMaxFaceRatio(F)V
    .locals 0

    .line 1346
    iput p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    return-void
.end method

.method public updateVideoSpeedValue(Ljava/lang/String;)V
    .locals 0

    .line 1515
    iput-object p1, p0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFunVideoSpeed:Ljava/lang/String;

    return-void
.end method

.method public video(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 27

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    .line 987
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 988
    invoke-static/range {p2 .. p2}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoQuality(Ljava/lang/String;)I

    move-result v5

    .line 989
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->checkFaceValid()V

    .line 990
    iget-object v6, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mModeName:Ljava/lang/String;

    invoke-static {v6}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->simpleModeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 991
    iget-object v7, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v8, "key_ar_voice_id"

    const-string v9, "focus_num"

    const-string v10, "key_slowmotion_fps"

    const-string v11, "key_video_quality"

    const-string v12, "key_video_duration"

    const-string v13, "key_video_mode"

    const-string v14, "key_video_hdr"

    const-string v15, "key_video_portrait"

    move-wide/from16 v16, v3

    const-string v3, "key_video_facebeauty"

    const-string v4, "key_anti_video"

    move-object/from16 v18, v8

    const-string v8, "key_camera_id"

    const/16 v19, 0x6

    const/16 v20, 0x5

    move-object/from16 v21, v9

    const-string v9, "0"

    const/16 v22, 0x1

    move-object/from16 v23, v9

    const/16 v24, 0x0

    if-eqz v7, :cond_9

    .line 992
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 993
    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAntiVideoValue:Ljava/lang/String;

    invoke-virtual {v7, v4, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoBeautyValue:Ljava/lang/String;

    invoke-virtual {v7, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPortraitValue:Ljava/lang/String;

    invoke-virtual {v7, v15, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoHDRValue:Ljava/lang/String;

    invoke-virtual {v7, v14, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    invoke-virtual {v7, v13, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    long-to-int v9, v1

    .line 999
    div-int/lit16 v9, v9, 0x3e8

    invoke-virtual {v7, v12, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1000
    invoke-virtual {v7, v11, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1001
    iget v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlowMotionFps:I

    invoke-virtual {v7, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1002
    iget v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    move-object/from16 v25, v10

    move-object/from16 v10, v21

    invoke-virtual {v7, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1003
    iget v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mArcoreAudioId:I

    move-object/from16 v10, v18

    invoke-virtual {v7, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1004
    iget v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    const-string v10, "face_num"

    invoke-virtual {v7, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1005
    iget v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    const v10, 0x461c4000    # 10000.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const-string v10, "face_ratio"

    invoke-virtual {v7, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1006
    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    invoke-static {v9}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getFlashValue(Ljava/lang/String;)I

    move-result v9

    const-string v10, "flash"

    invoke-virtual {v7, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1007
    iget v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mZoomValue:I

    const-string v10, "key_camera_zoom"

    invoke-virtual {v7, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1008
    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoTimeLapseRate:Ljava/lang/String;

    move-object/from16 v10, v23

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "auto"

    goto :goto_0

    :cond_0
    iget-object v9, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoTimeLapseRate:Ljava/lang/String;

    :goto_0
    move/from16 v23, v5

    const-string v5, "key_time_lapse_rate"

    invoke-virtual {v7, v5, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoTimeLapseDuration:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "unlimited"

    goto :goto_1

    :cond_1
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoTimeLapseDuration:Ljava/lang/String;

    :goto_1
    const-string v9, "key_time_lapse_setting_duration"

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNightHawkDetected:I

    const-string v9, "night_hawk"

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1011
    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoMakeUpValue:I

    const-string v9, "key_video_makeup"

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1012
    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoMakeUpIntensityValue:F

    const-string v9, "key_video_makeup_intensity"

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1013
    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTranssionFilterValue:I

    const-string v9, "key_transsion_filter"

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1014
    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoEffectValue:I

    const-string v9, "key_video_effect"

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1015
    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoFrameValue:I

    const-string v9, "key_video_frame"

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1016
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getVideoEnhanceDescription()Ljava/lang/String;

    move-result-object v5

    const-string v9, "key_video_enhance"

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getVideoEnhanceYUVDescription()Ljava/lang/String;

    move-result-object v5

    const-string v9, "key_video_enhance_yuv"

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPortraitLevelValue:I

    const-string v9, "key_video_portrait_level"

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1019
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraNameValue:Ljava/lang/String;

    const-string v9, "key_camera_name"

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVIPCaptureValue:I

    const-string v9, "key_vip_value"

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1021
    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenType:I

    const-string v9, "key_screen_type"

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1022
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAutoWaterMarkValue:Ljava/lang/String;

    const-string v9, "key_auto_watermark"

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;

    invoke-interface {v5}, Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;->getReportValue()Ljava/lang/String;

    move-result-object v5

    const-string v9, "key_face_beauty"

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyValue:[I

    if-eqz v5, :cond_5

    .line 1026
    array-length v9, v5

    move-object/from16 v26, v10

    const/4 v10, 0x2

    if-ge v9, v10, :cond_2

    .line 1027
    aget v9, v5, v24

    const-string v10, "parameter_1"

    invoke-virtual {v7, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    .line 1028
    :cond_2
    array-length v9, v5

    const/4 v10, 0x4

    if-lt v9, v10, :cond_3

    .line 1029
    aget v9, v5, v24

    const-string v10, "parameter_4"

    invoke-virtual {v7, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v9, 0x3

    .line 1030
    aget v10, v5, v9

    const-string v9, "parameter_5"

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v9, 0x2

    .line 1031
    aget v10, v5, v9

    const-string v9, "parameter_6"

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1032
    aget v9, v5, v22

    const-string v10, "parameter_7"

    invoke-virtual {v7, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1034
    :cond_3
    :goto_2
    array-length v9, v5

    const/4 v10, 0x7

    if-lt v9, v10, :cond_4

    .line 1035
    aget v9, v5, v20

    const-string v10, "parameter_15"

    invoke-virtual {v7, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1036
    aget v9, v5, v19

    const-string v10, "parameter_16"

    invoke-virtual {v7, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v9, 0x4

    .line 1037
    aget v10, v5, v9

    const-string v9, "parameter_17"

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1039
    :cond_4
    array-length v9, v5

    const/16 v10, 0x8

    if-lt v9, v10, :cond_6

    const/4 v9, 0x7

    .line 1040
    aget v5, v5, v9

    const-string v9, "parameter_18"

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    :cond_5
    move-object/from16 v26, v10

    .line 1043
    :cond_6
    :goto_3
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimbodyValue:[I

    if-eqz v5, :cond_8

    .line 1045
    array-length v9, v5

    const/4 v10, 0x3

    if-ge v9, v10, :cond_7

    .line 1046
    aget v9, v5, v24

    const-string v10, "parameter_2"

    invoke-virtual {v7, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1047
    aget v5, v5, v22

    const-string v9, "parameter_3"

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4

    .line 1048
    :cond_7
    array-length v9, v5

    const/4 v10, 0x7

    if-lt v9, v10, :cond_8

    .line 1049
    aget v9, v5, v24

    const-string v10, "parameter_8"

    invoke-virtual {v7, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1050
    aget v9, v5, v22

    const-string v10, "parameter_9"

    invoke-virtual {v7, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v9, 0x2

    .line 1051
    aget v10, v5, v9

    const-string v9, "parameter_10"

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v9, 0x3

    .line 1052
    aget v10, v5, v9

    const-string v9, "parameter_11"

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v9, 0x4

    .line 1053
    aget v10, v5, v9

    const-string v9, "parameter_12"

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1054
    aget v9, v5, v20

    const-string v10, "parameter_13"

    invoke-virtual {v7, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1055
    aget v5, v5, v19

    const-string v9, "parameter_14"

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1058
    :cond_8
    :goto_4
    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLuminanceValue:I

    const-string v9, "key_luminance"

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1059
    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFrontDualFlashColorTemp:I

    const-string v9, "key_front_dual_flash_color_temp"

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1060
    iget v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFrontDualFlashStrengthMode:I

    const-string v9, "key_front_dual_flash_strength_mode"

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1061
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v9, "video"

    invoke-interface {v5, v9, v7}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_5

    :cond_9
    move-object/from16 v25, v10

    move-object/from16 v26, v23

    move/from16 v23, v5

    .line 1064
    :goto_5
    iget-object v5, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    if-eqz v5, :cond_12

    .line 1065
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1066
    iget-object v7, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1067
    iget-object v7, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAntiVideoValue:Ljava/lang/String;

    invoke-static {v7}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getAntivideoValue(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1068
    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoBeautyValue:Ljava/lang/String;

    invoke-static {v4}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoBeautyValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1069
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPortraitValue:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoPortraitValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v15, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1070
    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoHDRValue:Ljava/lang/String;

    invoke-static {v3}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoVideoHdrValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v14, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1071
    invoke-virtual {v5, v13, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    long-to-int v1, v1

    .line 1072
    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v5, v12, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move/from16 v1, v23

    .line 1073
    invoke-virtual {v5, v11, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1074
    iget v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlowMotionFps:I

    move-object/from16 v2, v25

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1075
    iget v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    move-object/from16 v2, v21

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1076
    iget v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mArcoreAudioId:I

    move-object/from16 v2, v18

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1077
    iget v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceCount:I

    const-string v2, "face_num"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1078
    iget v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mMaxFaceRatio:F

    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const-string v2, "face_ratio"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1079
    iget-object v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    invoke-static {v1}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getFlashValue(Ljava/lang/String;)I

    move-result v1

    const-string v2, "flash"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1080
    iget v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mZoomValue:I

    const-string v2, "key_camera_zoom"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1081
    iget-object v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoTimeLapseRate:Ljava/lang/String;

    move-object/from16 v2, v26

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "auto"

    goto :goto_6

    :cond_a
    iget-object v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoTimeLapseRate:Ljava/lang/String;

    :goto_6
    const-string v3, "key_time_lapse_rate"

    invoke-virtual {v5, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-object v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoTimeLapseDuration:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "unlimited"

    goto :goto_7

    :cond_b
    iget-object v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoTimeLapseDuration:Ljava/lang/String;

    :goto_7
    const-string v2, "key_time_lapse_setting_duration"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    iget v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNightHawkDetected:I

    const-string v2, "night_hawk"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1084
    iget v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoMakeUpValue:I

    const-string v2, "key_video_makeup"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1085
    iget v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoMakeUpIntensityValue:F

    const-string v2, "key_video_makeup_intensity"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1086
    iget v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mTranssionFilterValue:I

    const-string v2, "key_transsion_filter"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1087
    iget v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoEffectValue:I

    const-string v2, "key_video_effect"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1088
    iget v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoFrameValue:I

    const-string v2, "key_video_frame"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1089
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getVideoEnhanceDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_video_enhance"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getVideoEnhanceYUVDescription()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_video_enhance_yuv"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    iget v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPortraitLevelValue:I

    const-string v2, "key_video_portrait_level"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1092
    iget-object v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mCameraNameValue:Ljava/lang/String;

    const-string v2, "key_camera_name"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    iget v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVIPCaptureValue:I

    const-string v2, "key_vip_value"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1094
    iget v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenType:I

    const-string v2, "key_screen_type"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1095
    iget-object v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAutoWaterMarkValue:Ljava/lang/String;

    const-string v2, "key_auto_watermark"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    iget-object v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;

    invoke-interface {v1}, Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;->getReportValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_face_beauty"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    iget-object v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyValue:[I

    if-eqz v1, :cond_f

    .line 1099
    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_c

    .line 1100
    aget v2, v1, v24

    const-string v3, "parameter_1"

    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_8

    .line 1101
    :cond_c
    array-length v2, v1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_d

    .line 1102
    aget v2, v1, v24

    const-string v3, "parameter_4"

    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x3

    .line 1103
    aget v3, v1, v2

    const-string v2, "parameter_5"

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x2

    .line 1104
    aget v3, v1, v2

    const-string v2, "parameter_6"

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1105
    aget v2, v1, v22

    const-string v3, "parameter_7"

    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1107
    :cond_d
    :goto_8
    array-length v2, v1

    const/4 v3, 0x7

    if-lt v2, v3, :cond_e

    .line 1108
    aget v2, v1, v20

    const-string v3, "parameter_15"

    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1109
    aget v2, v1, v19

    const-string v3, "parameter_16"

    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x4

    .line 1110
    aget v3, v1, v2

    const-string v2, "parameter_17"

    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1112
    :cond_e
    array-length v2, v1

    const/16 v3, 0x8

    if-lt v2, v3, :cond_f

    const/4 v2, 0x7

    .line 1113
    aget v1, v1, v2

    const-string v2, "parameter_18"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1116
    :cond_f
    iget-object v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimbodyValue:[I

    if-eqz v1, :cond_11

    .line 1118
    array-length v2, v1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_10

    .line 1119
    aget v2, v1, v24

    const-string v3, "parameter_2"

    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1120
    aget v1, v1, v22

    const-string v2, "parameter_3"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_9

    .line 1121
    :cond_10
    array-length v2, v1

    const/4 v3, 0x7

    if-lt v2, v3, :cond_11

    .line 1122
    aget v2, v1, v24

    const-string v3, "parameter_8"

    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1123
    aget v2, v1, v22

    const-string v3, "parameter_9"

    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x2

    .line 1124
    aget v2, v1, v2

    const-string v3, "parameter_10"

    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x3

    .line 1125
    aget v2, v1, v2

    const-string v3, "parameter_11"

    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x4

    .line 1126
    aget v2, v1, v2

    const-string v3, "parameter_12"

    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1127
    aget v2, v1, v20

    const-string v3, "parameter_13"

    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1128
    aget v1, v1, v19

    const-string v2, "parameter_14"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1131
    :cond_11
    :goto_9
    iget v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLuminanceValue:I

    const-string v2, "key_luminance"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1132
    iget v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFrontDualFlashColorTemp:I

    const-string v2, "key_front_dual_flash_color_temp"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1133
    iget v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFrontDualFlashStrengthMode:I

    const-string v2, "key_front_dual_flash_strength_mode"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1134
    iget-object v1, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAthenaAnalyticsImpl:Lcom/transsion/camera/utils/analytics/AbstractAnalytics;

    const-string v2, "video"

    invoke-interface {v1, v2, v5}, Lcom/transsion/camera/utils/analytics/AbstractAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1137
    :cond_12
    sget-object v1, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keyVideoDuration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mModeName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAntiVideoValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAntiVideoValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ---:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAntiVideoValue:Ljava/lang/String;

    invoke-static {v4}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getAntivideoValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mVideoBeautyValue:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoBeautyValue:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoBeautyValue:Ljava/lang/String;

    invoke-static {v4}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoBeautyValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mVideoPortraitValue:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPortraitValue:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoPortraitValue:Ljava/lang/String;

    invoke-static {v4}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoPortraitValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mVideoHDRValue:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoHDRValue:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoHDRValue:Ljava/lang/String;

    invoke-static {v4}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoVideoHdrValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "quality:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/transsion/camera/utils/analytics/BigDataUtils;->getVideoQuality(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSlowMotionFps:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlowMotionFps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFocusCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFocusCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mArcoreAudioId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mArcoreAudioId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoTimeLapseRate:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoTimeLapseRate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoTimeLapseDuration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoTimeLapseDuration:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNightHawkDetected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mNightHawkDetected:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFlash:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFlash:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mZoomValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mZoomValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScreenType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mScreenType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAutoWaterMarkValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mAutoWaterMarkValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFaceBeauty.getReportValue():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeauty:Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;

    invoke-interface {v3}, Lcom/transsion/camera/utils/analytics/beauty/IFaceBeauty;->getReportValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1155
    iget-object v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyValue:[I

    if-eqz v2, :cond_13

    .line 1156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFaceBeautyValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFaceBeautyValue:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1157
    :cond_13
    iget-object v2, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimbodyValue:[I

    if-eqz v2, :cond_14

    .line 1158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSlimbodyValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mSlimbodyValue:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1159
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key_video_enhance_yuv:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getVideoEnhanceYUVDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v16

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLuminanceValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mLuminanceValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFrontDualFlashColorTemp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFrontDualFlashColorTemp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFrontDualFlashStrengthMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mFrontDualFlashStrengthMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoMakeUpValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoMakeUpValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoMakeUpIntensityValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->mVideoMakeUpIntensityValue:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1167
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->resetVideoParameters()V

    return-void
.end method
