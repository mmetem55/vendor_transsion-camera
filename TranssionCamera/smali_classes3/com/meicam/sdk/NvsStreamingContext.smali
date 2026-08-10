.class public Lcom/meicam/sdk/NvsStreamingContext;
.super Ljava/lang/Object;
.source "NvsStreamingContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/sdk/NvsStreamingContext$ImageGrabberCallback;,
        Lcom/meicam/sdk/NvsStreamingContext$HardwareErrorCallback;,
        Lcom/meicam/sdk/NvsStreamingContext$SeekingCallback;,
        Lcom/meicam/sdk/NvsStreamingContext$PlaybackExceptionCallback;,
        Lcom/meicam/sdk/NvsStreamingContext$PlaybackDelayCallback;,
        Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;,
        Lcom/meicam/sdk/NvsStreamingContext$CompileFloatProgressCallback;,
        Lcom/meicam/sdk/NvsStreamingContext$CompileCallback2;,
        Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;,
        Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;,
        Lcom/meicam/sdk/NvsStreamingContext$CompileCallback;,
        Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;,
        Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingDurationCallback;,
        Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingFrameReachedCallback;,
        Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingStartedCallback;,
        Lcom/meicam/sdk/NvsStreamingContext$CapturedVideoFrameGrabberCallback;,
        Lcom/meicam/sdk/NvsStreamingContext$CapturedPictureCallback;,
        Lcom/meicam/sdk/NvsStreamingContext$CaptureDeviceCallback;,
        Lcom/meicam/sdk/NvsStreamingContext$CaptureDeviceCapability;,
        Lcom/meicam/sdk/NvsStreamingContext$SdkVersion;,
        Lcom/meicam/sdk/NvsStreamingContext$VerifyLicenseResult;
    }
.end annotation


# static fields
.field public static final AV_FILEINFO_EXTRA_NULL:I = 0x0

.field public static final AV_FILEINFO_EXTRA_PIXELFORMAT:I = 0x1

.field public static final AV_FILEINFO_EXTRA_VIDEO_CODEC_ID:I = 0x2

.field public static final BUFFER_IMAGE_ROTATION_0:I = 0x0

.field public static final BUFFER_IMAGE_ROTATION_180:I = 0x2

.field public static final BUFFER_IMAGE_ROTATION_270:I = 0x3

.field public static final BUFFER_IMAGE_ROTATION_90:I = 0x1

.field public static final CAMERA_FLASH_MODE_AUTO:I = 0x4

.field public static final CAMERA_FLASH_MODE_OFF:I = 0x1

.field public static final CAMERA_FLASH_MODE_ON:I = 0x2

.field public static final CAMERA_FLASH_MODE_TORCH:I = 0x8

.field public static final CAPTURE_DEVICE_ERROR_SERVER_DIED:I = 0x2

.field public static final CAPTURE_DEVICE_ERROR_UNKNOWN:I = 0x1

.field public static final CLEAR_CACHE_FLAG_AVFILE_INFO:I = 0x8

.field public static final CLEAR_CACHE_FLAG_AVFILE_KEYFRAME_INFO:I = 0x10

.field public static final CLEAR_CACHE_FLAG_CAPTION_FONT_INFO:I = 0x20

.field public static final CLEAR_CACHE_FLAG_ICON_ENGINE:I = 0x2

.field public static final CLEAR_CACHE_FLAG_STREAMING_ENGINE:I = 0x1

.field public static final CLEAR_CACHE_FLAG_WAVEFORM_ENGINE:I = 0x4

.field public static final COMPILE_AUDIO_BITRATE:Ljava/lang/String; = "audio bitrate"

.field public static final COMPILE_AUDIO_ENCODER_NAME:Ljava/lang/String; = "audio encoder name"

.field public static final COMPILE_BITRATE:Ljava/lang/String; = "bitrate"

.field public static final COMPILE_BITRATE_GRADE_HIGH:I = 0x2

.field public static final COMPILE_BITRATE_GRADE_LOW:I = 0x0

.field public static final COMPILE_BITRATE_GRADE_MEDIUM:I = 0x1

.field public static final COMPILE_CREATION_TIME:Ljava/lang/String; = "creation time"

.field public static final COMPILE_ENCODE_PROFILE_BASELINE:I = 0x1

.field public static final COMPILE_ENCODE_PROFILE_HIGH:I = 0x3

.field public static final COMPILE_ENCODE_PROFILE_MAIN:I = 0x2

.field public static final COMPILE_FPS:Ljava/lang/String; = "fps"

.field public static final COMPILE_GOP_SIZE:Ljava/lang/String; = "gopsize"

.field public static final COMPILE_LOSSLESS_AUDIO:Ljava/lang/String; = "lossless audio"

.field public static final COMPILE_OPTIMIZE_FOR_NETWORK_USE:Ljava/lang/String; = "optimize-for-network-use"

.field public static final COMPILE_SOFTWARE_ENCODER_CRF:Ljava/lang/String; = "software encorder crf"

.field public static final COMPILE_SOFTWARE_ENCODER_CRF_BITRATE_MAX:Ljava/lang/String; = "software encorder crf bitrate max"

.field public static final COMPILE_SOFTWARE_ENCODER_MODE:Ljava/lang/String; = "software encorder mode"

.field public static final COMPILE_SOFTWARE_ENCODER_PRESET:Ljava/lang/String; = "software encorder preset"

.field public static final COMPILE_USE_OPERATING_RATE:Ljava/lang/String; = "use operating rate"

.field public static final COMPILE_VIDEO_ENCODER_NAME:Ljava/lang/String; = "video encoder name"

.field public static final COMPILE_VIDEO_ENCODER_PROFILE:Ljava/lang/String; = "encorder profile"

.field public static final COMPILE_VIDEO_RESOLUTION_GRADE_1080:I = 0x3

.field public static final COMPILE_VIDEO_RESOLUTION_GRADE_2160:I = 0x4

.field public static final COMPILE_VIDEO_RESOLUTION_GRADE_360:I = 0x0

.field public static final COMPILE_VIDEO_RESOLUTION_GRADE_480:I = 0x1

.field public static final COMPILE_VIDEO_RESOLUTION_GRADE_720:I = 0x2

.field public static final COMPILE_VIDEO_RESOLUTION_GRADE_CUSTOM:I = 0x100

.field public static final DEBUG_LEVEL_DEBUG:I = 0x3

.field public static final DEBUG_LEVEL_ERROR:I = 0x1

.field public static final DEBUG_LEVEL_NONE:I = 0x0

.field public static final DEBUG_LEVEL_WARNING:I = 0x2

.field public static final HUMAN_DETECTION_DATA_TYPE_FAKE_FACE:I = 0x0

.field public static final HUMAN_DETECTION_DATA_TYPE_MAKEUP:I = 0x1

.field public static final HUMAN_DETECTION_FEATURE_AVATAR_EXPRESSION:I = 0x4

.field public static final HUMAN_DETECTION_FEATURE_EXTRA:I = 0x80

.field public static final HUMAN_DETECTION_FEATURE_FACE_ACTION:I = 0x2

.field public static final HUMAN_DETECTION_FEATURE_FACE_LANDMARK:I = 0x1

.field public static final HUMAN_DETECTION_FEATURE_IMAGE_MODE:I = 0x10

.field public static final HUMAN_DETECTION_FEATURE_MULTI_THREAD:I = 0x20

.field public static final HUMAN_DETECTION_FEATURE_SEGMENTATION_BACKGROUND:I = 0x100

.field public static final HUMAN_DETECTION_FEATURE_SINGLE_THREAD:I = 0x40

.field public static final HUMAN_DETECTION_FEATURE_VIDEO_MODE:I = 0x8

.field public static final RECORD_BITRATE:Ljava/lang/String; = "bitrate"

.field public static final RECORD_GOP_SIZE:Ljava/lang/String; = "gopsize"

.field public static final STREAMING_CONTEXT_FLAG_ASYNC_ENGINE_STATE:I = 0x10

.field public static final STREAMING_CONTEXT_FLAG_ASYNC_INITIALIZED:I = 0x40

.field public static final STREAMING_CONTEXT_FLAG_COMPACT_MEMORY_MODE:I = 0x2

.field public static final STREAMING_CONTEXT_FLAG_DISABLE_CAPTURE:I = 0x800

.field public static final STREAMING_CONTEXT_FLAG_ENABLE_MAX_CACHE_CAPTION_LIMIT:I = 0x400

.field public static final STREAMING_CONTEXT_FLAG_NEED_GIF_MOTION:I = 0x2000

.field public static final STREAMING_CONTEXT_FLAG_NO_HARDWARE_VIDEO_READER:I = 0x8

.field public static final STREAMING_CONTEXT_FLAG_PLAYBACK_DROP_FRAME_MODE:I = 0x1000

.field public static final STREAMING_CONTEXT_FLAG_SUPPORT_16K_EDIT:I = 0x80

.field public static final STREAMING_CONTEXT_FLAG_SUPPORT_4K_EDIT:I = 0x1

.field public static final STREAMING_CONTEXT_FLAG_SUPPORT_8K_EDIT:I = 0x4

.field public static final STREAMING_CONTEXT_FLAG_USE_SYSTEM_IMAGE_READER:I = 0x200

.field public static final STREAMING_CONTEXT_VIDEO_DECODER_WITHOUT_SURFACE_TEXTURE:I = 0x20

.field public static final STREAMING_ENGINE_CAPTURE_FLAG_CAPTURE_BUDDY_HOST_VIDEO_FRAME:I = 0x20

.field public static final STREAMING_ENGINE_CAPTURE_FLAG_DISABLE_FLIP_FOR_FRONT_CAMERA:I = 0x800

.field public static final STREAMING_ENGINE_CAPTURE_FLAG_DONT_CAPTURE_AUDIO:I = 0x10

.field public static final STREAMING_ENGINE_CAPTURE_FLAG_DONT_USE_SYSTEM_RECORDER:I = 0x4

.field public static final STREAMING_ENGINE_CAPTURE_FLAG_ENABLE_TAKE_PICTURE:I = 0x2000

.field public static final STREAMING_ENGINE_CAPTURE_FLAG_FACE_ACTION_WITH_PARTICLE:I = 0x100

.field public static final STREAMING_ENGINE_CAPTURE_FLAG_GRAB_CAPTURED_VIDEO_FRAME:I = 0x1

.field public static final STREAMING_ENGINE_CAPTURE_FLAG_INPUT_ASPECT_RATIO_USED:I = 0x1000

.field public static final STREAMING_ENGINE_CAPTURE_FLAG_LOW_PIPELINE_SIZE:I = 0x200

.field public static final STREAMING_ENGINE_CAPTURE_FLAG_STRICT_PREVIEW_VIDEO_SIZE:I = 0x8

.field public static final STREAMING_ENGINE_COMPILE_FLAG_BUDDY_HOST_VIDEO_FRAME:I = 0x20

.field public static final STREAMING_ENGINE_COMPILE_FLAG_DISABLE_ALIGN_VIDEO_SIZE:I = 0x100

.field public static final STREAMING_ENGINE_COMPILE_FLAG_DISABLE_HARDWARE_ENCODER:I = 0x1

.field public static final STREAMING_ENGINE_COMPILE_FLAG_DISABLE_MEDIA_MUXER:I = 0x10

.field public static final STREAMING_ENGINE_COMPILE_FLAG_DISABLE_PRELOADER_ON_SOURCE:I = 0x40

.field public static final STREAMING_ENGINE_COMPILE_FLAG_DONT_USE_INPUT_SURFACE:I = 0x2

.field public static final STREAMING_ENGINE_COMPILE_FLAG_ONLY_AUDIO:I = 0x8

.field public static final STREAMING_ENGINE_COMPILE_FLAG_ONLY_VIDEO:I = 0x4

.field public static final STREAMING_ENGINE_COMPILE_FLAG_TRUNCATE_AUDIO_STREAM:I = 0x80

.field public static final STREAMING_ENGINE_COMPILE_FLAG_USE_SOFTWARE_AUDIO_ENCODER:I = 0x400

.field public static final STREAMING_ENGINE_HARDWARE_ERROR_TYPE_VIDEO_DECODER_SETUP_ERROR:I = 0x2

.field public static final STREAMING_ENGINE_HARDWARE_ERROR_TYPE_VIDEO_DECODING_ERROR:I = 0x3

.field public static final STREAMING_ENGINE_HARDWARE_ERROR_TYPE_VIDEO_ENCODER_SETUP_ERROR:I = 0x0

.field public static final STREAMING_ENGINE_HARDWARE_ERROR_TYPE_VIDEO_ENCODING_ERROR:I = 0x1

.field public static final STREAMING_ENGINE_INTERRUPT_STOP:I = 0x4

.field public static final STREAMING_ENGINE_PLAYBACK_EXCEPTION_TYPE_MEDIA_FILE_ERROR:I = 0x0

.field public static final STREAMING_ENGINE_PLAYBACK_FLAG_AUTO_CACHE_ALL_CAF_FRAMES:I = 0x80

.field public static final STREAMING_ENGINE_PLAYBACK_FLAG_BUDDY_HOST_VIDEO_FRAME:I = 0x20

.field public static final STREAMING_ENGINE_PLAYBACK_FLAG_DISABLE_FIXED_PREROLL_TIME:I = 0x10

.field public static final STREAMING_ENGINE_PLAYBACK_FLAG_DISABLE_PRELOADER_ON_SOURCE:I = 0x40

.field public static final STREAMING_ENGINE_PLAYBACK_FLAG_LOW_PIPELINE_SIZE:I = 0x8

.field public static final STREAMING_ENGINE_PLAYBACK_FLAG_SPEED_COMP_MODE:I = 0x200

.field public static final STREAMING_ENGINE_RECORDING_FLAG_DISABLE_HARDWARE_ENCODER:I = 0x4

.field public static final STREAMING_ENGINE_RECORDING_FLAG_DISABLE_MEDIA_MUXER:I = 0x80

.field public static final STREAMING_ENGINE_RECORDING_FLAG_DONT_USE_INPUT_SURFACE:I = 0x40

.field public static final STREAMING_ENGINE_RECORDING_FLAG_FLIP_HORIZONTALLY:I = 0x200

.field public static final STREAMING_ENGINE_RECORDING_FLAG_IGNORE_VIDEO_ROTATION:I = 0x20

.field public static final STREAMING_ENGINE_RECORDING_FLAG_ONLY_RECORD_VIDEO:I = 0x10

.field public static final STREAMING_ENGINE_RECORDING_FLAG_RECORDING_WITHOUT_FX:I = 0x100

.field public static final STREAMING_ENGINE_RECORDING_FLAG_SOFTWARE_VIDEO_INTRA_FRAME_ONLY_FAST_STOP:I = 0x8

.field public static final STREAMING_ENGINE_RECORDING_FLAG_VIDEO_INTRA_FRAME_ONLY:I = 0x2

.field public static final STREAMING_ENGINE_SEEK_FLAG_BUDDY_HOST_VIDEO_FRAME:I = 0x10

.field public static final STREAMING_ENGINE_SEEK_FLAG_SHOW_ANIMATED_STICKER_POSTER:I = 0x4

.field public static final STREAMING_ENGINE_SEEK_FLAG_SHOW_CAPTION_POSTER:I = 0x2

.field public static final STREAMING_ENGINE_SEND_BUFFER_FLAG_ONLY_FOR_BUDDY:I = 0x2

.field public static final STREAMING_ENGINE_SEND_BUFFER_FLAG_ONLY_FOR_GRAB:I = 0x1

.field public static final STREAMING_ENGINE_STATE_CAPTUREPREVIEW:I = 0x1

.field public static final STREAMING_ENGINE_STATE_CAPTURERECORDING:I = 0x2

.field public static final STREAMING_ENGINE_STATE_COMPILE:I = 0x5

.field public static final STREAMING_ENGINE_STATE_PLAYBACK:I = 0x3

.field public static final STREAMING_ENGINE_STATE_SEEKING:I = 0x4

.field public static final STREAMING_ENGINE_STATE_STOPPED:I = 0x0

.field public static final STREAMING_ENGINE_STOP_FLAG_ASYNC:I = 0x2

.field public static final STREAMING_ENGINE_STOP_FLAG_FORCE_STOP_COMPILATION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Meicam"

.field public static final VIDEO_CAPTURE_RESOLUTION_GRADE_EXTREMELY_HIGH:I = 0x4

.field public static final VIDEO_CAPTURE_RESOLUTION_GRADE_HIGH:I = 0x2

.field public static final VIDEO_CAPTURE_RESOLUTION_GRADE_LOW:I = 0x0

.field public static final VIDEO_CAPTURE_RESOLUTION_GRADE_MEDIUM:I = 0x1

.field public static final VIDEO_CAPTURE_RESOLUTION_GRADE_SUPER_HIGH:I = 0x3

.field public static final VIDEO_PREVIEW_SIZEMODE_FULLSIZE:I = 0x0

.field public static final VIDEO_PREVIEW_SIZEMODE_LIVEWINDOW_SIZE:I = 0x1

.field public static final VIDEO_STABILIZATION_MODE_AUTO:I = 0x1

.field public static final VIDEO_STABILIZATION_MODE_OFF:I = 0x0

.field public static final VIDEO_STABILIZATION_MODE_STANDARD:I = 0x2

.field public static final VIDEO_STABILIZATION_MODE_SUPER:I = 0x3

.field private static m_assetManager:Landroid/content/res/AssetManager; = null

.field private static m_classLoader:Ljava/lang/ClassLoader; = null

.field private static m_context:Landroid/content/Context; = null

.field private static m_customNativeLibraryDirPath:Z = false

.field private static m_debugLevel:I = 0x3

.field private static m_faceDetectionLibLoaded:Z

.field private static m_fxPluginBundlePathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m_iconSize:I

.field private static m_initializedOnce:Z

.field private static m_instance:Lcom/meicam/sdk/NvsStreamingContext;

.field public static m_logFilePath:Ljava/lang/String;

.field private static m_maxAudioReaderCount:I

.field private static m_maxIconReader:I

.field private static m_maxImageReaderCount:I

.field private static m_maxReaderCount:I

.field private static m_nativeLibraryDirPath:Ljava/lang/String;

.field private static m_saveDebugMessagesToFile:Z

.field private static m_streamingPoolSizeInByte:I


# instance fields
.field private m_assetPackageManager:Lcom/meicam/sdk/NvsAssetPackageManager;

.field private m_captureRecordingDurationCallback:Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingDurationCallback;

.field private m_captureRecordingFrameReachedCallback:Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingFrameReachedCallback;

.field private m_captureRecordingStartedCallback:Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingStartedCallback;

.field private m_catpureDeviceCallback:Lcom/meicam/sdk/NvsStreamingContext$CaptureDeviceCallback;

.field private m_catpuredPictureCallback:Lcom/meicam/sdk/NvsStreamingContext$CapturedPictureCallback;

.field private m_catpuredVideoFrameGrabberCallback:Lcom/meicam/sdk/NvsStreamingContext$CapturedVideoFrameGrabberCallback;

.field private m_compileCallback:Lcom/meicam/sdk/NvsStreamingContext$CompileCallback;

.field private m_compileCallback2:Lcom/meicam/sdk/NvsStreamingContext$CompileCallback2;

.field private m_compileConfigurations:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m_compileFloatProgressCallback:Lcom/meicam/sdk/NvsStreamingContext$CompileFloatProgressCallback;

.field private m_compileVideoBitrateMultiplier:F

.field private m_hardwareErrorCallback:Lcom/meicam/sdk/NvsStreamingContext$HardwareErrorCallback;

.field private m_internalObject:J

.field private m_isAuxiliaryContext:Z

.field private m_playbackCallback:Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;

.field private m_playbackCallback2:Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;

.field private m_playbackDelayCallback:Lcom/meicam/sdk/NvsStreamingContext$PlaybackDelayCallback;

.field private m_playbackExceptionCallback:Lcom/meicam/sdk/NvsStreamingContext$PlaybackExceptionCallback;

.field private m_recordVideoBitrateMultiplier:F

.field private m_seekingCallback:Lcom/meicam/sdk/NvsStreamingContext$SeekingCallback;

.field private m_streamingEngineCallback:Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;

.field private m_timelineTimestampCallback:Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 1103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 558
    iput-object v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_assetPackageManager:Lcom/meicam/sdk/NvsAssetPackageManager;

    const-wide/16 v0, 0x0

    .line 580
    iput-wide v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_internalObject:J

    const/4 v0, 0x0

    .line 581
    iput-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1104
    iput v1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_compileVideoBitrateMultiplier:F

    .line 1105
    iput v1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_recordVideoBitrateMultiplier:F

    .line 1106
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_compileConfigurations:Ljava/util/Hashtable;

    if-eqz p2, :cond_0

    .line 1108
    new-instance p2, Lcom/meicam/sdk/NvsAssetPackageManager;

    invoke-direct {p2, v0}, Lcom/meicam/sdk/NvsAssetPackageManager;-><init>(Z)V

    iput-object p2, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_assetPackageManager:Lcom/meicam/sdk/NvsAssetPackageManager;

    .line 1109
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetAssetPackageManager()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/meicam/sdk/NvsAssetPackageManager;->setInternalObject(J)V

    .line 1110
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeDetectPackageName(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private checkCameraPermission()Z
    .locals 1

    .line 4778
    sget-object p0, Lcom/meicam/sdk/NvsStreamingContext;->m_context:Landroid/content/Context;

    const-string v0, "android.permission.CAMERA"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Meicam"

    const-string v0, "CAMERA permission has not been granted!"

    .line 4779
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private checkInternetPermission()Z
    .locals 1

    .line 4791
    sget-object p0, Lcom/meicam/sdk/NvsStreamingContext;->m_context:Landroid/content/Context;

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Meicam"

    const-string v0, "INTERNET permission has not been granted!"

    .line 4792
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static close()V
    .locals 4

    .line 871
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 872
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    if-nez v0, :cond_0

    return-void

    .line 875
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsCheckExpirationOnline;->instance()Lcom/meicam/sdk/NvsCheckExpirationOnline;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 877
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsCheckExpirationOnline;->release()V

    .line 879
    :cond_1
    invoke-static {}, Lcom/meicam/sdk/NvsStatisticsSender;->getInstance()Lcom/meicam/sdk/NvsStatisticsSender;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 881
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStatisticsSender;->release()V

    .line 883
    :cond_2
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsStreamingContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 885
    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsAssetPackageManager;->setCallbackInterface(Lcom/meicam/sdk/NvsAssetPackageManager$AssetPackageManagerCallback;)V

    const-wide/16 v2, 0x0

    .line 886
    invoke-virtual {v0, v2, v3}, Lcom/meicam/sdk/NvsAssetPackageManager;->setInternalObject(J)V

    .line 889
    :cond_3
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setCaptureDeviceCallback(Lcom/meicam/sdk/NvsStreamingContext$CaptureDeviceCallback;)V

    .line 890
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setCapturedVideoFrameGrabberCallback(Lcom/meicam/sdk/NvsStreamingContext$CapturedVideoFrameGrabberCallback;)V

    .line 891
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setCaptureRecordingStartedCallback(Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingStartedCallback;)V

    .line 892
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setCaptureRecordingDurationCallback(Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingDurationCallback;)V

    .line 893
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setPlaybackCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;)V

    .line 894
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setCompileCallback(Lcom/meicam/sdk/NvsStreamingContext$CompileCallback;)V

    .line 895
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setStreamingEngineCallback(Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;)V

    .line 896
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setTimelineTimestampCallback(Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;)V

    .line 897
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setCompileCallback2(Lcom/meicam/sdk/NvsStreamingContext$CompileCallback2;)V

    .line 898
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setCompileFloatProgressCallback(Lcom/meicam/sdk/NvsStreamingContext$CompileFloatProgressCallback;)V

    .line 899
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setPlaybackCallback2(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;)V

    .line 900
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setPlaybackDelayCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackDelayCallback;)V

    .line 901
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setPlaybackExceptionCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackExceptionCallback;)V

    .line 902
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setHardwareErrorCallback(Lcom/meicam/sdk/NvsStreamingContext$HardwareErrorCallback;)V

    .line 903
    sput-object v1, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    .line 904
    sput-object v1, Lcom/meicam/sdk/NvsStreamingContext;->m_context:Landroid/content/Context;

    .line 905
    sput-object v1, Lcom/meicam/sdk/NvsStreamingContext;->m_classLoader:Ljava/lang/ClassLoader;

    .line 906
    invoke-static {v1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetAssetManager(Landroid/content/res/AssetManager;)V

    .line 907
    sput-object v1, Lcom/meicam/sdk/NvsStreamingContext;->m_assetManager:Landroid/content/res/AssetManager;

    .line 909
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->nativeClose()V

    return-void
.end method

.method public static closeHumanDetection()V
    .locals 0

    .line 1016
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->nativeCloseHumanDetection()V

    return-void
.end method

.method private static createNewNativeDirAboveEqualApiLevel14(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4907
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    check-cast p0, Ldalvik/system/PathClassLoader;

    .line 4908
    invoke-static {p0}, Lcom/meicam/sdk/NvsStreamingContext;->getPathList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 4909
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "nativeLibraryDirectories"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 4910
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4911
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/io/File;

    .line 4912
    const-class v3, Ljava/io/File;

    array-length v4, v2

    add-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    .line 4913
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v3, p1, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move p1, v1

    .line 4914
    :goto_0
    array-length v4, v2

    add-int/2addr v4, v1

    if-ge p1, v4, :cond_0

    add-int/lit8 v4, p1, -0x1

    .line 4915
    aget-object v4, v2, v4

    invoke-static {v3, p1, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4917
    :cond_0
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static createNewNativeDirAboveEqualApiLevel21(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 4941
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    check-cast p0, Ldalvik/system/PathClassLoader;

    .line 4942
    invoke-static {p0}, Lcom/meicam/sdk/NvsStreamingContext;->getPathList(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 4943
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "systemNativeLibraryDirectories"

    .line 4944
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 4945
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4946
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 4947
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4948
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4950
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "nativeLibraryDirectories"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 4951
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4952
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 4953
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4954
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "dalvik.system.DexPathList$Element"

    .line 4956
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/Class;

    .line 4958
    const-class v5, Ljava/io/File;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    const-class v5, Ljava/io/File;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-class v5, Ldalvik/system/DexFile;

    const/4 v8, 0x3

    aput-object v5, v4, v8

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 4959
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v9, "nativeLibraryPathElements"

    invoke-virtual {v5, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 4960
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4961
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    .line 4962
    array-length v11, v10

    add-int/2addr v11, v1

    invoke-static {v0, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v4, :cond_1

    const/4 v11, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    .line 4965
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v12, v3, v6

    .line 4966
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p1, v3, v1

    aput-object v11, v3, v7

    aput-object v11, v3, v8

    .line 4965
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4967
    invoke-static {v0, v6, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move p1, v1

    .line 4968
    :goto_0
    array-length v3, v10

    add-int/2addr v3, v1

    if-ge p1, v3, :cond_0

    add-int/lit8 v3, p1, -0x1

    .line 4969
    aget-object v3, v10, v3

    invoke-static {v0, p1, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4971
    :cond_0
    invoke-virtual {v5, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 4983
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 4981
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 4973
    :catch_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Class;

    const-class v3, Ljava/util/List;

    aput-object v3, v0, v6

    const-string v3, "makePathElements"

    invoke-virtual {p1, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 4974
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v0, v1, [Ljava/lang/Object;

    aput-object v2, v0, v6

    .line 4975
    invoke-virtual {p1, v11, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4977
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 4978
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4979
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private static createNewNativeDirBelowApiLevel14(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 4922
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    check-cast p0, Ldalvik/system/PathClassLoader;

    .line 4923
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mLibPaths"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 4924
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4925
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 4926
    const-class v3, Ljava/lang/String;

    array-length v4, v2

    add-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    .line 4927
    invoke-static {v3, v4, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move p1, v1

    .line 4928
    :goto_0
    array-length v4, v2

    add-int/2addr v4, v1

    if-ge p1, v4, :cond_0

    add-int/lit8 v4, p1, -0x1

    .line 4929
    aget-object v4, v2, v4

    invoke-static {v3, p1, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4931
    :cond_0
    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static functionalityAuthorised(Ljava/lang/String;)Z
    .locals 0

    .line 2010
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2011
    invoke-static {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeFunctionalityAuthorised(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getAVInfoFromFile(Ljava/lang/String;I)Lcom/meicam/sdk/NvsAVFileInfo;
    .locals 0

    .line 1981
    invoke-static {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetAVInfoFromFile(Ljava/lang/String;I)Lcom/meicam/sdk/NvsAVFileInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 669
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 670
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_classLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 663
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 664
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method private static getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 4995
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x1

    .line 4996
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4997
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/meicam/sdk/NvsStreamingContext;
    .locals 1

    .line 924
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 925
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    return-object v0
.end method

.method private static getPathList(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const-string v0, "dalvik.system.BaseDexClassLoader"

    .line 4990
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "pathList"

    invoke-static {p0, v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static hasARModule()I
    .locals 1

    .line 1087
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1088
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->nativeHasARModule()I

    move-result v0

    return v0
.end method

.method private static hasDexClassLoader()Z
    .locals 1

    :try_start_0
    const-string v0, "dalvik.system.BaseDexClassLoader"

    .line 5002
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;)Lcom/meicam/sdk/NvsStreamingContext;
    .locals 1

    .line 857
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    const/4 v0, 0x0

    .line 858
    invoke-static {p0, p1, v0}, Lcom/meicam/sdk/NvsStreamingContext;->init(Landroid/app/Activity;Ljava/lang/String;I)Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/app/Activity;Ljava/lang/String;I)Lcom/meicam/sdk/NvsStreamingContext;
    .locals 0

    .line 837
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 838
    invoke-static {p0, p1, p2}, Lcom/meicam/sdk/NvsStreamingContext;->init(Landroid/content/Context;Ljava/lang/String;I)Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;I)Lcom/meicam/sdk/NvsStreamingContext;
    .locals 6

    .line 713
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 714
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    if-eqz v0, :cond_0

    return-object v0

    .line 717
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 718
    sget-object v1, Lcom/meicam/sdk/NvsStreamingContext;->m_nativeLibraryDirPath:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_nativeLibraryDirPath:Ljava/lang/String;

    .line 722
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HOME="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\tTMPDIR="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 726
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    sput-object v2, Lcom/meicam/sdk/NvsStreamingContext;->m_assetManager:Landroid/content/res/AssetManager;

    .line 727
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/meicam/sdk/NvsStreamingContext;->m_context:Landroid/content/Context;

    .line 728
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    sput-object v2, Lcom/meicam/sdk/NvsStreamingContext;->m_classLoader:Ljava/lang/ClassLoader;

    .line 731
    sget-boolean v2, Lcom/meicam/sdk/NvsStreamingContext;->m_initializedOnce:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_4

    .line 732
    sget-boolean v2, Lcom/meicam/sdk/NvsStreamingContext;->m_customNativeLibraryDirPath:Z

    if-eqz v2, :cond_2

    .line 733
    sget-object v2, Lcom/meicam/sdk/NvsStreamingContext;->m_nativeLibraryDirPath:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/meicam/sdk/NvsStreamingContext;->initNativeLibraryDirPath(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :try_start_1
    const-string v2, "com.meicam.sdk.NvsLazyLoadingIndicator"

    .line 737
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v4

    goto :goto_0

    :catch_0
    move v2, v3

    :goto_0
    if-nez v2, :cond_3

    .line 744
    :try_start_2
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->tryLoadFaceDetectionLibrary()V

    :cond_3
    const-string v2, "aiEngine"

    .line 747
    invoke-static {v2}, Lcom/meicam/sdk/NvsStreamingContext;->tryLoadNativeLibrary(Ljava/lang/String;)Z

    const-string v2, "aiEngine_g"

    .line 748
    invoke-static {v2}, Lcom/meicam/sdk/NvsStreamingContext;->tryLoadNativeLibrary(Ljava/lang/String;)Z

    const-string v2, "NvStreamingSdkCore"

    .line 749
    invoke-static {v2}, Lcom/meicam/sdk/NvsStreamingContext;->loadNativeLibrary(Ljava/lang/String;)V

    .line 752
    :cond_4
    sget-object v2, Lcom/meicam/sdk/NvsStreamingContext;->m_context:Landroid/content/Context;

    invoke-static {v2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeInitJNI(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 755
    sget-object v2, Lcom/meicam/sdk/NvsStreamingContext;->m_assetManager:Landroid/content/res/AssetManager;

    invoke-static {v2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetAssetManager(Landroid/content/res/AssetManager;)V

    .line 757
    sget v2, Lcom/meicam/sdk/NvsStreamingContext;->m_maxReaderCount:I

    if-lez v2, :cond_5

    .line 758
    invoke-static {v2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetMaxReaderCount(I)V

    .line 759
    :cond_5
    sget v2, Lcom/meicam/sdk/NvsStreamingContext;->m_iconSize:I

    if-lez v2, :cond_6

    .line 760
    invoke-static {v2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetIconSize(I)V

    .line 761
    :cond_6
    sget v2, Lcom/meicam/sdk/NvsStreamingContext;->m_maxIconReader:I

    if-lez v2, :cond_7

    .line 762
    invoke-static {v2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetMaxIconReader(I)V

    .line 763
    :cond_7
    sget v2, Lcom/meicam/sdk/NvsStreamingContext;->m_maxAudioReaderCount:I

    if-lez v2, :cond_8

    .line 764
    invoke-static {v2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetMaxAudioReaderCount(I)V

    .line 765
    :cond_8
    sget v2, Lcom/meicam/sdk/NvsStreamingContext;->m_maxImageReaderCount:I

    if-lez v2, :cond_9

    .line 766
    invoke-static {v2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetImageReaderCount(I)V

    .line 767
    :cond_9
    sget v2, Lcom/meicam/sdk/NvsStreamingContext;->m_streamingPoolSizeInByte:I

    if-lez v2, :cond_a

    .line 768
    invoke-static {v2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetStreamingPoolSizeInByte(I)V

    .line 770
    :cond_a
    sget v2, Lcom/meicam/sdk/NvsStreamingContext;->m_debugLevel:I

    invoke-static {v2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetDebugLevel(I)V

    .line 771
    sget-boolean v2, Lcom/meicam/sdk/NvsStreamingContext;->m_saveDebugMessagesToFile:Z

    invoke-static {v2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetSaveDebugMessagesToFile(Z)V

    const-string v2, "isExpired"

    .line 774
    invoke-static {p0, v2}, Lcom/meicam/sdk/NvsSystemVariableManager;->getSystemVariableInt(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_b

    move v3, v4

    .line 779
    :cond_b
    new-instance v2, Lcom/meicam/sdk/NvsStreamingContext$VerifyLicenseResult;

    invoke-direct {v2}, Lcom/meicam/sdk/NvsStreamingContext$VerifyLicenseResult;-><init>()V

    .line 780
    sget-boolean v5, Lcom/meicam/sdk/NvsStreamingContext;->m_initializedOnce:Z

    if-nez v5, :cond_c

    .line 781
    invoke-static {p0, p1, v3}, Lcom/meicam/sdk/NvsStreamingContext;->nativeVerifySdkLicenseFile(Landroid/content/Context;Ljava/lang/String;Z)Lcom/meicam/sdk/NvsStreamingContext$VerifyLicenseResult;

    move-result-object v2

    .line 784
    :cond_c
    iget-boolean p1, v2, Lcom/meicam/sdk/NvsStreamingContext$VerifyLicenseResult;->needCheckExpiration:Z

    if-eqz p1, :cond_d

    .line 787
    invoke-static {p0}, Lcom/meicam/sdk/NvsCheckExpirationOnline;->init(Landroid/content/Context;)Lcom/meicam/sdk/NvsCheckExpirationOnline;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 789
    iget-object v2, v2, Lcom/meicam/sdk/NvsStreamingContext$VerifyLicenseResult;->licenseServerHost:Ljava/lang/String;

    .line 790
    invoke-virtual {p1, v2}, Lcom/meicam/sdk/NvsCheckExpirationOnline;->startCheck(Ljava/lang/String;)V

    .line 793
    :cond_d
    invoke-static {v0, p2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeInit(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_e

    return-object v1

    .line 796
    :cond_e
    sget-object p1, Lcom/meicam/sdk/NvsStreamingContext;->m_logFilePath:Ljava/lang/String;

    if-eqz p1, :cond_f

    .line 797
    invoke-static {p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetLogFilePath(Ljava/lang/String;)V

    .line 799
    :cond_f
    new-instance p1, Lcom/meicam/sdk/NvsStreamingContext;

    invoke-direct {p1, p0, v4}, Lcom/meicam/sdk/NvsStreamingContext;-><init>(Landroid/content/Context;Z)V

    sput-object p1, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    .line 800
    sput-boolean v4, Lcom/meicam/sdk/NvsStreamingContext;->m_initializedOnce:Z

    .line 801
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsStreamingContext;->isSdkAuthorised()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->nativeIsNeedCheckExpiration()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 802
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetStatisticsFrequency()I

    move-result p1

    .line 803
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->nativeIsStatisticsPrivateInfo()Z

    move-result p2

    .line 804
    invoke-static {p0}, Lcom/meicam/sdk/NvsStatisticsSender;->init(Landroid/content/Context;)Lcom/meicam/sdk/NvsStatisticsSender;

    move-result-object p0

    .line 805
    invoke-virtual {p0, p1, p2}, Lcom/meicam/sdk/NvsStatisticsSender;->sendStatistics(IZ)V

    .line 807
    :cond_10
    sget-object p0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    return-object p0

    .line 753
    :cond_11
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "nativeInitJNI() failed!"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 809
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Meicam"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 811
    sput-object v1, Lcom/meicam/sdk/NvsStreamingContext;->m_context:Landroid/content/Context;

    .line 812
    sput-object v1, Lcom/meicam/sdk/NvsStreamingContext;->m_classLoader:Ljava/lang/ClassLoader;

    .line 813
    sput-object v1, Lcom/meicam/sdk/NvsStreamingContext;->m_assetManager:Landroid/content/res/AssetManager;

    return-object v1
.end method

.method public static initHumanDetection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .line 960
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->tryLoadFaceDetectionLibrary()V

    .line 961
    sget-boolean v0, Lcom/meicam/sdk/NvsStreamingContext;->m_faceDetectionLibLoaded:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 964
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/meicam/sdk/NvsStreamingContext;->nativeInitHumanDetection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static initHumanDetectionExt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    .line 986
    invoke-static {p0, p1, p2, p3}, Lcom/meicam/sdk/NvsStreamingContext;->nativeInitHumanDetectionExt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private static initNativeLibraryDirPath(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 4889
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->hasDexClassLoader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4891
    :try_start_0
    invoke-static {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->createNewNativeDirAboveEqualApiLevel14(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4894
    :catch_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->createNewNativeDirAboveEqualApiLevel21(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 4900
    :cond_0
    invoke-static {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->createNewNativeDirBelowApiLevel14(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.method private static loadNativeLibrary(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 4801
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private native nativeApplyCaptureScene(Ljava/lang/String;)Z
.end method

.method private native nativeCalcDurationAfterCurvesVariableSpeed(Ljava/lang/String;)J
.end method

.method private native nativeCanDecodeVideoStreamBySoftware(Ljava/lang/String;)Z
.end method

.method private native nativeCancelAutoFocus()V
.end method

.method private native nativeCheckDontSetCameraParamOnRecordingWithSystemRecorder()Z
.end method

.method private native nativeClearCachedResources(Z)V
.end method

.method private native nativeClearCachedResourcesFlags(ZI)V
.end method

.method private native nativeCloneTimeline(Lcom/meicam/sdk/NvsTimeline;)Lcom/meicam/sdk/NvsTimeline;
.end method

.method private static native nativeClose()V
.end method

.method private static native nativeCloseHumanDetection()V
.end method

.method private native nativeCompileTimeline(Lcom/meicam/sdk/NvsTimeline;JJLjava/lang/String;IIFLjava/util/Hashtable;I)Z
.end method

.method private native nativeConnectCapturePreviewWithLiveWindow(Ljava/lang/Object;)Z
.end method

.method private native nativeConnectCapturePreviewWithSurfaceTexture(Landroid/graphics/SurfaceTexture;)Z
.end method

.method private native nativeConnectTimelineWithLiveWindow(Lcom/meicam/sdk/NvsTimeline;Ljava/lang/Object;)Z
.end method

.method private native nativeConnectTimelineWithSurfaceTexture(Lcom/meicam/sdk/NvsTimeline;Landroid/graphics/SurfaceTexture;Lcom/meicam/sdk/NvsRational;)Z
.end method

.method private native nativeCreateAuxiliaryStreamingContext(Lcom/meicam/sdk/NvsStreamingContext;I)Z
.end method

.method private static native nativeCreateHumanDetectionHandle(Ljava/lang/String;Ljava/lang/String;J)Lcom/meicam/sdk/NvsHumanDetectionHandle;
.end method

.method private native nativeCreateTimeline(Lcom/meicam/sdk/NvsVideoResolution;Lcom/meicam/sdk/NvsRational;Lcom/meicam/sdk/NvsAudioResolution;)Lcom/meicam/sdk/NvsTimeline;
.end method

.method private native nativeDestoryAuxiliaryStreamingContext(Lcom/meicam/sdk/NvsStreamingContext;)V
.end method

.method private static native nativeDestroyHumanDetectionHandle(Lcom/meicam/sdk/NvsHumanDetectionHandle;)Z
.end method

.method private native nativeDetectEngineRenderFramePerSecond()F
.end method

.method private native nativeDetectPackageName(Landroid/content/Context;)V
.end method

.method private native nativeDetectVideoFileKeyframeInterval(Ljava/lang/String;)I
.end method

.method private static native nativeExtendHumanDetectionHandle(Lcom/meicam/sdk/NvsHumanDetectionHandle;Ljava/lang/String;Ljava/lang/String;J)Z
.end method

.method private static native nativeFunctionalityAuthorised(Ljava/lang/String;)Z
.end method

.method private native nativeGetAVFileInfo(Ljava/lang/String;I)Lcom/meicam/sdk/NvsAVFileInfo;
.end method

.method private static native nativeGetAVInfoFromFile(Ljava/lang/String;I)Lcom/meicam/sdk/NvsAVFileInfo;
.end method

.method private native nativeGetAllBuiltinAudioFxNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetAllBuiltinCaptureAudioFxNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetAllBuiltinCaptureVideoFxNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetAllBuiltinVideoFxNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetAllBuiltinVideoTransitionNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetAssetPackageManager()J
.end method

.method private native nativeGetAudioFxDescription(Ljava/lang/String;)Lcom/meicam/sdk/NvsFxDescription;
.end method

.method private native nativeGetAudioStreamCountInMediaFile(Ljava/lang/String;)I
.end method

.method private native nativeGetBeautyVideoFxName()Ljava/lang/String;
.end method

.method private native nativeGetCaptureAudioFxByIndex(I)Lcom/meicam/sdk/NvsCaptureAudioFx;
.end method

.method private native nativeGetCaptureAudioFxCount()I
.end method

.method private native nativeGetCaptureDeviceCapability(I)Lcom/meicam/sdk/NvsStreamingContext$CaptureDeviceCapability;
.end method

.method private native nativeGetCaptureDeviceCount()I
.end method

.method private native nativeGetCapturePreviewVideoSize(I)Lcom/meicam/sdk/NvsSize;
.end method

.method private native nativeGetCaptureVideoFxByIndex(I)Lcom/meicam/sdk/NvsCaptureVideoFx;
.end method

.method private native nativeGetCaptureVideoFxCount()I
.end method

.method private native nativeGetCurrentCaptureSceneId()Ljava/lang/String;
.end method

.method private native nativeGetCustomCompileVideoHeight()I
.end method

.method private native nativeGetDefaultThemeEndingLogoImageFilePath()Ljava/lang/String;
.end method

.method private native nativeGetDefaultVideoTransitionName()Ljava/lang/String;
.end method

.method private native nativeGetExposureCompensation()I
.end method

.method private native nativeGetFlashMode()I
.end method

.method private native nativeGetFontInfoByFilePath(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsFontInfo;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetSdkVersion()Lcom/meicam/sdk/NvsStreamingContext$SdkVersion;
.end method

.method private static native nativeGetStatisticsFrequency()I
.end method

.method private native nativeGetStreamingEngineState()I
.end method

.method private native nativeGetTimelineCurrentPosition(Lcom/meicam/sdk/NvsTimeline;)J
.end method

.method private native nativeGetVideoFxDescription(Ljava/lang/String;)Lcom/meicam/sdk/NvsFxDescription;
.end method

.method private native nativeGetVideoStabilization()I
.end method

.method private native nativeGetZoom()I
.end method

.method private native nativeGrabImageFromTimeline(Lcom/meicam/sdk/NvsTimeline;JLcom/meicam/sdk/NvsRational;I)Landroid/graphics/Bitmap;
.end method

.method private native nativeGrabImageFromTimelineAsyncMode(Lcom/meicam/sdk/NvsTimeline;JLcom/meicam/sdk/NvsRational;I)Z
.end method

.method private static native nativeHasARModule()I
.end method

.method private static native nativeInit(Ljava/lang/String;I)Z
.end method

.method private static native nativeInitHumanDetection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private static native nativeInitHumanDetectionExt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private static native nativeInitJNI(Landroid/content/Context;)Z
.end method

.method private native nativeInsertBuiltinCaptureAudioFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsCaptureAudioFx;
.end method

.method private native nativeInsertBuiltinCaptureVideoFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsCaptureVideoFx;
.end method

.method private native nativeInsertCustomCaptureVideoFx(Lcom/meicam/sdk/NvsCustomVideoFx$Renderer;I)Lcom/meicam/sdk/NvsCaptureVideoFx;
.end method

.method private native nativeInsertPackagedCaptureVideoFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsCaptureVideoFx;
.end method

.method private native nativeIsCaptureDeviceBackFacing(I)Z
.end method

.method private native nativeIsCompilingPaused()Z
.end method

.method private native nativeIsDefaultCaptionFade()Z
.end method

.method private static native nativeIsNeedCheckExpiration()Z
.end method

.method private native nativeIsPlaybackPaused()Z
.end method

.method private native nativeIsRecordingPaused()Z
.end method

.method private native nativeIsSdkAuthorised()Z
.end method

.method private static native nativeIsStatisticsPrivateInfo()Z
.end method

.method private native nativePauseResumeCompiling(Z)Z
.end method

.method private native nativePauseResumePlayback(Z)Z
.end method

.method private native nativePauseResumeRecording(Z)Z
.end method

.method private native nativePlaybackTimeline(Lcom/meicam/sdk/NvsTimeline;JJIZI)Z
.end method

.method private native nativePlaybackTimelineWithProxyScale(Lcom/meicam/sdk/NvsTimeline;JJLcom/meicam/sdk/NvsRational;ZI)Z
.end method

.method private native nativeRegisterFontByFilePath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeRemoveAllCaptureAudioFx()V
.end method

.method private native nativeRemoveAllCaptureVideoFx()V
.end method

.method private native nativeRemoveCaptureAudioFx(I)Z
.end method

.method private native nativeRemoveCaptureVideoFx(I)Z
.end method

.method private native nativeRemoveCurrentCaptureScene()V
.end method

.method private native nativeRemoveTimeline(Lcom/meicam/sdk/NvsTimeline;)Z
.end method

.method private native nativeSampleColorFromCapturedVideoFrame(Landroid/graphics/RectF;)Lcom/meicam/sdk/NvsColor;
.end method

.method private native nativeSeekTimeline(Lcom/meicam/sdk/NvsTimeline;JII)Z
.end method

.method private native nativeSeekTimelineWithProxyScale(Lcom/meicam/sdk/NvsTimeline;JLcom/meicam/sdk/NvsRational;I)Z
.end method

.method private native nativeSendBufferToCapturePreview([BJI)Z
.end method

.method private static native nativeSetAssetManager(Landroid/content/res/AssetManager;)V
.end method

.method private native nativeSetAudioOutputDeviceVolume(F)V
.end method

.method private native nativeSetAutoExposureRect(Landroid/graphics/RectF;)V
.end method

.method private static native nativeSetCaptureDeviceCallback(Lcom/meicam/sdk/NvsStreamingContext$CaptureDeviceCallback;)V
.end method

.method private native nativeSetCaptureFps(I)V
.end method

.method private static native nativeSetCaptureRecordingDurationCallback(Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingDurationCallback;)V
.end method

.method private static native nativeSetCaptureRecordingFrameReachedCallback(Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingFrameReachedCallback;)V
.end method

.method private static native nativeSetCaptureRecordingStartedCallback(Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingStartedCallback;)V
.end method

.method private static native nativeSetCapturedPictureCallback(Lcom/meicam/sdk/NvsStreamingContext$CapturedPictureCallback;)V
.end method

.method private static native nativeSetCapturedVideoFrameGrabberCallback(Lcom/meicam/sdk/NvsStreamingContext$CapturedVideoFrameGrabberCallback;)V
.end method

.method private native nativeSetCompileCallback(Lcom/meicam/sdk/NvsStreamingContext$CompileCallback;)V
.end method

.method private native nativeSetCompileCallback2(Lcom/meicam/sdk/NvsStreamingContext$CompileCallback2;)V
.end method

.method private native nativeSetCompileFloatProgressCallback(Lcom/meicam/sdk/NvsStreamingContext$CompileFloatProgressCallback;)V
.end method

.method private native nativeSetCustomCompileVideoHeight(I)V
.end method

.method private static native nativeSetDebugLevel(I)V
.end method

.method private native nativeSetDefaultAudioTransitionName(Ljava/lang/String;)V
.end method

.method private native nativeSetDefaultCaptionFade(Z)V
.end method

.method private native nativeSetDefaultThemeEndingLogoImageFilePath(Ljava/lang/String;)Z
.end method

.method private native nativeSetExposureCompensation(I)V
.end method

.method private native nativeSetHardwareErrorCallback(Lcom/meicam/sdk/NvsStreamingContext$HardwareErrorCallback;)V
.end method

.method private static native nativeSetIconSize(I)V
.end method

.method private native nativeSetImageGrabberCallback(Lcom/meicam/sdk/NvsStreamingContext$ImageGrabberCallback;)V
.end method

.method private static native nativeSetImageReaderCount(I)V
.end method

.method private static native nativeSetLogFilePath(Ljava/lang/String;)V
.end method

.method private static native nativeSetMaxAudioReaderCount(I)V
.end method

.method private static native nativeSetMaxCafCacheMemorySize(I)V
.end method

.method private static native nativeSetMaxIconReader(I)V
.end method

.method private static native nativeSetMaxReaderCount(I)V
.end method

.method private native nativeSetMediaCodecIconReaderEnabled(Ljava/lang/String;Z)V
.end method

.method private native nativeSetMediaCodecVideoDecodingOperatingRate(Ljava/lang/String;I)V
.end method

.method private native nativeSetPlaybackCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;)V
.end method

.method private native nativeSetPlaybackCallback2(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;)V
.end method

.method private native nativeSetPlaybackDelayCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackDelayCallback;)V
.end method

.method private native nativeSetPlaybackExceptionCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackExceptionCallback;)V
.end method

.method private static native nativeSetSaveDebugMessagesToFile(Z)V
.end method

.method private native nativeSetSeekingCallback(Lcom/meicam/sdk/NvsStreamingContext$SeekingCallback;)V
.end method

.method private native nativeSetStreamingEngineCallback(Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;)V
.end method

.method private static native nativeSetStreamingPoolSizeInByte(I)V
.end method

.method private native nativeSetThemeEndingEnabled(Z)Z
.end method

.method private native nativeSetUserWatermarkForCapture(Ljava/lang/String;IIFIII)V
.end method

.method private native nativeSetVideoStabilization(I)V
.end method

.method private native nativeSetZoom(I)V
.end method

.method private static native nativeSetupHumanDetectionData(ILjava/lang/String;)Z
.end method

.method private native nativeStartAutoFocus(Landroid/graphics/RectF;)V
.end method

.method private native nativeStartBufferCapturePreview(IILcom/meicam/sdk/NvsRational;IZ)Z
.end method

.method private native nativeStartCapturePreview(IIILcom/meicam/sdk/NvsRational;)Z
.end method

.method private native nativeStartCapturePreviewWithSpecialSize(IIILcom/meicam/sdk/NvsSize;)Z
.end method

.method private native nativeStartContinuousFocus()V
.end method

.method private native nativeStartDualBufferCapturePreview(IIIIIZILcom/meicam/sdk/NvsRational;ILcom/cdv/io/NvAndroidVirtualCameraSurfaceTexture;)Z
.end method

.method private native nativeStartRecording(Ljava/lang/String;FIII)Z
.end method

.method private native nativeStop(I)V
.end method

.method private native nativeStopRecording(Z)V
.end method

.method private native nativeTakePicture(I)Z
.end method

.method private native nativeToggleFlashMode(I)V
.end method

.method private static native nativeVerifySdkLicenseFile(Landroid/content/Context;Ljava/lang/String;Z)Lcom/meicam/sdk/NvsStreamingContext$VerifyLicenseResult;
.end method

.method public static openMainThreadChecker(Z)V
    .locals 0

    .line 938
    invoke-static {p0}, Lcom/meicam/sdk/NvsUtils;->setCheckEnable(Z)V

    return-void
.end method

.method public static setDebugLevel(I)V
    .locals 1

    .line 615
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 616
    sget v0, Lcom/meicam/sdk/NvsStreamingContext;->m_debugLevel:I

    if-ne p0, v0, :cond_0

    return-void

    .line 619
    :cond_0
    sput p0, Lcom/meicam/sdk/NvsStreamingContext;->m_debugLevel:I

    .line 620
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    if-eqz v0, :cond_1

    .line 621
    invoke-static {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetDebugLevel(I)V

    :cond_1
    return-void
.end method

.method public static setFxPluginBundlePathList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 608
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 609
    sput-object p0, Lcom/meicam/sdk/NvsStreamingContext;->m_fxPluginBundlePathList:Ljava/util/List;

    return-void
.end method

.method public static setIconSize(I)V
    .locals 0

    .line 4708
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4709
    sput p0, Lcom/meicam/sdk/NvsStreamingContext;->m_iconSize:I

    return-void
.end method

.method public static setLoadPluginFromAssets(Z)V
    .locals 0

    .line 595
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    return-void
.end method

.method public static setLogFilePath(Ljava/lang/String;)V
    .locals 2

    .line 639
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "/"

    .line 643
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 644
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-gtz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 646
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 648
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 650
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 652
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 653
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 655
    :cond_5
    sput-object p0, Lcom/meicam/sdk/NvsStreamingContext;->m_logFilePath:Ljava/lang/String;

    .line 657
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    if-eqz v0, :cond_6

    .line 658
    invoke-static {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetLogFilePath(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public static setMaxAudioReaderCount(I)V
    .locals 0

    .line 4702
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4703
    sput p0, Lcom/meicam/sdk/NvsStreamingContext;->m_maxAudioReaderCount:I

    return-void
.end method

.method public static setMaxCafCacheMemorySize(I)V
    .locals 0

    .line 4742
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4743
    invoke-static {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetMaxCafCacheMemorySize(I)V

    return-void
.end method

.method public static setMaxIconReader(I)V
    .locals 0

    .line 4714
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4715
    sput p0, Lcom/meicam/sdk/NvsStreamingContext;->m_maxIconReader:I

    return-void
.end method

.method public static setMaxImageReaderCount(I)V
    .locals 0

    .line 4600
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4601
    sput p0, Lcom/meicam/sdk/NvsStreamingContext;->m_maxImageReaderCount:I

    return-void
.end method

.method public static setMaxReaderCount(I)V
    .locals 0

    .line 4696
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4697
    sput p0, Lcom/meicam/sdk/NvsStreamingContext;->m_maxReaderCount:I

    return-void
.end method

.method public static setNativeLibraryDirPath(Ljava/lang/String;)V
    .locals 0

    .line 586
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 587
    sput-object p0, Lcom/meicam/sdk/NvsStreamingContext;->m_nativeLibraryDirPath:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 589
    sput-boolean p0, Lcom/meicam/sdk/NvsStreamingContext;->m_customNativeLibraryDirPath:Z

    :cond_0
    return-void
.end method

.method public static setPluginDirPath(Ljava/lang/String;)V
    .locals 0

    .line 601
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    return-void
.end method

.method public static setSaveDebugMessagesToFile(Z)V
    .locals 1

    .line 627
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 628
    sget-boolean v0, Lcom/meicam/sdk/NvsStreamingContext;->m_saveDebugMessagesToFile:Z

    if-ne p0, v0, :cond_0

    return-void

    .line 631
    :cond_0
    sput-boolean p0, Lcom/meicam/sdk/NvsStreamingContext;->m_saveDebugMessagesToFile:Z

    .line 632
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_instance:Lcom/meicam/sdk/NvsStreamingContext;

    if-eqz v0, :cond_1

    .line 633
    invoke-static {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetSaveDebugMessagesToFile(Z)V

    :cond_1
    return-void
.end method

.method public static setStreamingPoolSizeInByte(I)V
    .locals 0

    .line 4748
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4749
    sput p0, Lcom/meicam/sdk/NvsStreamingContext;->m_streamingPoolSizeInByte:I

    return-void
.end method

.method public static setupHumanDetectionData(ILjava/lang/String;)Z
    .locals 0

    .line 1004
    invoke-static {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetupHumanDetectionData(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static tryLoadFaceDetectionLibrary()V
    .locals 5

    .line 4816
    sget-boolean v0, Lcom/meicam/sdk/NvsStreamingContext;->m_faceDetectionLibLoaded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "com.meicam.sdk.NvsBEFFaceEffectDetector"

    .line 4821
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v1

    goto :goto_0

    :catch_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    const-string v2, "effect"

    .line 4827
    invoke-static {v2}, Lcom/meicam/sdk/NvsStreamingContext;->tryLoadNativeLibrary(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    :try_start_1
    const-string v2, "com.meicam.sdk.NvsMGFaceEffectDetector"

    .line 4832
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v1

    goto :goto_1

    :catch_1
    move v2, v0

    :goto_1
    if-eqz v2, :cond_3

    const-string v2, "megface-new"

    .line 4838
    invoke-static {v2}, Lcom/meicam/sdk/NvsStreamingContext;->tryLoadNativeLibrary(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "MegviiFacepp"

    invoke-static {v2}, Lcom/meicam/sdk/NvsStreamingContext;->tryLoadNativeLibrary(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    return-void

    :cond_3
    :try_start_2
    const-string v2, "com.meicam.sdk.NvsSTFaceEffectDetector"

    .line 4843
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v2, v1

    goto :goto_2

    :catch_2
    move v2, v0

    :goto_2
    const-string v3, "st_mobile"

    if-eqz v2, :cond_4

    .line 4849
    invoke-static {v3}, Lcom/meicam/sdk/NvsStreamingContext;->tryLoadNativeLibrary(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    return-void

    :cond_4
    :try_start_3
    const-string v2, "com.meicam.sdk.NvsFaceEffectV1Detector"

    .line 4854
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move v2, v1

    goto :goto_3

    :catch_3
    move v2, v0

    :goto_3
    :try_start_4
    const-string v4, "com.meicam.sdk.NvsFUFaceEffectDetector"

    .line 4861
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move v2, v1

    :catch_4
    if-eqz v2, :cond_6

    const-string v2, "fuai"

    .line 4868
    invoke-static {v2}, Lcom/meicam/sdk/NvsStreamingContext;->tryLoadNativeLibrary(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    return-void

    :cond_5
    const-string v2, "nama"

    .line 4870
    invoke-static {v2}, Lcom/meicam/sdk/NvsStreamingContext;->tryLoadNativeLibrary(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    return-void

    :cond_6
    :try_start_5
    const-string v2, "com.meicam.sdk.NvsFaceEffect2Init"

    .line 4876
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move v0, v1

    :catch_5
    if-eqz v0, :cond_7

    .line 4882
    invoke-static {v3}, Lcom/meicam/sdk/NvsStreamingContext;->tryLoadNativeLibrary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 4885
    :cond_7
    sput-boolean v1, Lcom/meicam/sdk/NvsStreamingContext;->m_faceDetectionLibLoaded:Z

    return-void
.end method

.method private static tryLoadNativeLibrary(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/UnsatisfiedLinkError;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 4807
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public StartContinuousFocus()V
    .locals 1

    .line 3293
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string v0, "The auxiliary streaming context can not support capture!!"

    .line 3294
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3298
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3299
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeStartContinuousFocus()V

    return-void
.end method

.method public appendBeautyCaptureVideoFx()Lcom/meicam/sdk/NvsCaptureVideoFx;
    .locals 1

    .line 3643
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string v0, "The auxiliary streaming context can not support capture!!"

    .line 3644
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3648
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3649
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsStreamingContext;->getCaptureVideoFxCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meicam/sdk/NvsStreamingContext;->insertBeautyCaptureVideoFx(I)Lcom/meicam/sdk/NvsCaptureVideoFx;

    move-result-object p0

    return-object p0
.end method

.method public appendBuiltinCaptureAudioFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsCaptureAudioFx;
    .locals 1

    .line 3772
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 3773
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3777
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3778
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsStreamingContext;->getCaptureAudioFxCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/meicam/sdk/NvsStreamingContext;->insertBuiltinCaptureAudioFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsCaptureAudioFx;

    move-result-object p0

    return-object p0
.end method

.method public appendBuiltinCaptureVideoFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsCaptureVideoFx;
    .locals 1

    .line 3503
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 3504
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3508
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3509
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsStreamingContext;->getCaptureVideoFxCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/meicam/sdk/NvsStreamingContext;->insertBuiltinCaptureVideoFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsCaptureVideoFx;

    move-result-object p0

    return-object p0
.end method

.method public appendCustomCaptureVideoFx(Lcom/meicam/sdk/NvsCustomVideoFx$Renderer;)Lcom/meicam/sdk/NvsCaptureVideoFx;
    .locals 1

    .line 3597
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 3598
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3602
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3603
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsStreamingContext;->getCaptureVideoFxCount()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeInsertCustomCaptureVideoFx(Lcom/meicam/sdk/NvsCustomVideoFx$Renderer;I)Lcom/meicam/sdk/NvsCaptureVideoFx;

    move-result-object p0

    return-object p0
.end method

.method public appendPackagedCaptureVideoFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsCaptureVideoFx;
    .locals 1

    .line 3549
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 3550
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3554
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3555
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsStreamingContext;->getCaptureVideoFxCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/meicam/sdk/NvsStreamingContext;->insertPackagedCaptureVideoFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsCaptureVideoFx;

    move-result-object p0

    return-object p0
.end method

.method public applyCaptureScene(Ljava/lang/String;)Z
    .locals 1

    .line 3907
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 3908
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 3912
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3913
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeApplyCaptureScene(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public calcDurationAfterCurvesVariableSpeed(Ljava/lang/String;)J
    .locals 0

    .line 4628
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4629
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeCalcDurationAfterCurvesVariableSpeed(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public canDecodeVideoStreamBySoftware(Ljava/lang/String;)Z
    .locals 0

    .line 2003
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2004
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeCanDecodeVideoStreamBySoftware(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public cancelAutoFocus()V
    .locals 1

    .line 3276
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string v0, "The auxiliary streaming context can not support capture!!"

    .line 3277
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3281
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3282
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeCancelAutoFocus()V

    return-void
.end method

.method public checkDontSetCameraParamOnRecordingWithSystemRecorder()Z
    .locals 1

    .line 2811
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string v0, "The auxiliary streaming context can not support capture!!"

    .line 2812
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2816
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2817
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeCheckDontSetCameraParamOnRecordingWithSystemRecorder()Z

    move-result p0

    return p0
.end method

.method public clearCachedResources(Z)V
    .locals 0

    .line 2703
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2704
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeClearCachedResources(Z)V

    return-void
.end method

.method public clearCachedResources(ZI)V
    .locals 0

    .line 2718
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2719
    invoke-direct {p0, p1, p2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeClearCachedResourcesFlags(ZI)V

    return-void
.end method

.method public compileTimeline(Lcom/meicam/sdk/NvsTimeline;JJLjava/lang/String;III)Z
    .locals 12

    move-object v0, p0

    .line 2197
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2199
    iget v9, v0, Lcom/meicam/sdk/NvsStreamingContext;->m_compileVideoBitrateMultiplier:F

    iget-object v10, v0, Lcom/meicam/sdk/NvsStreamingContext;->m_compileConfigurations:Ljava/util/Hashtable;

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/meicam/sdk/NvsStreamingContext;->nativeCompileTimeline(Lcom/meicam/sdk/NvsTimeline;JJLjava/lang/String;IIFLjava/util/Hashtable;I)Z

    move-result v0

    return v0
.end method

.method public connectCapturePreviewWithLiveWindow(Lcom/meicam/sdk/NvsLiveWindow;)Z
    .locals 1

    .line 2833
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 2834
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2838
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2839
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeConnectCapturePreviewWithLiveWindow(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public connectCapturePreviewWithLiveWindowExt(Lcom/meicam/sdk/NvsLiveWindowExt;)Z
    .locals 1

    .line 2856
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 2857
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2861
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2862
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeConnectCapturePreviewWithLiveWindow(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public connectCapturePreviewWithSurfaceTexture(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 2878
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 2879
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2883
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2884
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeConnectCapturePreviewWithSurfaceTexture(Landroid/graphics/SurfaceTexture;)Z

    move-result p0

    return p0
.end method

.method public connectTimelineWithLiveWindow(Lcom/meicam/sdk/NvsTimeline;Lcom/meicam/sdk/NvsLiveWindow;)Z
    .locals 0

    .line 2304
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2305
    invoke-direct {p0, p1, p2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeConnectTimelineWithLiveWindow(Lcom/meicam/sdk/NvsTimeline;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public connectTimelineWithLiveWindowExt(Lcom/meicam/sdk/NvsTimeline;Lcom/meicam/sdk/NvsLiveWindowExt;)Z
    .locals 0

    .line 2323
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2324
    invoke-direct {p0, p1, p2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeConnectTimelineWithLiveWindow(Lcom/meicam/sdk/NvsTimeline;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public connectTimelineWithSurfaceTexture(Lcom/meicam/sdk/NvsTimeline;Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 2342
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2343
    new-instance v0, Lcom/meicam/sdk/NvsRational;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    invoke-direct {p0, p1, p2, v0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeConnectTimelineWithSurfaceTexture(Lcom/meicam/sdk/NvsTimeline;Landroid/graphics/SurfaceTexture;Lcom/meicam/sdk/NvsRational;)Z

    move-result p0

    return p0
.end method

.method public connectTimelineWithSurfaceTexture(Lcom/meicam/sdk/NvsTimeline;Landroid/graphics/SurfaceTexture;Lcom/meicam/sdk/NvsRational;)Z
    .locals 0

    .line 2363
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2364
    invoke-direct {p0, p1, p2, p3}, Lcom/meicam/sdk/NvsStreamingContext;->nativeConnectTimelineWithSurfaceTexture(Lcom/meicam/sdk/NvsTimeline;Landroid/graphics/SurfaceTexture;Lcom/meicam/sdk/NvsRational;)Z

    move-result p0

    return p0
.end method

.method public createAuxiliaryStreamingContext(I)Lcom/meicam/sdk/NvsStreamingContext;
    .locals 4

    .line 4661
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4662
    sget-object v0, Lcom/meicam/sdk/NvsStreamingContext;->m_context:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4665
    :cond_0
    new-instance v2, Lcom/meicam/sdk/NvsStreamingContext;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/meicam/sdk/NvsStreamingContext;-><init>(Landroid/content/Context;Z)V

    .line 4667
    invoke-direct {p0, v2, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeCreateAuxiliaryStreamingContext(Lcom/meicam/sdk/NvsStreamingContext;I)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    const/4 p0, 0x1

    .line 4670
    iput-boolean p0, v2, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    return-object v2
.end method

.method public createHumanDetectionHandle(Ljava/lang/String;Ljava/lang/String;J)Lcom/meicam/sdk/NvsHumanDetectionHandle;
    .locals 0

    .line 1036
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1037
    invoke-static {p1, p2, p3, p4}, Lcom/meicam/sdk/NvsStreamingContext;->nativeCreateHumanDetectionHandle(Ljava/lang/String;Ljava/lang/String;J)Lcom/meicam/sdk/NvsHumanDetectionHandle;

    move-result-object p0

    return-object p0
.end method

.method public createTimeline(Lcom/meicam/sdk/NvsVideoResolution;Lcom/meicam/sdk/NvsRational;Lcom/meicam/sdk/NvsAudioResolution;)Lcom/meicam/sdk/NvsTimeline;
    .locals 0

    .line 2111
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2112
    invoke-direct {p0, p1, p2, p3}, Lcom/meicam/sdk/NvsStreamingContext;->nativeCreateTimeline(Lcom/meicam/sdk/NvsVideoResolution;Lcom/meicam/sdk/NvsRational;Lcom/meicam/sdk/NvsAudioResolution;)Lcom/meicam/sdk/NvsTimeline;

    move-result-object p0

    return-object p0
.end method

.method public createVideoFrameRetriever(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoFrameRetriever;
    .locals 0

    .line 4528
    new-instance p0, Lcom/meicam/sdk/NvsVideoFrameRetriever;

    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsVideoFrameRetriever;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public createVideoKeyFrameRetriever(Ljava/lang/String;IZ)Lcom/meicam/sdk/NvsVideoKeyFrameRetriever;
    .locals 0

    .line 4534
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4535
    new-instance p0, Lcom/meicam/sdk/NvsVideoKeyFrameRetriever;

    invoke-direct {p0, p1, p2, p3}, Lcom/meicam/sdk/NvsVideoKeyFrameRetriever;-><init>(Ljava/lang/String;IZ)V

    return-object p0
.end method

.method public destoryAuxiliaryStreamingContext(Lcom/meicam/sdk/NvsStreamingContext;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 4690
    :cond_0
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeDestoryAuxiliaryStreamingContext(Lcom/meicam/sdk/NvsStreamingContext;)V

    return-void
.end method

.method public destroyHumanDetectionHandle(Lcom/meicam/sdk/NvsHumanDetectionHandle;)Z
    .locals 0

    .line 1072
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1073
    invoke-static {p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeDestroyHumanDetectionHandle(Lcom/meicam/sdk/NvsHumanDetectionHandle;)Z

    move-result p0

    return p0
.end method

.method public detectEngineRenderFramePerSecond()F
    .locals 0

    .line 1098
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1099
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeDetectEngineRenderFramePerSecond()F

    move-result p0

    return p0
.end method

.method public detectVideoFileKeyframeInterval(Ljava/lang/String;)I
    .locals 0

    .line 1997
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeDetectVideoFileKeyframeInterval(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public extendHumanDetectionHandle(Lcom/meicam/sdk/NvsHumanDetectionHandle;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 0

    .line 1057
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1058
    invoke-static {p1, p2, p3, p4, p5}, Lcom/meicam/sdk/NvsStreamingContext;->nativeExtendHumanDetectionHandle(Lcom/meicam/sdk/NvsHumanDetectionHandle;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public getAVFileInfo(Ljava/lang/String;)Lcom/meicam/sdk/NvsAVFileInfo;
    .locals 1

    const/4 v0, 0x0

    .line 1948
    invoke-direct {p0, p1, v0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetAVFileInfo(Ljava/lang/String;I)Lcom/meicam/sdk/NvsAVFileInfo;

    move-result-object p0

    return-object p0
.end method

.method public getAVFileInfo(Ljava/lang/String;I)Lcom/meicam/sdk/NvsAVFileInfo;
    .locals 0

    .line 1965
    invoke-direct {p0, p1, p2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetAVFileInfo(Ljava/lang/String;I)Lcom/meicam/sdk/NvsAVFileInfo;

    move-result-object p0

    return-object p0
.end method

.method public getAllBuiltinAudioFxNames()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4383
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4384
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetAllBuiltinAudioFxNames()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllBuiltinCaptureAudioFxNames()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4399
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4400
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetAllBuiltinCaptureAudioFxNames()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllBuiltinCaptureVideoFxNames()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4432
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4433
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetAllBuiltinCaptureVideoFxNames()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllBuiltinVideoFxNames()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4368
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4369
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetAllBuiltinVideoFxNames()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAllBuiltinVideoTransitionNames()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4416
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4417
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetAllBuiltinVideoTransitionNames()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;
    .locals 0

    .line 1152
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1153
    iget-object p0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_assetPackageManager:Lcom/meicam/sdk/NvsAssetPackageManager;

    return-object p0
.end method

.method public getAudioFxDescription(Ljava/lang/String;)Lcom/meicam/sdk/NvsFxDescription;
    .locals 0

    .line 4511
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4512
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetAudioFxDescription(Ljava/lang/String;)Lcom/meicam/sdk/NvsFxDescription;

    move-result-object p0

    return-object p0
.end method

.method public getAudioStreamCountInMediaFile(Ljava/lang/String;)I
    .locals 0

    .line 4732
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetAudioStreamCountInMediaFile(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getBeautyVideoFxName()Ljava/lang/String;
    .locals 0

    .line 4448
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4449
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetBeautyVideoFxName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCaptureAudioFxByIndex(I)Lcom/meicam/sdk/NvsCaptureAudioFx;
    .locals 1

    .line 3883
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 3884
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3888
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3889
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetCaptureAudioFxByIndex(I)Lcom/meicam/sdk/NvsCaptureAudioFx;

    move-result-object p0

    return-object p0
.end method

.method public getCaptureAudioFxCount()I
    .locals 1

    .line 3860
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string v0, "The auxiliary streaming context can not support capture!!"

    .line 3861
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 3865
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3866
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetCaptureAudioFxCount()I

    move-result p0

    return p0
.end method

.method public getCaptureDeviceCapability(I)Lcom/meicam/sdk/NvsStreamingContext$CaptureDeviceCapability;
    .locals 1

    .line 2775
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 2776
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 2780
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2781
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetCaptureDeviceCapability(I)Lcom/meicam/sdk/NvsStreamingContext$CaptureDeviceCapability;

    move-result-object p0

    return-object p0
.end method

.method public getCaptureDeviceCount()I
    .locals 1

    .line 2733
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string v0, "The auxiliary streaming context can not support capture!!"

    .line 2734
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2738
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2739
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetCaptureDeviceCount()I

    move-result p0

    return p0
.end method

.method public getCapturePreviewVideoSize(I)Lcom/meicam/sdk/NvsSize;
    .locals 1

    .line 3221
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 3222
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3223
    new-instance p0, Lcom/meicam/sdk/NvsSize;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/meicam/sdk/NvsSize;-><init>(II)V

    return-object p0

    .line 3226
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3227
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetCapturePreviewVideoSize(I)Lcom/meicam/sdk/NvsSize;

    move-result-object p0

    return-object p0
.end method

.method public getCaptureVideoFxByIndex(I)Lcom/meicam/sdk/NvsCaptureVideoFx;
    .locals 1

    .line 3749
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 3750
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3754
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3755
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetCaptureVideoFxByIndex(I)Lcom/meicam/sdk/NvsCaptureVideoFx;

    move-result-object p0

    return-object p0
.end method

.method public getCaptureVideoFxCount()I
    .locals 1

    .line 3727
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string v0, "The auxiliary streaming context can not support capture!!"

    .line 3728
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 3732
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3733
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetCaptureVideoFxCount()I

    move-result p0

    return p0
.end method

.method public getCompileConfigurations()Ljava/util/Hashtable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 4012
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4013
    iget-object p0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_compileConfigurations:Ljava/util/Hashtable;

    return-object p0
.end method

.method public getCompileVideoBitrateMultiplier()F
    .locals 0

    .line 4045
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4046
    iget p0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_compileVideoBitrateMultiplier:F

    return p0
.end method

.method public getCurrentCaptureSceneId()Ljava/lang/String;
    .locals 1

    .line 3929
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string v0, "The auxiliary streaming context can not support capture!!"

    .line 3930
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3934
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3935
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetCurrentCaptureSceneId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCustomCompileVideoHeight()I
    .locals 0

    .line 2286
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2287
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetCustomCompileVideoHeight()I

    move-result p0

    return p0
.end method

.method public getDefaultThemeEndingLogoImageFilePath()Ljava/lang/String;
    .locals 0

    .line 2043
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2044
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetDefaultThemeEndingLogoImageFilePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultVideoTransitionName()Ljava/lang/String;
    .locals 0

    .line 4463
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4464
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetDefaultVideoTransitionName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExposureCompensation()I
    .locals 1

    .line 3481
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string v0, "The auxiliary streaming context can not support capture!!"

    .line 3482
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 3486
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3487
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetExposureCompensation()I

    move-result p0

    return p0
.end method

.method public getFlashMode()I
    .locals 1

    .line 4348
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string v0, "The auxiliary streaming context can not support capture!!"

    .line 4349
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 4353
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4354
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetFlashMode()I

    move-result p0

    return p0
.end method

.method public getFontInfoByFilePath(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/meicam/sdk/NvsFontInfo;",
            ">;"
        }
    .end annotation

    .line 2075
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2076
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetFontInfoByFilePath(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getInternalObject()J
    .locals 2

    .line 4765
    iget-wide v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_internalObject:J

    return-wide v0
.end method

.method public getRecordVideoBitrateMultiplier()F
    .locals 1

    .line 4083
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string v0, "The auxiliary streaming context can not support capture!!"

    .line 4084
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 4088
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4089
    iget p0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_recordVideoBitrateMultiplier:F

    return p0
.end method

.method public getSdkVersion()Lcom/meicam/sdk/NvsStreamingContext$SdkVersion;
    .locals 0

    .line 1138
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1139
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetSdkVersion()Lcom/meicam/sdk/NvsStreamingContext$SdkVersion;

    move-result-object p0

    return-object p0
.end method

.method public getStreamingEngineState()I
    .locals 0

    .line 2145
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2146
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetStreamingEngineState()I

    move-result p0

    return p0
.end method

.method public getTimelineCurrentPosition(Lcom/meicam/sdk/NvsTimeline;)J
    .locals 0

    .line 2162
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2163
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetTimelineCurrentPosition(Lcom/meicam/sdk/NvsTimeline;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getVideoFxDescription(Ljava/lang/String;)Lcom/meicam/sdk/NvsFxDescription;
    .locals 0

    .line 4494
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4495
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetVideoFxDescription(Ljava/lang/String;)Lcom/meicam/sdk/NvsFxDescription;

    move-result-object p0

    return-object p0
.end method

.method public getVideoStabilization()I
    .locals 1

    .line 3421
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string v0, "The auxiliary streaming context can not support capture!!"

    .line 3422
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 3426
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3427
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetVideoStabilization()I

    move-result p0

    return p0
.end method

.method public getZoom()I
    .locals 1

    .line 3353
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string v0, "The auxiliary streaming context can not support capture!!"

    .line 3354
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 3358
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3359
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetZoom()I

    move-result p0

    return p0
.end method

.method public grabImageFromTimeline(Lcom/meicam/sdk/NvsTimeline;JLcom/meicam/sdk/NvsRational;)Landroid/graphics/Bitmap;
    .locals 6

    .line 2450
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 2451
    invoke-direct/range {v0 .. v5}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGrabImageFromTimeline(Lcom/meicam/sdk/NvsTimeline;JLcom/meicam/sdk/NvsRational;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public grabImageFromTimeline(Lcom/meicam/sdk/NvsTimeline;JLcom/meicam/sdk/NvsRational;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 2473
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2474
    invoke-direct/range {p0 .. p5}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGrabImageFromTimeline(Lcom/meicam/sdk/NvsTimeline;JLcom/meicam/sdk/NvsRational;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public grabImageFromTimelineAsync(Lcom/meicam/sdk/NvsTimeline;JLcom/meicam/sdk/NvsRational;I)Z
    .locals 0

    .line 2538
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2539
    invoke-direct/range {p0 .. p5}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGrabImageFromTimelineAsyncMode(Lcom/meicam/sdk/NvsTimeline;JLcom/meicam/sdk/NvsRational;I)Z

    move-result p0

    return p0
.end method

.method public insertBeautyCaptureVideoFx(I)Lcom/meicam/sdk/NvsCaptureVideoFx;
    .locals 1

    .line 3665
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 3666
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3670
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3671
    invoke-virtual {p0}, Lcom/meicam/sdk/NvsStreamingContext;->getBeautyVideoFxName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->insertBuiltinCaptureVideoFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsCaptureVideoFx;

    move-result-object p0

    return-object p0
.end method

.method public insertBuiltinCaptureAudioFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsCaptureAudioFx;
    .locals 1

    .line 3797
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 3798
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3802
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3803
    invoke-direct {p0, p1, p2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeInsertBuiltinCaptureAudioFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsCaptureAudioFx;

    move-result-object p0

    return-object p0
.end method

.method public insertBuiltinCaptureVideoFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsCaptureVideoFx;
    .locals 1

    .line 3527
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 3528
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3532
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3533
    invoke-direct {p0, p1, p2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeInsertBuiltinCaptureVideoFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsCaptureVideoFx;

    move-result-object p0

    return-object p0
.end method

.method public insertCustomCaptureVideoFx(Lcom/meicam/sdk/NvsCustomVideoFx$Renderer;I)Lcom/meicam/sdk/NvsCaptureVideoFx;
    .locals 1

    .line 3623
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 3624
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3628
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3629
    invoke-direct {p0, p1, p2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeInsertCustomCaptureVideoFx(Lcom/meicam/sdk/NvsCustomVideoFx$Renderer;I)Lcom/meicam/sdk/NvsCaptureVideoFx;

    move-result-object p0

    return-object p0
.end method

.method public insertPackagedCaptureVideoFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsCaptureVideoFx;
    .locals 1

    .line 3573
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 3574
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3578
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3579
    invoke-direct {p0, p1, p2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeInsertPackagedCaptureVideoFx(Ljava/lang/String;I)Lcom/meicam/sdk/NvsCaptureVideoFx;

    move-result-object p0

    return-object p0
.end method

.method protected isAuxiliaryContext()Z
    .locals 0

    .line 4770
    iget-boolean p0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    return p0
.end method

.method public isCaptureDeviceBackFacing(I)Z
    .locals 1

    .line 2754
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 2755
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2759
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2760
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeIsCaptureDeviceBackFacing(I)Z

    move-result p0

    return p0
.end method

.method public isCompilingPaused()Z
    .locals 0

    .line 2248
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2249
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeIsCompilingPaused()Z

    move-result p0

    return p0
.end method

.method public isDefaultCaptionFade()Z
    .locals 0

    .line 4567
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4568
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeIsDefaultCaptionFade()Z

    move-result p0

    return p0
.end method

.method public isFlashOn()Z
    .locals 2

    .line 3398
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string v0, "The auxiliary streaming context can not support capture!!"

    .line 3399
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3403
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3404
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeGetFlashMode()I

    move-result p0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public isPlaybackPaused()Z
    .locals 0

    .line 2662
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2663
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeIsPlaybackPaused()Z

    move-result p0

    return p0
.end method

.method public isRecordingPaused()Z
    .locals 1

    .line 4287
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string v0, "The auxiliary streaming context can not support capture!!"

    .line 4288
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 4292
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4293
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeIsRecordingPaused()Z

    move-result p0

    return p0
.end method

.method public isSdkAuthorised()Z
    .locals 0

    .line 690
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 691
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeIsSdkAuthorised()Z

    move-result p0

    return p0
.end method

.method public pauseCompiling()Z
    .locals 1

    .line 2216
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    const/4 v0, 0x1

    .line 2217
    invoke-direct {p0, v0}, Lcom/meicam/sdk/NvsStreamingContext;->nativePauseResumeCompiling(Z)Z

    move-result p0

    return p0
.end method

.method public pausePlayback()Z
    .locals 1

    .line 2630
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    const/4 v0, 0x1

    .line 2631
    invoke-direct {p0, v0}, Lcom/meicam/sdk/NvsStreamingContext;->nativePauseResumePlayback(Z)Z

    move-result p0

    return p0
.end method

.method public pauseRecording()Z
    .locals 1

    .line 4244
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string v0, "The auxiliary streaming context can not support capture!!"

    .line 4245
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 4249
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    const/4 v0, 0x1

    .line 4250
    invoke-direct {p0, v0}, Lcom/meicam/sdk/NvsStreamingContext;->nativePauseResumeRecording(Z)Z

    move-result p0

    return p0
.end method

.method public playbackTimeline(Lcom/meicam/sdk/NvsTimeline;JJIZI)Z
    .locals 5

    .line 2569
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_2

    .line 2572
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v3

    cmp-long v3, p2, v3

    if-gez v3, :cond_2

    cmp-long v1, p4, v1

    if-ltz v1, :cond_1

    cmp-long v1, p2, p4

    if-ltz v1, :cond_1

    goto :goto_0

    .line 2577
    :cond_1
    invoke-direct/range {p0 .. p8}, Lcom/meicam/sdk/NvsStreamingContext;->nativePlaybackTimeline(Lcom/meicam/sdk/NvsTimeline;JJIZI)Z

    move-result p0

    return p0

    .line 2573
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_timelineTimestampCallback:Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;

    if-eqz p0, :cond_3

    .line 2574
    invoke-interface {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;->onTimestampOutOfRange(Lcom/meicam/sdk/NvsTimeline;)V

    :cond_3
    return v0
.end method

.method public playbackTimeline(Lcom/meicam/sdk/NvsTimeline;JJLcom/meicam/sdk/NvsRational;ZI)Z
    .locals 5

    .line 2607
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_2

    .line 2610
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v3

    cmp-long v3, p2, v3

    if-gez v3, :cond_2

    cmp-long v1, p4, v1

    if-ltz v1, :cond_1

    cmp-long v1, p2, p4

    if-ltz v1, :cond_1

    goto :goto_0

    .line 2615
    :cond_1
    invoke-direct/range {p0 .. p8}, Lcom/meicam/sdk/NvsStreamingContext;->nativePlaybackTimelineWithProxyScale(Lcom/meicam/sdk/NvsTimeline;JJLcom/meicam/sdk/NvsRational;ZI)Z

    move-result p0

    return p0

    .line 2611
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_timelineTimestampCallback:Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;

    if-eqz p0, :cond_3

    .line 2612
    invoke-interface {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;->onTimestampOutOfRange(Lcom/meicam/sdk/NvsTimeline;)V

    :cond_3
    return v0
.end method

.method public registerFontByFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2059
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2060
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeRegisterFontByFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public removeAllCaptureAudioFx()V
    .locals 1

    .line 3840
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string v0, "The auxiliary streaming context can not support capture!!"

    .line 3841
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3845
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3846
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeRemoveAllCaptureAudioFx()V

    return-void
.end method

.method public removeAllCaptureVideoFx()V
    .locals 1

    .line 3708
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string v0, "The auxiliary streaming context can not support capture!!"

    .line 3709
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3713
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3714
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeRemoveAllCaptureVideoFx()V

    return-void
.end method

.method public removeCaptureAudioFx(I)Z
    .locals 1

    .line 3820
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 3821
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 3825
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3826
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeRemoveCaptureAudioFx(I)Z

    move-result p0

    return p0
.end method

.method public removeCaptureVideoFx(I)Z
    .locals 1

    .line 3689
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 3690
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 3694
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3695
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeRemoveCaptureVideoFx(I)Z

    move-result p0

    return p0
.end method

.method public removeCurrentCaptureScene()V
    .locals 1

    .line 3949
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string v0, "The auxiliary streaming context can not support capture!!"

    .line 3950
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3954
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3955
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeRemoveCurrentCaptureScene()V

    return-void
.end method

.method public removeTimeline(Lcom/meicam/sdk/NvsTimeline;)Z
    .locals 0

    .line 2131
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2132
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeRemoveTimeline(Lcom/meicam/sdk/NvsTimeline;)Z

    move-result p0

    return p0
.end method

.method public removeUserWatermarkForCapture()V
    .locals 9

    .line 2935
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string v0, "The auxiliary streaming context can not support capture!!"

    .line 2936
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2940
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    .line 2941
    invoke-direct/range {v1 .. v8}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetUserWatermarkForCapture(Ljava/lang/String;IIFIII)V

    return-void
.end method

.method public resumeCompiling()Z
    .locals 1

    .line 2232
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    const/4 v0, 0x0

    .line 2233
    invoke-direct {p0, v0}, Lcom/meicam/sdk/NvsStreamingContext;->nativePauseResumeCompiling(Z)Z

    move-result p0

    return p0
.end method

.method public resumePlayback()Z
    .locals 1

    .line 2646
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    const/4 v0, 0x0

    .line 2647
    invoke-direct {p0, v0}, Lcom/meicam/sdk/NvsStreamingContext;->nativePauseResumePlayback(Z)Z

    move-result p0

    return p0
.end method

.method public resumeRecording()Z
    .locals 2

    .line 4265
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string v0, "The auxiliary streaming context can not support capture!!"

    .line 4266
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4270
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4271
    invoke-direct {p0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->nativePauseResumeRecording(Z)Z

    move-result p0

    return p0
.end method

.method public sampleColorFromCapturedVideoFrame(Landroid/graphics/RectF;)Lcom/meicam/sdk/NvsColor;
    .locals 0

    .line 3243
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3244
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSampleColorFromCapturedVideoFrame(Landroid/graphics/RectF;)Lcom/meicam/sdk/NvsColor;

    move-result-object p0

    return-object p0
.end method

.method public seekTimeline(Lcom/meicam/sdk/NvsTimeline;JII)Z
    .locals 3

    .line 2389
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-ltz v1, :cond_2

    .line 2392
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v1

    cmp-long v1, p2, v1

    if-ltz v1, :cond_1

    goto :goto_0

    .line 2397
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSeekTimeline(Lcom/meicam/sdk/NvsTimeline;JII)Z

    move-result p0

    return p0

    .line 2393
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_timelineTimestampCallback:Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;

    if-eqz p0, :cond_3

    .line 2394
    invoke-interface {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;->onTimestampOutOfRange(Lcom/meicam/sdk/NvsTimeline;)V

    :cond_3
    return v0
.end method

.method public seekTimeline(Lcom/meicam/sdk/NvsTimeline;JLcom/meicam/sdk/NvsRational;I)Z
    .locals 3

    .line 2422
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-ltz v1, :cond_2

    .line 2425
    invoke-virtual {p1}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v1

    cmp-long v1, p2, v1

    if-ltz v1, :cond_1

    goto :goto_0

    .line 2430
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSeekTimelineWithProxyScale(Lcom/meicam/sdk/NvsTimeline;JLcom/meicam/sdk/NvsRational;I)Z

    move-result p0

    return p0

    .line 2426
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_timelineTimestampCallback:Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;

    if-eqz p0, :cond_3

    .line 2427
    invoke-interface {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;->onTimestampOutOfRange(Lcom/meicam/sdk/NvsTimeline;)V

    :cond_3
    return v0
.end method

.method public sendBufferToCapturePreview([BJ)Z
    .locals 2

    .line 3168
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 3169
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3173
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/meicam/sdk/NvsStreamingContext;->sendBufferToCapturePreview([BJI)Z

    move-result p0

    return p0
.end method

.method public sendBufferToCapturePreview([BJI)Z
    .locals 1

    .line 3193
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 3194
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 3198
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSendBufferToCapturePreview([BJI)Z

    move-result p0

    return p0
.end method

.method public setAudioOutputDeviceVolume(F)V
    .locals 0

    .line 4643
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4644
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetAudioOutputDeviceVolume(F)V

    return-void
.end method

.method public setAutoExposureRect(Landroid/graphics/RectF;)V
    .locals 1

    .line 3313
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 3314
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3318
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3319
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetAutoExposureRect(Landroid/graphics/RectF;)V

    return-void
.end method

.method public setCaptureDeviceCallback(Lcom/meicam/sdk/NvsStreamingContext$CaptureDeviceCallback;)V
    .locals 1

    .line 1683
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 1684
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1687
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1688
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_catpureDeviceCallback:Lcom/meicam/sdk/NvsStreamingContext$CaptureDeviceCallback;

    .line 1689
    invoke-static {p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetCaptureDeviceCallback(Lcom/meicam/sdk/NvsStreamingContext$CaptureDeviceCallback;)V

    return-void
.end method

.method public setCaptureFps(I)V
    .locals 0

    .line 4736
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4737
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetCaptureFps(I)V

    return-void
.end method

.method public setCaptureRecordingDurationCallback(Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingDurationCallback;)V
    .locals 1

    .line 1767
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 1768
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1772
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1773
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_captureRecordingDurationCallback:Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingDurationCallback;

    .line 1774
    invoke-static {p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetCaptureRecordingDurationCallback(Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingDurationCallback;)V

    return-void
.end method

.method public setCaptureRecordingFrameReachedCallback(Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingFrameReachedCallback;)V
    .locals 1

    .line 1746
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 1747
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1751
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1752
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_captureRecordingFrameReachedCallback:Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingFrameReachedCallback;

    .line 1753
    invoke-static {p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetCaptureRecordingFrameReachedCallback(Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingFrameReachedCallback;)V

    return-void
.end method

.method public setCaptureRecordingStartedCallback(Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingStartedCallback;)V
    .locals 1

    .line 1734
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 1735
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1739
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1740
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_captureRecordingStartedCallback:Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingStartedCallback;

    .line 1741
    invoke-static {p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetCaptureRecordingStartedCallback(Lcom/meicam/sdk/NvsStreamingContext$CaptureRecordingStartedCallback;)V

    return-void
.end method

.method public setCapturedPictureCallback(Lcom/meicam/sdk/NvsStreamingContext$CapturedPictureCallback;)V
    .locals 1

    .line 1722
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 1723
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1727
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1728
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_catpuredPictureCallback:Lcom/meicam/sdk/NvsStreamingContext$CapturedPictureCallback;

    .line 1729
    invoke-static {p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetCapturedPictureCallback(Lcom/meicam/sdk/NvsStreamingContext$CapturedPictureCallback;)V

    return-void
.end method

.method public setCapturedVideoFrameGrabberCallback(Lcom/meicam/sdk/NvsStreamingContext$CapturedVideoFrameGrabberCallback;)V
    .locals 1

    .line 1702
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 1703
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1707
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1708
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_catpuredVideoFrameGrabberCallback:Lcom/meicam/sdk/NvsStreamingContext$CapturedVideoFrameGrabberCallback;

    .line 1709
    invoke-static {p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetCapturedVideoFrameGrabberCallback(Lcom/meicam/sdk/NvsStreamingContext$CapturedVideoFrameGrabberCallback;)V

    return-void
.end method

.method public setCompileCallback(Lcom/meicam/sdk/NvsStreamingContext$CompileCallback;)V
    .locals 0

    .line 1802
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1803
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_compileCallback:Lcom/meicam/sdk/NvsStreamingContext$CompileCallback;

    .line 1804
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetCompileCallback(Lcom/meicam/sdk/NvsStreamingContext$CompileCallback;)V

    return-void
.end method

.method public setCompileCallback2(Lcom/meicam/sdk/NvsStreamingContext$CompileCallback2;)V
    .locals 0

    .line 1848
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1849
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_compileCallback2:Lcom/meicam/sdk/NvsStreamingContext$CompileCallback2;

    .line 1850
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetCompileCallback2(Lcom/meicam/sdk/NvsStreamingContext$CompileCallback2;)V

    return-void
.end method

.method public setCompileConfigurations(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3997
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3998
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_compileConfigurations:Ljava/util/Hashtable;

    return-void
.end method

.method public setCompileFloatProgressCallback(Lcom/meicam/sdk/NvsStreamingContext$CompileFloatProgressCallback;)V
    .locals 0

    .line 1855
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1856
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_compileFloatProgressCallback:Lcom/meicam/sdk/NvsStreamingContext$CompileFloatProgressCallback;

    .line 1857
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetCompileFloatProgressCallback(Lcom/meicam/sdk/NvsStreamingContext$CompileFloatProgressCallback;)V

    return-void
.end method

.method public setCompileVideoBitrateMultiplier(F)V
    .locals 1

    .line 4028
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    .line 4032
    :cond_0
    iput p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_compileVideoBitrateMultiplier:F

    return-void
.end method

.method public setCustomCompileVideoHeight(I)V
    .locals 0

    .line 2271
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2272
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetCustomCompileVideoHeight(I)V

    return-void
.end method

.method public setDefaultAudioTransitionName(Ljava/lang/String;)V
    .locals 0

    .line 4477
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4478
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetDefaultAudioTransitionName(Ljava/lang/String;)V

    return-void
.end method

.method public setDefaultCaptionFade(Z)V
    .locals 0

    .line 4551
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4552
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetDefaultCaptionFade(Z)V

    return-void
.end method

.method public setDefaultThemeEndingLogoImageFilePath(Ljava/lang/String;)Z
    .locals 0

    .line 2028
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2029
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetDefaultThemeEndingLogoImageFilePath(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setExposureCompensation(I)V
    .locals 1

    .line 3461
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 3462
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3466
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3467
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetExposureCompensation(I)V

    return-void
.end method

.method public setHardwareErrorCallback(Lcom/meicam/sdk/NvsStreamingContext$HardwareErrorCallback;)V
    .locals 0

    .line 1931
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1932
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_hardwareErrorCallback:Lcom/meicam/sdk/NvsStreamingContext$HardwareErrorCallback;

    .line 1933
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetHardwareErrorCallback(Lcom/meicam/sdk/NvsStreamingContext$HardwareErrorCallback;)V

    return-void
.end method

.method public setImageGrabberCallback(Lcom/meicam/sdk/NvsStreamingContext$ImageGrabberCallback;)V
    .locals 0

    .line 2513
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2514
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetImageGrabberCallback(Lcom/meicam/sdk/NvsStreamingContext$ImageGrabberCallback;)V

    return-void
.end method

.method public setImageReaderCount(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4584
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4585
    invoke-static {p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetImageReaderCount(I)V

    return-void
.end method

.method protected setInternalObject(J)V
    .locals 0

    .line 4760
    iput-wide p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_internalObject:J

    return-void
.end method

.method public setMediaCodecIconReaderEnabled(Ljava/lang/String;Z)V
    .locals 0

    .line 4726
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4727
    invoke-direct {p0, p1, p2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetMediaCodecIconReaderEnabled(Ljava/lang/String;Z)V

    return-void
.end method

.method public setMediaCodecVideoDecodingOperatingRate(Ljava/lang/String;I)V
    .locals 0

    .line 4720
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4721
    invoke-direct {p0, p1, p2}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetMediaCodecVideoDecodingOperatingRate(Ljava/lang/String;I)V

    return-void
.end method

.method public setPlaybackCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;)V
    .locals 0

    .line 1787
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1788
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_playbackCallback:Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;

    .line 1789
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetPlaybackCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;)V

    return-void
.end method

.method public setPlaybackCallback2(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;)V
    .locals 0

    .line 1870
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1871
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_playbackCallback2:Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;

    .line 1872
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetPlaybackCallback2(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;)V

    return-void
.end method

.method public setPlaybackDelayCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackDelayCallback;)V
    .locals 0

    .line 1885
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1886
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_playbackDelayCallback:Lcom/meicam/sdk/NvsStreamingContext$PlaybackDelayCallback;

    .line 1887
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetPlaybackDelayCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackDelayCallback;)V

    return-void
.end method

.method public setPlaybackExceptionCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackExceptionCallback;)V
    .locals 0

    .line 1900
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1901
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_playbackExceptionCallback:Lcom/meicam/sdk/NvsStreamingContext$PlaybackExceptionCallback;

    .line 1902
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetPlaybackExceptionCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackExceptionCallback;)V

    return-void
.end method

.method public setRecordVideoBitrateMultiplier(F)V
    .locals 1

    .line 4061
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 4062
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4066
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    return-void

    .line 4070
    :cond_1
    iput p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_recordVideoBitrateMultiplier:F

    return-void
.end method

.method public setSeekingCallback(Lcom/meicam/sdk/NvsStreamingContext$SeekingCallback;)V
    .locals 0

    .line 1915
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1916
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_seekingCallback:Lcom/meicam/sdk/NvsStreamingContext$SeekingCallback;

    .line 1917
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetSeekingCallback(Lcom/meicam/sdk/NvsStreamingContext$SeekingCallback;)V

    return-void
.end method

.method public setStreamingEngineCallback(Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;)V
    .locals 0

    .line 1817
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1818
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_streamingEngineCallback:Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;

    .line 1819
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetStreamingEngineCallback(Lcom/meicam/sdk/NvsStreamingContext$StreamingEngineCallback;)V

    return-void
.end method

.method public setThemeEndingEnabled(Z)Z
    .locals 0

    .line 2090
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2091
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetThemeEndingEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public setTimelineTimestampCallback(Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;)V
    .locals 0

    .line 1833
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 1834
    iput-object p1, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_timelineTimestampCallback:Lcom/meicam/sdk/NvsStreamingContext$TimelineTimestampCallback;

    return-void
.end method

.method public setUserWatermarkForCapture(Ljava/lang/String;IIFIII)V
    .locals 1

    .line 2916
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 2917
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2921
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2922
    invoke-direct/range {p0 .. p7}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetUserWatermarkForCapture(Ljava/lang/String;IIFIII)V

    return-void
.end method

.method public setVideoStabilization(I)V
    .locals 1

    .line 3441
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 3442
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3446
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3447
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetVideoStabilization(I)V

    return-void
.end method

.method public setZoom(I)V
    .locals 1

    .line 3333
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 3334
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3338
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3339
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeSetZoom(I)V

    return-void
.end method

.method public startAutoFocus(Landroid/graphics/RectF;)V
    .locals 1

    .line 3258
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 3259
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3263
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3264
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeStartAutoFocus(Landroid/graphics/RectF;)V

    return-void
.end method

.method public startBufferCapturePreview(IILcom/meicam/sdk/NvsRational;IZ)Z
    .locals 1

    .line 3086
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 3087
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 3091
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3092
    invoke-direct/range {p0 .. p5}, Lcom/meicam/sdk/NvsStreamingContext;->nativeStartBufferCapturePreview(IILcom/meicam/sdk/NvsRational;IZ)Z

    move-result p0

    return p0
.end method

.method public startCapturePreview(IIILcom/meicam/sdk/NvsRational;)Z
    .locals 2

    .line 3020
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 3021
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3025
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3027
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->checkCameraPermission()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3030
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meicam/sdk/NvsStreamingContext;->nativeStartCapturePreview(IIILcom/meicam/sdk/NvsRational;)Z

    move-result p0

    return p0
.end method

.method public startCapturePreviewForLiveStreaming(IIILcom/meicam/sdk/NvsRational;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public startCapturePreviewWithSpecialSize(IIILcom/meicam/sdk/NvsSize;)Z
    .locals 2

    .line 3052
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 3053
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3057
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 3059
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->checkCameraPermission()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3062
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meicam/sdk/NvsStreamingContext;->nativeStartCapturePreviewWithSpecialSize(IIILcom/meicam/sdk/NvsSize;)Z

    move-result p0

    return p0
.end method

.method public startDualBufferCapturePreview(Landroid/graphics/SurfaceTexture;IIIIIZILcom/meicam/sdk/NvsRational;I)Z
    .locals 13

    move-object v0, p1

    move-object v1, p0

    .line 3129
    iget-boolean v2, v1, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    const/4 v11, 0x0

    if-eqz v2, :cond_0

    const-string v0, "Meicam"

    const-string v1, "The auxiliary streaming context can not support capture!!"

    .line 3130
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    .line 3134
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    if-nez v0, :cond_1

    return v11

    .line 3139
    :cond_1
    new-instance v12, Lcom/cdv/io/NvAndroidVirtualCameraSurfaceTexture;

    invoke-direct {v12, p1}, Lcom/cdv/io/NvAndroidVirtualCameraSurfaceTexture;-><init>(Landroid/graphics/SurfaceTexture;)V

    move-object v0, p0

    move v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    move-object v10, v12

    .line 3141
    invoke-direct/range {v0 .. v10}, Lcom/meicam/sdk/NvsStreamingContext;->nativeStartDualBufferCapturePreview(IIIIIZILcom/meicam/sdk/NvsRational;ILcom/cdv/io/NvAndroidVirtualCameraSurfaceTexture;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3146
    invoke-virtual {v12}, Lcom/cdv/io/NvAndroidVirtualCameraSurfaceTexture;->release()V

    return v11

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public startRecording(Ljava/lang/String;)Z
    .locals 8

    .line 4105
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 4106
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4110
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4112
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->checkCameraPermission()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 4115
    :cond_1
    iget v4, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_recordVideoBitrateMultiplier:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/meicam/sdk/NvsStreamingContext;->nativeStartRecording(Ljava/lang/String;FIII)Z

    move-result p0

    return p0
.end method

.method public startRecording(Ljava/lang/String;I)Z
    .locals 8

    .line 4134
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 4135
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4139
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4141
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->checkCameraPermission()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 4144
    :cond_1
    iget v4, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_recordVideoBitrateMultiplier:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/meicam/sdk/NvsStreamingContext;->nativeStartRecording(Ljava/lang/String;FIII)Z

    move-result p0

    return p0
.end method

.method public startRecording(Ljava/lang/String;ILjava/util/Hashtable;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 4175
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 4176
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4180
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4182
    invoke-direct {p0}, Lcom/meicam/sdk/NvsStreamingContext;->checkCameraPermission()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz p3, :cond_4

    const-string v0, "bitrate"

    .line 4188
    invoke-virtual {p3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    if-eqz v0, :cond_2

    .line 4190
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    const-string v2, "gopsize"

    .line 4191
    invoke-virtual {p3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Number;

    if-eqz p3, :cond_3

    .line 4193
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v1

    :cond_3
    move v5, v0

    move v6, v1

    goto :goto_1

    :cond_4
    move v5, v1

    move v6, v5

    .line 4196
    :goto_1
    iget v4, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_recordVideoBitrateMultiplier:F

    move-object v2, p0

    move-object v3, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/meicam/sdk/NvsStreamingContext;->nativeStartRecording(Ljava/lang/String;FIII)Z

    move-result p0

    return p0
.end method

.method public stop()V
    .locals 1

    .line 2674
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    const/4 v0, 0x0

    .line 2675
    invoke-direct {p0, v0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeStop(I)V

    return-void
.end method

.method public stop(I)V
    .locals 0

    .line 2689
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 2690
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeStop(I)V

    return-void
.end method

.method public stopRecording()V
    .locals 1

    .line 4208
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string v0, "The auxiliary streaming context can not support capture!!"

    .line 4209
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4213
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    const/4 v0, 0x1

    .line 4214
    invoke-direct {p0, v0}, Lcom/meicam/sdk/NvsStreamingContext;->nativeStopRecording(Z)V

    return-void
.end method

.method public stopRecording(Z)V
    .locals 0

    .line 4228
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4229
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeStopRecording(Z)V

    return-void
.end method

.method public takePicture(I)Z
    .locals 1

    .line 4307
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 4308
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 4312
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4313
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeTakePicture(I)Z

    move-result p0

    return p0
.end method

.method public toggleFlash(Z)V
    .locals 1

    .line 3373
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 3374
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3378
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    .line 3380
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeToggleFlashMode(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 3382
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeToggleFlashMode(I)V

    :goto_0
    return-void
.end method

.method public toggleFlashMode(I)V
    .locals 1

    .line 4327
    iget-boolean v0, p0, Lcom/meicam/sdk/NvsStreamingContext;->m_isAuxiliaryContext:Z

    if-eqz v0, :cond_0

    const-string p0, "Meicam"

    const-string p1, "The auxiliary streaming context can not support capture!!"

    .line 4328
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4332
    :cond_0
    invoke-static {}, Lcom/meicam/sdk/NvsUtils;->checkFunctionInMainThread()Z

    .line 4333
    invoke-direct {p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->nativeToggleFlashMode(I)V

    return-void
.end method
