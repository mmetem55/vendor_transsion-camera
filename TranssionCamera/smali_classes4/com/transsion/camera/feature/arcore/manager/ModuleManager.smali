.class public Lcom/transsion/camera/feature/arcore/manager/ModuleManager;
.super Ljava/lang/Object;
.source "ModuleManager.java"

# interfaces
.implements Lcom/transsion/camera/feature/arcore/manager/IModuleOperator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/manager/ModuleManager$UIHandler;,
        Lcom/transsion/camera/feature/arcore/manager/ModuleManager$RunCallback;
    }
.end annotation


# static fields
.field private static final AUDIO_ACTUAL_SAMPLE_COUNT:I = 0x400

.field private static final AUDIO_CHANNEL_COUNT:I = 0x2

.field private static final AUDIO_SAMPLE_RATE:I = 0xbb80

.field private static final AUDIO_TIME_STAMP:I = 0x8af

.field private static final BITMAP_FAIL_SIZE:I = 0x2800

.field private static final BLUE_FACTOR:I = 0x18

.field private static final DEFAULT_AVATAR_INDEX:I = 0x2

.field private static final DEFAULT_BLUR_RADIUS:I = 0x5

.field private static final KEY_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field private static final MIME_MP4:Ljava/lang/String; = "video/mp4"

.field private static final MODULE_NEED_BLUR_ITEMS_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final MP4_SUFFIX:Ljava/lang/String; = ".mp4"

.field private static final MSG_QUERY_DB:I = 0x64

.field public static final REQUEST_CODE_TO_REVIEW_FRAGMENT:I = 0x64

.field public static final RESULT_VIDEO_DELETE:I = 0x2

.field public static final RESULT_VIDEO_SAVE:I = 0x1

.field public static final RESULT_VIDEO_SHARE:I = 0x3

.field public static final SOUND_SHUTTER_CLICK:Ljava/lang/String; = "camera_click.ogg"

.field public static final SOUND_SHUTTER_CLICK_FILES:[Ljava/lang/String;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TEMP_VIDEO_FILE_PATH:Ljava/lang/String; = "temp_video_file_path"

.field private static final VIDEO_DURATION:I = 0x5dc

.field private static final VIDEO_NAME_FORMAT:Ljava/lang/String; = "\'VID\'_yyyyMMdd_HHmmss"

.field private static final VIDEO_SIZE:I = 0x19000

.field private static mLastUri:Landroid/net/Uri;

.field private static sIsArcoreChecked:Z


# instance fields
.field private final mARPreview:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

.field private final mActionSound:Lcom/transsion/camera/utils/sound/ActionSound;

.field private mAudioEffectRenderCallback:Lcom/transsion/common/mediacodec/record/video/AudioEffectRenderCallback;

.field private mAudioFx:Lcom/meicam/sdk/NvsCaptureAudioFx;

.field private volatile mAvatarChangeTwice:Z

.field private mAvatarP2As:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/faceunity/pta_art/entity/AvatarPTA;",
            ">;"
        }
    .end annotation
.end field

.field private final mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

.field private final mBaseModuleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/transsion/camera/feature/arcore/module/BaseModule;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

.field private final mCaptureDrawable:Landroid/graphics/drawable/Drawable;

.field private final mChangeCallback:Lcom/transsion/camera/feature/arcore/manager/IModuleChangeCallback;

.field private mCurrAudioEffect:Ljava/lang/String;

.field private mCurrBgPath:Ljava/lang/String;

.field private volatile mCurrentModuleId:I

.field private volatile mCurrentRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;

.field private final mCutoutHeight:I

.field private final mDBHelper:Lcom/faceunity/pta_art/entity/DBHelper;

.field private mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mEnableLocation:Z

.field private mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

.field private final mFirstFrameCallback:Lcom/transsion/camera/feature/arcore/common/capture/FirstFrameCallback;

.field private final mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

.field private final mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

.field private final mGaussianBlur:Lcom/transsion/common/blur/GaussianBlur;

.field private final mHandler:Landroid/os/Handler;

.field private final mHintCallback:Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;

.field private mInitGender:I

.field private mInitModuleId:I

.field private mIsCometoArcore:Z

.field private mIsModuleChanging:Z

.field private mIsResume:Z

.field private mIsShareVideo:Z

.field private mIsShowGuide:Z

.field private mIsShutterSoundEnable:Z

.field private volatile mLastModuleId:I

.field private volatile mLastPicModuleId:I

.field private final mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

.field private final mPictureHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

.field private final mPreviewCover:Landroid/widget/ImageView;

.field private mRecordTime:J

.field private final mRenderCore:Lcom/meicam/sdk/NvsAudioEffectRenderCore;

.field private final mSceneSoundPlayer:Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;

.field private final mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

.field private mShowAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

.field private mShowIndex:I

.field private mShutterClickSampleId:I

.field private mShutterSoundEnabled:Z

.field private mShutterSoundLoaded:Z

.field private final mSoundPlayerLock:Ljava/lang/Object;

.field private mStartRecordTime:J

.field private mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field public final mTakePictureCallBackView:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;

.field private final mTapHelper:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

.field private final mVibrator:Landroid/os/Vibrator;

.field private final mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;


# direct methods
.method public static synthetic $r8$lambda$2iSHHJdNMDry_xiizQw26ia29Jc(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->lambda$saveVideo$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$Dz8LRoTEElYpi2b-HaN9mrYc4R8(Lcom/faceunity/pta_art/entity/AvatarPTA;Lcom/faceunity/pta_art/entity/AvatarPTA;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->lambda$updateAvatarPTA$1(Lcom/faceunity/pta_art/entity/AvatarPTA;Lcom/faceunity/pta_art/entity/AvatarPTA;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RQLL6hyRS686V5JEdOVLfy5Jsx4(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->lambda$doEnableShutterSound$0(Lcom/transsion/camera/utils/sound/IActionSound;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vuq7pyaEbJ9512HefnXJkQ-EILI(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->lambda$saveVideo$3(Landroid/net/Uri;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 123
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ModuleManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "/system/media/audio/ui/camera_click.ogg"

    const-string v1, "/product/media/audio/ui/camera_click.ogg"

    .line 172
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->SOUND_SHUTTER_CLICK_FILES:[Ljava/lang/String;

    .line 424
    new-instance v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$9;

    invoke-direct {v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$9;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->MODULE_NEED_BLUR_ITEMS_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/camera/feature/arcore/common/preview/PreviewHolder;Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;Lcom/transsion/camera/feature/arcore/common/helpers/IGestureListener;Lcom/transsion/camera/feature/arcore/common/camera/ICameraError;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    .line 469
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    .line 133
    iput-boolean v2, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mIsCometoArcore:Z

    const/4 v9, -0x1

    .line 140
    iput v9, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mLastModuleId:I

    .line 142
    iput v9, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mLastPicModuleId:I

    .line 162
    iput-boolean v2, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mShutterSoundEnabled:Z

    const/4 v10, 0x0

    .line 163
    iput-boolean v10, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mShutterSoundLoaded:Z

    .line 167
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mSoundPlayerLock:Ljava/lang/Object;

    .line 170
    iput-boolean v10, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mIsShutterSoundEnable:Z

    .line 185
    iput-boolean v10, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mIsShareVideo:Z

    .line 189
    iput-boolean v10, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mEnableLocation:Z

    .line 196
    iput v9, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mInitModuleId:I

    .line 197
    iput v9, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mInitGender:I

    .line 203
    new-instance v3, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$1;

    invoke-direct {v3, v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$1;-><init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)V

    iput-object v3, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mAudioEffectRenderCallback:Lcom/transsion/common/mediacodec/record/video/AudioEffectRenderCallback;

    .line 237
    new-instance v3, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$2;

    invoke-direct {v3, v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$2;-><init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)V

    iput-object v3, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mChangeCallback:Lcom/transsion/camera/feature/arcore/manager/IModuleChangeCallback;

    .line 368
    new-instance v3, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$6;

    invoke-direct {v3, v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$6;-><init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)V

    iput-object v3, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFirstFrameCallback:Lcom/transsion/camera/feature/arcore/common/capture/FirstFrameCallback;

    .line 470
    iput-object v8, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

    .line 471
    move-object v7, v8

    check-cast v7, Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    iput-object v7, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    .line 472
    invoke-interface {v7}, Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;->getScreenManager()Lcom/transsion/camera/app/common/manager/IScreenManager;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    .line 473
    new-instance v3, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$UIHandler;

    const/4 v11, 0x0

    invoke-direct {v3, v0, v11}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$UIHandler;-><init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;Lcom/transsion/camera/feature/arcore/manager/ModuleManager$1;)V

    iput-object v3, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mHandler:Landroid/os/Handler;

    .line 474
    invoke-static/range {p1 .. p1}, Lcom/transsion/camera/utils/ScreenUtils;->getCutoutHeight(Landroid/content/Context;)I

    move-result v4

    iput v4, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCutoutHeight:I

    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    move-object/from16 v12, p3

    .line 476
    iput-object v12, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mHintCallback:Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;

    .line 477
    new-instance v5, Lcom/transsion/common/blur/GaussianBlur;

    invoke-direct {v5, v8}, Lcom/transsion/common/blur/GaussianBlur;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mGaussianBlur:Lcom/transsion/common/blur/GaussianBlur;

    .line 478
    new-instance v5, Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;

    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mSceneSoundPlayer:Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;

    .line 479
    iput-boolean v10, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mIsShowGuide:Z

    .line 480
    iput-boolean v10, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mIsResume:Z

    const-string v5, "assets:/meishesdk.lic"

    .line 481
    invoke-static {v8, v5}, Lcom/meicam/sdk/NvsStreamingContext;->init(Landroid/app/Activity;Ljava/lang/String;)Lcom/meicam/sdk/NvsStreamingContext;

    .line 482
    new-instance v5, Lcom/meicam/sdk/NvsAudioEffectRenderCore;

    invoke-direct {v5}, Lcom/meicam/sdk/NvsAudioEffectRenderCore;-><init>()V

    iput-object v5, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mRenderCore:Lcom/meicam/sdk/NvsAudioEffectRenderCore;

    .line 483
    sget v5, Lcom/transsion/camera/feature/arcore/R$drawable;->black_background:I

    invoke-virtual {v8, v5}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCaptureDrawable:Landroid/graphics/drawable/Drawable;

    .line 484
    new-instance v13, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;

    iget-object v5, v1, Lcom/transsion/camera/feature/arcore/common/preview/PreviewHolder;->mARPreview:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-direct {v13, v8, v5, v5, v0}, Lcom/transsion/camera/feature/arcore/common/core/FuEngineCore;-><init>(Landroid/content/Context;Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;Lcom/transsion/camera/feature/arcore/common/preview/IResourceRequester;Lcom/transsion/camera/feature/arcore/manager/ICaptureOperator;)V

    iput-object v13, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    .line 485
    new-instance v5, Lcom/transsion/camera/app/common/location/LocationManager;

    invoke-direct {v5, v8}, Lcom/transsion/camera/app/common/location/LocationManager;-><init>(Landroid/app/Activity;)V

    iput-object v5, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    .line 486
    iget-object v5, v1, Lcom/transsion/camera/feature/arcore/common/preview/PreviewHolder;->mARPreview:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    iput-object v5, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mARPreview:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    .line 487
    iget-object v6, v1, Lcom/transsion/camera/feature/arcore/common/preview/PreviewHolder;->mPreviewCover:Landroid/widget/ImageView;

    iput-object v6, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mPreviewCover:Landroid/widget/ImageView;

    .line 488
    iget-object v6, v1, Lcom/transsion/camera/feature/arcore/common/preview/PreviewHolder;->mTakePictureCallBackView:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;

    iput-object v6, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mTakePictureCallBackView:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;

    const/16 v14, 0x8

    .line 489
    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 490
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/faceunity/pta_art/entity/DBHelper;->getInstance(Landroid/content/Context;)Lcom/faceunity/pta_art/entity/DBHelper;

    move-result-object v6

    iput-object v6, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mDBHelper:Lcom/faceunity/pta_art/entity/DBHelper;

    .line 491
    new-instance v14, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    iget-object v6, v1, Lcom/transsion/camera/feature/arcore/common/preview/PreviewHolder;->mARPreview:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    move-object/from16 v15, p5

    invoke-direct {v14, v8, v6, v3, v15}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;-><init>(Landroid/content/Context;Lcom/transsion/camera/feature/arcore/common/preview/IGLRequester;Landroid/os/Handler;Lcom/transsion/camera/feature/arcore/common/camera/ICameraError;)V

    iput-object v14, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    .line 492
    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/common/preview/PreviewHolder;->mARPreview:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->getOptimalSurfaceSizeChangedListener()Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$OptimalSurfaceSizeChangedListener;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->setOptimalSurfaceSizeChangedListener(Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator$OptimalSurfaceSizeChangedListener;)V

    .line 493
    new-instance v15, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    invoke-direct {v15, v8}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mTapHelper:Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;

    move-object/from16 v1, p4

    .line 494
    invoke-virtual {v15, v1}, Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;->setGestureListener(Lcom/transsion/camera/feature/arcore/common/helpers/IGestureListener;)V

    .line 495
    invoke-virtual {v5, v15}, Landroid/opengl/GLSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 496
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mLastUri:Landroid/net/Uri;

    const-string v1, "enableShutterSound"

    .line 497
    invoke-virtual {v4, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "on"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mIsShutterSoundEnable:Z

    const-string v1, "enableLocation"

    .line 498
    invoke-virtual {v4, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mEnableLocation:Z

    .line 500
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseModuleMap:Ljava/util/HashMap;

    .line 502
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v4, Lcom/transsion/camera/feature/arcore/module/FacemojiModule;

    const-string v16, "0"

    move-object v1, v4

    move-object/from16 v2, p1

    move-object v3, v13

    move-object v10, v4

    move-object v4, v14

    move-object v11, v5

    move-object v5, v15

    move-object v9, v6

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/arcore/module/FacemojiModule;-><init>(Landroid/content/Context;Lcom/faceunity/pta_art/core/base/BaseCore;Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;Ljava/lang/String;)V

    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x2

    .line 503
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v6, Lcom/transsion/camera/feature/arcore/module/FacemojiModule;

    invoke-interface {v7}, Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;->getFrontCameraId()Ljava/lang/String;

    move-result-object v7

    move-object v1, v6

    move-object v10, v6

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/arcore/module/FacemojiModule;-><init>(Landroid/content/Context;Lcom/faceunity/pta_art/core/base/BaseCore;Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;Ljava/lang/String;)V

    invoke-virtual {v9, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    .line 504
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/transsion/camera/feature/arcore/module/EditFaceModule;

    const-string v10, "0"

    invoke-direct {v2, v8, v14, v13, v10}, Lcom/transsion/camera/feature/arcore/module/EditFaceModule;-><init>(Landroid/content/Context;Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Lcom/faceunity/pta_art/core/base/BaseCore;Ljava/lang/String;)V

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 505
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v7, Lcom/transsion/camera/feature/arcore/module/BodyEmojiModule;

    const-string v16, "0"

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v6, p3

    move-object v12, v7

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Lcom/transsion/camera/feature/arcore/module/BodyEmojiModule;-><init>(Landroid/content/Context;Lcom/faceunity/pta_art/core/base/BaseCore;Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;Lcom/transsion/camera/feature/arcore/common/helpers/TapHelper;Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;Ljava/lang/String;)V

    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 507
    iget-object v3, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    iget-object v4, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseModuleMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;

    invoke-interface {v3, v2}, Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;->registerOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    .line 509
    iput v2, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentModuleId:I

    const/4 v1, 0x0

    .line 510
    iput-object v1, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;

    .line 511
    new-instance v1, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;-><init>()V

    iput-object v1, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mPictureHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    .line 512
    new-instance v1, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;-><init>()V

    iput-object v1, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    .line 513
    new-instance v1, Lcom/transsion/camera/utils/sound/ActionSound;

    iget-object v2, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/transsion/camera/utils/sound/ActionSound;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mActionSound:Lcom/transsion/camera/utils/sound/ActionSound;

    const/4 v1, 0x2

    .line 514
    iput v1, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mShowIndex:I

    const-string v1, "vibrator"

    .line 515
    invoke-virtual {v8, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mVibrator:Landroid/os/Vibrator;

    .line 516
    new-instance v1, Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {v1, v8}, Lcom/transsion/camera/app/common/storage/DataStore;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 518
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_audio_icon_position"

    const/4 v4, 0x0

    .line 517
    invoke-virtual {v1, v3, v10, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 519
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->initAvatarData()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/meicam/sdk/NvsCaptureAudioFx;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mAudioFx:Lcom/meicam/sdk/NvsCaptureAudioFx;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/meicam/sdk/NvsAudioEffectRenderCore;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mRenderCore:Lcom/meicam/sdk/NvsAudioEffectRenderCore;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;ZLandroid/graphics/Bitmap;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->updateImageImpl(ZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/faceunity/pta_art/core/base/BaseCore;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/transsion/camera/feature/arcore/common/capture/FirstFrameCallback;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFirstFrameCallback:Lcom/transsion/camera/feature/arcore/common/capture/FirstFrameCallback;

    return-object p0
.end method

.method static synthetic access$1400()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 122
    sget-object v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Landroid/widget/ImageView;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mPreviewCover:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)I
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->getOrientation()I

    move-result p0

    return p0
.end method

.method static synthetic access$1802(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;I)I
    .locals 0

    .line 122
    iput p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mLastPicModuleId:I

    return p1
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)I
    .locals 0

    .line 122
    iget p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentModuleId:I

    return p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;[III)V
    .locals 0

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->handleTakePicAnim([III)V

    return-void
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;Z)Z
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mIsModuleChanging:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/transsion/camera/app/common/location/LocationManager;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;I)I
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->convertJpegOrientation(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mPictureHelper:Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;

    return-object p0
.end method

.method static synthetic access$2502(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 122
    sput-object p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mLastUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)J
    .locals 2

    .line 122
    iget-wide v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mRecordTime:J

    return-wide v0
.end method

.method static synthetic access$2702(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;J)J
    .locals 0

    .line 122
    iput-wide p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mRecordTime:J

    return-wide p1
.end method

.method static synthetic access$2800(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)J
    .locals 2

    .line 122
    iget-wide v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mStartRecordTime:J

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mHintCallback:Lcom/transsion/camera/feature/arcore/common/rendering/HintCallback;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrBgPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Ljava/lang/String;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrAudioEffect:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;Ljava/lang/String;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->goToReviewActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3302(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;Z)Z
    .locals 0

    .line 122
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mIsShareVideo:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;Ljava/lang/String;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->saveVideo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Landroidx/fragment/app/FragmentActivity;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/transsion/camera/app/common/mode/CommonVideoHelper;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->handleStopRecordingCallback()V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Z
    .locals 0

    .line 122
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mIsShowGuide:Z

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Z
    .locals 0

    .line 122
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mIsResume:Z

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mSceneSoundPlayer:Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Lcom/transsion/camera/feature/arcore/manager/IModuleChangeCallback;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mChangeCallback:Lcom/transsion/camera/feature/arcore/manager/IModuleChangeCallback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)Z
    .locals 0

    .line 122
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mIsShutterSoundEnable:Z

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;Z)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->doEnableShutterSound(Z)V

    return-void
.end method

.method private checkResult(II)V
    .locals 2

    const/16 v0, 0x64

    if-ne p1, v0, :cond_3

    .line 1110
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 1120
    :cond_0
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mIsShareVideo:Z

    .line 1121
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->saveVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 1113
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->deleteTempVideoFile()V

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 1116
    iput-boolean p2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mIsShareVideo:Z

    .line 1117
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->saveVideo(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private convertJpegOrientation(I)I
    .locals 0

    const/16 p0, 0x5a

    if-eq p1, p0, :cond_2

    const/16 p0, 0xb4

    if-eq p1, p0, :cond_1

    const/16 p0, 0x10e

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 p0, 0x8

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x6

    return p0
.end method

.method private doEnableShutterSound(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mActionSound:Lcom/transsion/camera/utils/sound/ActionSound;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mShutterSoundLoaded:Z

    if-nez v1, :cond_0

    .line 252
    sget-object v1, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->SOUND_SHUTTER_CLICK_FILES:[Ljava/lang/String;

    new-instance v2, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/utils/sound/ActionSound;->load([Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$SoundCallback;)V

    const/4 v0, 0x1

    .line 261
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mShutterSoundLoaded:Z

    .line 262
    sget-object v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SoundPoolDebug] enableShutterSound load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mActionSound:Lcom/transsion/camera/utils/sound/ActionSound;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 264
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mShutterSoundEnabled:Z

    return-void
.end method

.method private doShutterSoundPlay(Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V
    .locals 1

    .line 268
    iget-boolean v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mShutterSoundEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mActionSound:Lcom/transsion/camera/utils/sound/ActionSound;

    if-nez v0, :cond_0

    goto :goto_1

    .line 274
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "camera_click.ogg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 279
    sget-object p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doShutterSoundPlay error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mActionSound:Lcom/transsion/camera/utils/sound/ActionSound;

    iget p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mShutterClickSampleId:I

    invoke-virtual {p1, p0, p2}, Lcom/transsion/camera/utils/sound/ActionSound;->play(ILcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    const/4 p0, 0x0

    .line 270
    invoke-interface {p2, p0}, Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;->onPlayDone(Z)V

    :cond_3
    return-void
.end method

.method private ensureInitFileSpec()V
    .locals 5

    .line 983
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    if-nez v0, :cond_0

    .line 984
    new-instance v0, Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mAudioEffectRenderCallback:Lcom/transsion/common/mediacodec/record/video/AudioEffectRenderCallback;

    const-string v3, ".mp4"

    const-string v4, "video/mp4"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/common/mediacodec/record/video/AudioEffectRenderCallback;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    :cond_0
    return-void
.end method

.method private getItemParamFromController(Ljava/lang/String;)D
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {p0, p1}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemGetParam(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method private getOrientation()I
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    invoke-interface {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;->getOrientation()I

    move-result p0

    return p0
.end method

.method private getUpdateState(II)Z
    .locals 0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private goToReviewActivity(Ljava/lang/String;)V
    .locals 4

    .line 1065
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

    const-string v2, "com.transsion.camera.app.ReviewCameraActivity"

    invoke-static {v2}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1066
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1067
    iget v2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCutoutHeight:I

    const-string v3, "key_preview_cutout_height"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1068
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mScreenManager:Lcom/transsion/camera/app/common/manager/IScreenManager;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/manager/IScreenManager;->getNavigationHeight()I

    move-result v2

    const-string v3, "key_preview_navigationbar_height"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1069
    iget-boolean v2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mIsCometoArcore:Z

    const-string v3, "key_iscome_to_arcore"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "key_video_path"

    .line 1070
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "review_fragment"

    const-string v2, "arcore"

    .line 1071
    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1073
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->onGotoActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private handleStopRecordingCallback()V
    .locals 2

    .line 1022
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$14;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$14;-><init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleTakePicAnim([III)V
    .locals 2

    .line 858
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$12;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$12;-><init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;[III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 877
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x64

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 878
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 879
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 880
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x50

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private hidePreviewCover()V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$8;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$8;-><init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private indexOf(Lcom/faceunity/pta_art/entity/AvatarPTA;)I
    .locals 6

    .line 582
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mAvatarP2As:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    .line 583
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getIdCompat()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 584
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mAvatarP2As:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 585
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mAvatarP2As:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/faceunity/pta_art/entity/AvatarPTA;

    if-eqz v1, :cond_1

    .line 586
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getIdCompat()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getIdCompat()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mAvatarP2As:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private initAvatarData()V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mDBHelper:Lcom/faceunity/pta_art/entity/DBHelper;

    invoke-virtual {v0}, Lcom/faceunity/pta_art/entity/DBHelper;->getAllAvatarP2As()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mAvatarP2As:Ljava/util/List;

    .line 524
    iget v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mShowIndex:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x2

    .line 525
    iput v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mShowIndex:I

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mAvatarP2As:Ljava/util/List;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mShowIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/faceunity/pta_art/entity/AvatarPTA;

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mShowAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    return-void
.end method

.method private isCheckARCore()Z
    .locals 4

    const/4 v0, 0x0

    .line 701
    :try_start_0
    sget-object v1, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$17;->$SwitchMap$com$google$ar$core$ArCoreApk$InstallStatus:[I

    invoke-static {}, Lcom/google/ar/core/ArCoreApk;->getInstance()Lcom/google/ar/core/ArCoreApk;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Lcom/google/ar/core/ArCoreApk;->requestInstall(Landroid/app/Activity;Z)Lcom/google/ar/core/ArCoreApk$InstallStatus;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq p0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_0

    :catch_0
    move-exception p0

    .line 707
    sget-object v1, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Exception creating session error = "

    invoke-static {v1, v2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method private isMainThread()Z
    .locals 1

    .line 376
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNeedToBlur(II)Z
    .locals 2

    .line 435
    sget-object p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->MODULE_NEED_BLUR_ITEMS_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 436
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private synthetic lambda$doEnableShutterSound$0(Lcom/transsion/camera/utils/sound/IActionSound;I)V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mSoundPlayerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mActionSound:Lcom/transsion/camera/utils/sound/ActionSound;

    if-nez v1, :cond_0

    .line 255
    invoke-interface {p1, p2}, Lcom/transsion/camera/utils/sound/IActionSound;->unload(I)V

    goto :goto_0

    .line 257
    :cond_0
    iput p2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mShutterClickSampleId:I

    .line 259
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$saveVideo$2()V
    .locals 2

    .line 1157
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

    sget-object v1, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mLastUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->startToshare(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method private synthetic lambda$saveVideo$3(Landroid/net/Uri;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1152
    sget-object v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onFileSaved] +"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1153
    sput-object p1, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mLastUri:Landroid/net/Uri;

    .line 1154
    iget-boolean p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mIsShareVideo:Z

    if-eqz p1, :cond_0

    .line 1157
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1159
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$16;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$16;-><init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private static synthetic lambda$updateAvatarPTA$1(Lcom/faceunity/pta_art/entity/AvatarPTA;Lcom/faceunity/pta_art/entity/AvatarPTA;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 574
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getIdCompat()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getIdCompat()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private moduleChange(IILcom/faceunity/pta_art/entity/AvatarPTA;IZ)I
    .locals 8

    .line 742
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseModuleMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, -0x1

    if-nez v1, :cond_0

    return v3

    .line 745
    :cond_0
    iget v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentModuleId:I

    if-ne v1, p1, :cond_1

    return v3

    :cond_1
    if-nez p1, :cond_2

    .line 748
    sget-boolean v1, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->sIsArcoreChecked:Z

    if-nez v1, :cond_2

    .line 749
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->isCheckARCore()Z

    move-result v1

    sput-boolean v1, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->sIsArcoreChecked:Z

    if-nez v1, :cond_2

    return v3

    .line 754
    :cond_2
    iget-boolean v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mIsResume:Z

    if-nez v1, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_3

    return v3

    .line 757
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mTakePictureCallBackView:Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/arcore/common/widgets/TakePictureCallBackView;->cancelAnimation()V

    .line 758
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseModuleMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/arcore/module/BaseModule;

    .line 759
    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseModuleMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseModuleMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/arcore/module/BaseModule;

    goto :goto_0

    :cond_4
    move-object v4, v5

    .line 760
    :goto_0
    iget-object v6, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseModuleMap:Ljava/util/HashMap;

    iget v7, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentModuleId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseModuleMap:Ljava/util/HashMap;

    iget v6, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentModuleId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/camera/feature/arcore/module/BaseModule;

    .line 761
    :cond_5
    iget-object v6, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    iget-object v7, v1, Lcom/transsion/camera/feature/arcore/module/BaseModule;->mCameraId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->isValid(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_7

    if-nez v5, :cond_6

    .line 764
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseModuleMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/feature/arcore/module/BaseModule;

    move-object v3, v0

    move v1, v7

    goto :goto_1

    :cond_6
    return v3

    :cond_7
    move-object v3, v1

    move v1, p1

    .line 769
    :goto_1
    invoke-direct {p0, v1, p2}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->isNeedToBlur(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 770
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->showPreviewCover()V

    :cond_8
    move-object v0, p0

    move v2, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    .line 772
    invoke-direct/range {v0 .. v7}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->moduleChangeCore(IILcom/transsion/camera/feature/arcore/module/BaseModule;Lcom/transsion/camera/feature/arcore/module/BaseModule;Lcom/faceunity/pta_art/entity/AvatarPTA;IZ)V

    .line 774
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->hidePreviewCover()V

    const/4 v0, 0x0

    return v0
.end method

.method private moduleChangeCore(IILcom/transsion/camera/feature/arcore/module/BaseModule;Lcom/transsion/camera/feature/arcore/module/BaseModule;Lcom/faceunity/pta_art/entity/AvatarPTA;IZ)V
    .locals 2

    .line 719
    iget-object v0, p3, Lcom/transsion/camera/feature/arcore/module/BaseModule;->mRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    invoke-interface {v1}, Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;->isExpandUI()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->setRenderByRotation(Z)V

    .line 720
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mChangeCallback:Lcom/transsion/camera/feature/arcore/manager/IModuleChangeCallback;

    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/arcore/manager/IModuleChangeCallback;->moduleChangeStart(I)V

    .line 721
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {v0, p7}, Lcom/faceunity/pta_art/core/base/BaseCore;->moduleSwitchStart(Z)V

    .line 722
    iget-object p7, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mARPreview:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    iget-object v0, p3, Lcom/transsion/camera/feature/arcore/module/BaseModule;->mRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;

    if-eqz p4, :cond_0

    iget-object p4, p4, Lcom/transsion/camera/feature/arcore/module/BaseModule;->mRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p7, v0, p4}, Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;->moduleChange(Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;Lcom/transsion/camera/feature/arcore/common/preview/IARRenderCallbacker;)V

    .line 723
    iget-object p4, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    new-instance p7, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$10;

    const-string v0, "moduleChangeDone"

    invoke-direct {p7, p0, v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$10;-><init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;Ljava/lang/String;)V

    invoke-virtual {p4, p7}, Lcom/faceunity/pta_art/core/base/BaseCore;->queueEvent(Lcom/faceunity/pta_art/core/base/Task;)V

    .line 729
    iget p4, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentModuleId:I

    iput p4, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mLastModuleId:I

    .line 730
    iget p4, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentModuleId:I

    iput p4, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mLastPicModuleId:I

    .line 731
    iput p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentModuleId:I

    .line 732
    iget-object p1, p3, Lcom/transsion/camera/feature/arcore/module/BaseModule;->mRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/CoreRenderer;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;

    .line 733
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p4, "entry_avatarpta"

    .line 734
    invoke-virtual {p1, p4, p5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p4, "entry_moduleid"

    .line 735
    invoke-virtual {p1, p4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "new_avatar_gender"

    .line 736
    invoke-virtual {p1, p2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 737
    iget-object p2, p3, Lcom/transsion/camera/feature/arcore/module/BaseModule;->mBaseFragment:Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 738
    iget-object p1, p3, Lcom/transsion/camera/feature/arcore/module/BaseModule;->mBaseFragment:Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->showFragment(Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;Z)V

    return-void
.end method

.method private onGotoActivity(Landroid/content/Intent;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1131
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private saveVideo(Ljava/lang/String;)V
    .locals 7

    .line 1135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1136
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "\'VID\'_yyyyMMdd_HHmmss"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1137
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->createFileData(Ljava/lang/String;)V

    .line 1138
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 1139
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1140
    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTitle()Ljava/lang/String;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_display_name"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "datetaken"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v5, 0x3e8

    .line 1143
    div-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "date_modified"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1144
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mime_type"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    iget-wide v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mRecordTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "resolution"

    const-string v1, "1080x1920"

    .line 1147
    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "_size"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1149
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    new-instance v1, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)V

    invoke-interface {v0, v4, p1, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    return-void
.end method

.method private showFragment(Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;Z)V
    .locals 1

    .line 713
    invoke-virtual {p1}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->isNeedExecutePendingTransactions()Z

    move-result v0

    .line 714
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p0, p1, p2, v0}, Lcom/transsion/camera/feature/arcore/common/fragments/FragmentUtil;->pushFragment(Landroidx/fragment/app/FragmentActivity;Landroidx/fragment/app/Fragment;ZZ)V

    return-void
.end method

.method private showPreviewCover()V
    .locals 7

    .line 441
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;

    if-nez v0, :cond_0

    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mARPreview:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x18

    .line 445
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mARPreview:Lcom/transsion/camera/feature/arcore/common/preview/ARPreview;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x18

    .line 446
    sget-object v2, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showPreviewCover preview width "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " height "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 448
    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;

    invoke-virtual {v5, v0, v1}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->snapSurface(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showPreviewCover snapSurface spent time: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 451
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mGaussianBlur:Lcom/transsion/common/blur/GaussianBlur;

    const/4 v5, 0x5

    invoke-virtual {v1, v0, v5}, Lcom/transsion/common/blur/GaussianBlur;->blurBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showPreviewCover blurBitmap spent time: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 453
    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->updatePreviewCoverImage(ZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method private startToshare(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 1170
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->toShareIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1172
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private toShareIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1

    if-eqz p2, :cond_0

    .line 1179
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    .line 1180
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1181
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "android.intent.extra.STREAM"

    .line 1182
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const p0, 0x10008000

    .line 1183
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private updateAvatarByIndex(I)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mAvatarP2As:Ljava/util/List;

    iput p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mShowIndex:I

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/faceunity/pta_art/entity/AvatarPTA;

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mShowAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    return-void
.end method

.method private updateImageImpl(ZLandroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 381
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCaptureDrawable:Landroid/graphics/drawable/Drawable;

    .line 382
    :goto_0
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mPreviewCover:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 383
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mPreviewCover:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const-string p1, "hideARPreviewCover"

    .line 385
    invoke-static {p1}, Lcom/transsion/camera/utils/debug/TraceUtil;->begin(Ljava/lang/String;)V

    .line 386
    invoke-static {}, Lcom/transsion/camera/utils/debug/TraceUtil;->end()V

    .line 387
    sget-object p2, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 388
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mPreviewCover:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final getAvatarPTAList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/faceunity/pta_art/entity/AvatarPTA;",
            ">;"
        }
    .end annotation

    .line 285
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mAvatarP2As:Ljava/util/List;

    return-object p0
.end method

.method public getCurrentAvatarIndex()I
    .locals 0

    .line 293
    iget p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mShowIndex:I

    return p0
.end method

.method public final getCurrentAvatarPTA()Lcom/faceunity/pta_art/entity/AvatarPTA;
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mShowAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    return-object p0
.end method

.method public getCurrentModuleId()I
    .locals 0

    .line 630
    iget p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentModuleId:I

    return p0
.end method

.method public getCurrentRender()Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;

    return-object p0
.end method

.method public getItemIndexFromController(Ljava/lang/String;)I
    .locals 0

    .line 620
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->getItemParamFromController(Ljava/lang/String;)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method public getLastModuleId()I
    .locals 0

    .line 635
    iget p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mLastModuleId:I

    return p0
.end method

.method public getLastUri()Landroid/net/Uri;
    .locals 0

    .line 683
    sget-object p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mLastUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getPreviewCover()Landroid/widget/ImageView;
    .locals 0

    .line 393
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mPreviewCover:Landroid/widget/ImageView;

    return-object p0
.end method

.method public gotoGallery(Landroid/net/Uri;)V
    .locals 5

    .line 651
    sget-object v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[gotoGallery] view uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 652
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    if-nez v1, :cond_0

    goto :goto_0

    .line 656
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    const-string p0, "gotoGallery space in not enough, can not goto gallery."

    .line 657
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 660
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/CameraUtil;->gotoGallery(Landroid/app/Activity;Landroid/net/Uri;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public isCameraAlived()Z
    .locals 0

    .line 664
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->isAlived()Z

    move-result p0

    return p0
.end method

.method public isModuleChanging()Z
    .locals 0

    .line 674
    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mIsModuleChanging:Z

    return p0
.end method

.method public moduleChange(ILcom/faceunity/pta_art/entity/AvatarPTA;I)I
    .locals 7

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    .line 641
    iget v3, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentModuleId:I

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->moduleChange(IILcom/faceunity/pta_art/entity/AvatarPTA;IZ)I

    move-result p0

    return p0
.end method

.method public moduleChange(ILcom/faceunity/pta_art/entity/AvatarPTA;Z)I
    .locals 6

    .line 646
    iget v2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentModuleId:I

    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->moduleChange(IILcom/faceunity/pta_art/entity/AvatarPTA;IZ)I

    move-result p0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1106
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->checkResult(II)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mEnableLocation:Z

    const-string v1, "arcore"

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/app/common/location/LocationManager;->recordLocation(ZLjava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 457
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->onDestroy()V

    .line 458
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->destroy()V

    .line 459
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseModuleMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 460
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseModuleMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;

    invoke-interface {v2, v3}, Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;->unregisterOnOrientationChangeListener(Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;)V

    .line 461
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseModuleMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/arcore/module/BaseModule;

    .line 462
    iget-object v1, v1, Lcom/transsion/camera/feature/arcore/module/BaseModule;->mBaseFragment:Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/arcore/common/fragments/BaseFragment;->releaseResource()V

    goto :goto_0

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mActionSound:Lcom/transsion/camera/utils/sound/ActionSound;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/sound/ActionSound;->release()V

    .line 465
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mGaussianBlur:Lcom/transsion/common/blur/GaussianBlur;

    invoke-virtual {p0}, Lcom/transsion/common/blur/GaussianBlur;->destoryBlur()V

    .line 466
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->close()V

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 364
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mIsResume:Z

    .line 365
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mSceneSoundPlayer:Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/soundplayer/SceneSoundPlayer;->releaseMedaiPlayer()V

    return-void
.end method

.method public onRestart()V
    .locals 2

    .line 328
    sget-object v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[onRestart]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 329
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->initAvatarData()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "temp_video_file_path"

    .line 1009
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1010
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1011
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->ensureInitFileSpec()V

    .line 1012
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->setFileTempPath(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 337
    sget-object v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume(): mInitModuleId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mInitModuleId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentModuleId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentModuleId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 338
    iput-boolean v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mIsResume:Z

    .line 339
    invoke-static {}, Lcom/transsion/camera/app_info/AppInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/ar/ARControl;->initResource(Landroid/content/Context;)V

    .line 340
    iget v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentModuleId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 341
    iget v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mInitModuleId:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 342
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mShowAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mInitGender:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->moduleChange(ILcom/faceunity/pta_art/entity/AvatarPTA;I)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 344
    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mShowAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    invoke-virtual {p0, v0, v2, v1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->moduleChange(ILcom/faceunity/pta_art/entity/AvatarPTA;I)I

    goto :goto_0

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    new-instance v1, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$4;

    const-string v2, "reset moduleChangeState"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$4;-><init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/faceunity/pta_art/core/base/BaseCore;->queueEvent(Lcom/faceunity/pta_art/core/base/Task;)V

    .line 355
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    new-instance v1, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$5;

    const-string v2, "doEnableShutterSound"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$5;-><init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/faceunity/pta_art/core/base/BaseCore;->queueNextEvent(Lcom/faceunity/pta_art/core/base/Task;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1016
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    if-eqz p0, :cond_0

    .line 1017
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "temp_video_file_path"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public queueEvent(Lcom/faceunity/pta_art/core/base/Task;)V
    .locals 0

    .line 669
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {p0, p1}, Lcom/faceunity/pta_art/core/base/BaseCore;->queueEvent(Lcom/faceunity/pta_art/core/base/Task;)V

    return-void
.end method

.method public resetAll(Z)V
    .locals 1

    .line 1079
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;->isExpandUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {p0, p1}, Lcom/faceunity/pta_art/core/base/BaseCore;->resetAllFold(Z)V

    goto :goto_0

    .line 1082
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {p0, p1}, Lcom/faceunity/pta_art/core/base/BaseCore;->resetAll(Z)V

    :goto_0
    return-void
.end method

.method public resetAllMin(Z)V
    .locals 1

    .line 1098
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;->isExpandUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1099
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {p0, p1}, Lcom/faceunity/pta_art/core/base/BaseCore;->resetAllMinFold(Z)V

    goto :goto_0

    .line 1101
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {p0, p1}, Lcom/faceunity/pta_art/core/base/BaseCore;->resetAllMin(Z)V

    :goto_0
    return-void
.end method

.method public resetAllTop(Z)V
    .locals 1

    .line 1088
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;->isExpandUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1089
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {p0, p1}, Lcom/faceunity/pta_art/core/base/BaseCore;->resetAllTopFold(Z)V

    goto :goto_0

    .line 1091
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {p0, p1}, Lcom/faceunity/pta_art/core/base/BaseCore;->resetAllTop(Z)V

    :goto_0
    return-void
.end method

.method public runOnFuItemThread(Lcom/transsion/camera/feature/arcore/manager/ModuleManager$RunCallback;Z)V
    .locals 0

    .line 625
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {p0, p1, p2}, Lcom/faceunity/pta_art/core/base/BaseCore;->runOnFuItemThread(Lcom/transsion/camera/feature/arcore/manager/ModuleManager$RunCallback;Z)V

    return-void
.end method

.method public setBackgound(Ljava/lang/String;)Z
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrBgPath:Ljava/lang/String;

    .line 226
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    if-eqz p0, :cond_0

    .line 227
    invoke-virtual {p0, p1}, Lcom/faceunity/pta_art/core/base/BaseCore;->setBackground(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setInitFaceEditModule(II)V
    .locals 0

    .line 333
    iput p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mInitModuleId:I

    .line 334
    iput p2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mInitGender:I

    return-void
.end method

.method public setItemParamToController(Ljava/lang/String;D)V
    .locals 0

    .line 615
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {p0, p1, p2, p3}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemSetParam(Ljava/lang/String;D)V

    return-void
.end method

.method public setItemParamToController(Ljava/lang/String;[D)V
    .locals 0

    .line 610
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {p0, p1, p2}, Lcom/faceunity/pta_art/core/base/BaseCore;->itemSetParam(Ljava/lang/String;[D)V

    return-void
.end method

.method public setShowGuideStatus(Z)V
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mIsShowGuide:Z

    return-void
.end method

.method public snapShot(Landroid/content/Context;Lcom/faceunity/pta_art/entity/AvatarPTA;Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$OnSaveThumbnailListener;)V
    .locals 9

    .line 781
    invoke-virtual {p2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBundleDir()Ljava/lang/String;

    move-result-object v2

    .line 782
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFragmentInterface:Lcom/transsion/camera/feature/arcore/common/fragments/FragmentInterface;

    invoke-interface {v0}, Lcom/transsion/camera/feature/arcore/common/fragments/RotatableFragmentInterface;->isExpandUI()Z

    move-result v3

    .line 783
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;

    if-eqz v0, :cond_0

    .line 784
    iget-object v7, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;

    new-instance v8, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$11;

    move-object v0, v8

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$11;-><init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;Ljava/lang/String;ZLandroid/content/Context;Lcom/faceunity/pta_art/entity/AvatarPTA;Lcom/transsion/camera/feature/arcore/common/fragments/EditFaceFragment$OnSaveThumbnailListener;)V

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    .line 838
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->getResponseHandler()Landroid/os/Handler;

    move-result-object p0

    .line 784
    invoke-virtual {v7, v8, p0}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->takePicture(Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;Landroid/os/Handler;)Z

    :cond_0
    return-void
.end method

.method public startVideoRecorder(Ljava/lang/String;)V
    .locals 3

    .line 989
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->ensureInitFileSpec()V

    .line 990
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->createTempVideoFile(Lcom/transsion/camera/app/common/mode/VideoFileSpec;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 994
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "meicam createBuildinAudioFx begin ++++++"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 995
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {v1}, Lcom/faceunity/pta_art/core/base/BaseCore;->isValidCurrAvatar()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, ""

    .line 998
    :cond_1
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrAudioEffect:Ljava/lang/String;

    .line 999
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mRenderCore:Lcom/meicam/sdk/NvsAudioEffectRenderCore;

    invoke-virtual {v1, p1}, Lcom/meicam/sdk/NvsAudioEffectRenderCore;->createBuildinAudioFx(Ljava/lang/String;)Lcom/meicam/sdk/NvsCaptureAudioFx;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mAudioFx:Lcom/meicam/sdk/NvsCaptureAudioFx;

    .line 1000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "meicam createBuildinAudioFx,mAudioFx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mAudioFx:Lcom/meicam/sdk/NvsCaptureAudioFx;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",audioEffect = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", end ------"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1001
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFragmentActivity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->pauseAudioPlayBack(Landroid/content/Context;)Z

    .line 1002
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v0, 0x32

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 1003
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->startRecording(Lcom/transsion/camera/app/common/mode/VideoFileSpec;)V

    .line 1004
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mStartRecordTime:J

    return-void
.end method

.method public stopVideoRecorder(Lcom/transsion/camera/feature/arcore/common/capture/CaptureCallback;)V
    .locals 2

    .line 1053
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;

    new-instance v0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$15;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$15;-><init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;)V

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->stopRecording(Ljava/lang/Runnable;)V

    .line 1059
    sget-object p1, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "meicam destoryBuildinAudioFx,mAudioFx = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mAudioFx:Lcom/meicam/sdk/NvsCaptureAudioFx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",begin +++++++"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1060
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mRenderCore:Lcom/meicam/sdk/NvsAudioEffectRenderCore;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mAudioFx:Lcom/meicam/sdk/NvsCaptureAudioFx;

    invoke-virtual {v0, p0}, Lcom/meicam/sdk/NvsAudioEffectRenderCore;->destoryBuildinAudioFx(Lcom/meicam/sdk/NvsCaptureAudioFx;)V

    const-string p0, "meicam destoryBuildinAudioFx end ++++++"

    .line 1061
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public switchSoundEffect(I)V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$3;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$3;-><init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public takePicture(Lcom/transsion/camera/feature/arcore/common/capture/CaptureCallback;)V
    .locals 9

    .line 914
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;

    if-eqz v0, :cond_2

    .line 915
    invoke-static {}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->getInstance()Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/smartmodeorder/SmartModeOrderUtils;->updateModeUsedCount()V

    .line 916
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->getCurrentAvatarPTA()Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object v0

    .line 917
    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->getCurrentModuleId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 918
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->getCameraId()Ljava/lang/String;

    move-result-object v4

    .line 919
    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->getCameraSurfaceSize()Ljava/lang/String;

    move-result-object v8

    const-string v1, ""

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 920
    invoke-virtual {v0, v2}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getExpressionFile(Z)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 921
    invoke-virtual {v0}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getBundleDir()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, v1

    .line 922
    :goto_1
    new-instance v0, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;

    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrBgPath:Ljava/lang/String;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->ar3xCapture(Lcom/transsion/camera/utils/analytics/AnalyticsUtils$AR3XCaptureInfo;)V

    .line 924
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentRenderer:Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;

    new-instance v1, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$13;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$13;-><init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;Lcom/transsion/camera/feature/arcore/common/capture/CaptureCallback;)V

    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCameraOperator:Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;

    .line 966
    invoke-virtual {p1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraOperator;->getResponseHandler()Landroid/os/Handler;

    move-result-object p1

    .line 924
    invoke-virtual {v0, v1, p1}, Lcom/transsion/camera/feature/arcore/common/rendering/BaseRenderer;->takePicture(Lcom/transsion/camera/feature/arcore/common/capture/PixelReadFinishedListener;Landroid/os/Handler;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 968
    iget-boolean p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mShutterSoundEnabled:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mShutterClickSampleId:I

    if-lez p1, :cond_2

    const/4 p1, 0x0

    const-string v0, "camera_click.ogg"

    .line 969
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->doShutterSoundPlay(Ljava/lang/String;Lcom/transsion/camera/utils/sound/IActionSound$IPlayCallback;)V

    :cond_2
    return-void
.end method

.method public updateAvatarPTA(IZ)V
    .locals 6

    .line 537
    sget-boolean v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sIsSupportFFAvatar:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 539
    invoke-static {}, Lcom/faceunity/pta_art/constant/ResourceJson;->getFFAvatar()[Lcom/faceunity/pta_art/entity/AvatarPTA;

    move-result-object v0

    const/4 v1, 0x1

    .line 540
    sput-boolean v1, Lcom/faceunity/pta_art/constant/ResourceJson;->sIsARCoreAddFFAvatar:Z

    const/4 v2, 0x0

    .line 541
    aget-object v3, v0, v2

    .line 542
    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mAvatarP2As:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    if-nez v4, :cond_1

    if-eq v5, p1, :cond_0

    if-ne v1, p1, :cond_1

    .line 543
    :cond_0
    :goto_0
    sget p1, Lcom/faceunity/pta_art/constant/ResourceJson;->sARCoreFFAvatarNum:I

    if-ge v2, p1, :cond_4

    .line 544
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mAvatarP2As:Ljava/util/List;

    add-int/lit8 p2, v2, 0x2

    aget-object v1, v0, v2

    invoke-interface {p1, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mAvatarP2As:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    if-ne v0, p1, :cond_4

    move p1, v2

    .line 547
    :goto_1
    sget v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sARCoreFFAvatarNum:I

    if-ge p1, v0, :cond_2

    .line 548
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mAvatarP2As:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 550
    :cond_2
    sput-boolean v2, Lcom/faceunity/pta_art/constant/ResourceJson;->sIsARCoreAddFFAvatar:Z

    .line 551
    iget p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mShowIndex:I

    sget v0, Lcom/faceunity/pta_art/constant/ResourceJson;->sARCoreFFAvatarNum:I

    if-le p1, v0, :cond_3

    if-eqz p2, :cond_3

    sub-int/2addr p1, v0

    .line 552
    iput p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mShowIndex:I

    .line 554
    :cond_3
    iget p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mShowIndex:I

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->updateAvatarPTAIndex(I)V

    :cond_4
    return-void
.end method

.method public updateAvatarPTA(Lcom/faceunity/pta_art/entity/AvatarPTA;Ljava/lang/Runnable;)V
    .locals 4

    .line 566
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mAvatarP2As:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 571
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->avatarAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    .line 574
    invoke-virtual {p1}, Lcom/faceunity/pta_art/entity/AvatarPTA;->getIdCompat()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mAvatarP2As:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$$ExternalSyntheticLambda2;-><init>(Lcom/faceunity/pta_art/entity/AvatarPTA;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 575
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mAvatarP2As:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    :cond_2
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->indexOf(Lcom/faceunity/pta_art/entity/AvatarPTA;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->updateAvatarByIndex(I)V

    const/4 v0, 0x0

    .line 578
    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->updateAvatarPTA(Lcom/faceunity/pta_art/entity/AvatarPTA;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public updateAvatarPTA(Lcom/faceunity/pta_art/entity/AvatarPTA;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 595
    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->updateAvatarPTA(Lcom/faceunity/pta_art/entity/AvatarPTA;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public updateAvatarPTA(Lcom/faceunity/pta_art/entity/AvatarPTA;ZLjava/lang/Runnable;)V
    .locals 2

    .line 600
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;

    iget v1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mCurrentModuleId:I

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;-><init>(Lcom/faceunity/pta_art/entity/AvatarPTA;ZILjava/lang/Runnable;)V

    .line 601
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mBaseCore:Lcom/faceunity/pta_art/core/base/BaseCore;

    invoke-virtual {p0, v0}, Lcom/faceunity/pta_art/core/base/BaseCore;->setAvatar(Lcom/transsion/camera/feature/arcore/common/core/AvatarCachedInfo;)V

    return-void
.end method

.method public updateAvatarPTA(Ljava/lang/Runnable;)V
    .locals 2

    .line 561
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mShowAvatarP2A:Lcom/faceunity/pta_art/entity/AvatarPTA;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->updateAvatarPTA(Lcom/faceunity/pta_art/entity/AvatarPTA;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public updateAvatarPTAIndex(I)V
    .locals 0

    .line 302
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->updateAvatarByIndex(I)V

    return-void
.end method

.method public updateLastUri(Landroid/net/Uri;)V
    .locals 0

    .line 678
    sput-object p1, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mLastUri:Landroid/net/Uri;

    return-void
.end method

.method public updatePreviewCoverImage(ZLandroid/graphics/Bitmap;)V
    .locals 2

    .line 397
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->updateImageImpl(ZLandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/feature/arcore/manager/ModuleManager$7;-><init>(Lcom/transsion/camera/feature/arcore/manager/ModuleManager;ZLandroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .locals 2

    .line 531
    sget-object p2, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateStorageOperator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 532
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/manager/ModuleManager;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-void
.end method
