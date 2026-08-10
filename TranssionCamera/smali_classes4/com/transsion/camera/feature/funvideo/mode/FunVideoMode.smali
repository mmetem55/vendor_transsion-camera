.class public Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;
.super Lcom/transsion/camera/app/common/mode/CommonPhotoMode;
.source "FunVideoMode.java"

# interfaces
.implements Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;
.implements Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$VideoRecordingCallback;
.implements Lcom/transsion/camera/feature/funvideo/mode/VskitCall$ResultCallback;
.implements Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;
.implements Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$FunARChangeListener;
.implements Lcom/vskit/arsdk/portal/ARCallback;
.implements Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$RecorderHandle;,
        Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;,
        Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/CommonPhotoMode<",
        "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;",
        "Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;",
        "Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$VideoRecordingCallback;",
        "Lcom/transsion/camera/feature/funvideo/mode/VskitCall$ResultCallback;",
        "Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;",
        "Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$FunARChangeListener;",
        "Lcom/vskit/arsdk/portal/ARCallback;",
        "Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;"
    }
.end annotation


# static fields
.field private static final EGL_RES_TAG_CAMERA_CHANGE:I = 0x67

.field private static final EGL_RES_TAG_INIT_VSKIT:I = 0x68

.field private static final EGL_RES_TAG_ORIENTATION_CHANGE:I = 0x69

.field private static final EGL_RES_TAG_STICKER_INIT:I = 0x66

.field private static final EGL_RES_TAG_STICKER_LOAD:I = 0x65

.field private static final EGL_RES_TAG_VIDEO_START:I = 0x64

.field private static final MAX_RECORD_TIME:J = 0x3a98L

.field private static final MIME_MP4:Ljava/lang/String; = "video/mp4"

.field private static final MIN_RECORDING_TIME:I = 0xbb8

.field private static final MP4_SUFFIX:Ljava/lang/String; = ".mp4"

.field private static final MSG_FUNAR_FIRST_FRAME:I = 0x4

.field private static final MSG_FUNAR_INIT:I = 0x2

.field private static final MSG_FUNAR_LOAD:I = 0x0

.field private static final MSG_FUNAR_LOAD_AR_RES:I = 0x5

.field private static final MSG_FUNAR_SURFACE_LOAD:I = 0x1

.field private static final MSG_FUNAR_UNINIT:I = 0x3

.field private static final MSG_RECORDER_FINISH:I = 0xcb

.field private static final MSG_RECORDER_LEAVE:I = 0xca

.field private static final MSG_RECORDER_START_STOP:I = 0xc9

.field private static final NOTIFICATION_ID:Ljava/lang/String; = "notification_id"

.field private static final RECORDING_DURATION_BUFFER:I = 0xc8

.field private static final VIDEO_NAME_FORMAT:Ljava/lang/String; = "\'VID\'_yyyyMMdd_HHmmss"


# instance fields
.field private mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

.field mARManager:Lcom/vskit/arsdk/portal/ARIManager;

.field private mBottomOffset:I

.field private mCameraNV21Byte:[B

.field private mCommonVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

.field mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

.field private mDuration:J

.field private mError:I

.field private mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

.field private mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

.field private mFirstFrameReally:Z

.field private mFunARCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/faceunity/entity/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

.field private final mHintInfoAuto:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mIsEnterMoreMode:Z

.field private mIsFunARBarInit:Z

.field private mIsInited:Z

.field private mIsModeInit:Z

.field private mIsShowFilterUI:Z

.field private mIsStorageUnmounted:Z

.field private mItem:Lcom/faceunity/entity/Effect;

.field private final mMediaEncoderListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

.field private mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

.field private mMediaSpeedType:I

.field private final mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

.field private mMusicPlayer:Landroid/media/MediaPlayer;

.field private mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

.field private mNeedHideAR:Z

.field private mPauseMode:Z

.field private mPlayerPrepared:Z

.field private mPreviewHeight:I

.field private mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private mPreviewWidth:I

.field private volatile mRecordState:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

.field private mRecorderHandle:Landroid/os/Handler;

.field private volatile mRecordingFlag:Z

.field private mResultCode:I

.field private volatile mSavingVideoFlag:Z

.field private mSensorOrientation:I

.field private mStartRecordTime:J

.field private mTopOffset:I

.field private mUseFaceBeauty:Z

.field private mVideoDuration:I

.field private mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

.field private mVideoNameFormat:Ljava/text/SimpleDateFormat;

.field private mVskitCall:Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

.field mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

.field private mYuvHeight:I

.field private mYuvWight:I


# direct methods
.method public static synthetic $r8$lambda$mOFrEIypKNzxuM2wEYmZjULJ2fQ(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->lambda$new$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$rpRNxhSsq7n6xrwErLjtpRRMlyU(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->lambda$onSettingChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$wGIKkS6DA54_e_S8wroL4eKZbaQ(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->lambda$loadMusic$2(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 252
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 160
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsShowFilterUI:Z

    .line 161
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsEnterMoreMode:Z

    .line 169
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;->STATE_INIT:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordState:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    .line 172
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewWidth:I

    .line 173
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewHeight:I

    const-string v0, "15"

    .line 174
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVideoDuration:I

    .line 175
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMediaSpeedType:I

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    .line 177
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    .line 178
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSavingVideoFlag:Z

    .line 179
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mTopOffset:I

    .line 180
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mBottomOffset:I

    .line 184
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPauseMode:Z

    .line 192
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsStorageUnmounted:Z

    const-wide/16 v0, 0x0

    .line 193
    iput-wide v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mStartRecordTime:J

    .line 194
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mError:I

    .line 195
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mResultCode:I

    .line 198
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsModeInit:Z

    .line 201
    new-instance v2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(I)V

    iput-object v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mHintInfoAuto:Lcom/transsion/camera/app/common/ui/HintInfo;

    .line 204
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsInited:Z

    .line 205
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsFunARBarInit:Z

    .line 206
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mNeedHideAR:Z

    .line 207
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPlayerPrepared:Z

    .line 208
    invoke-static {}, Lcom/vskit/arsdk/portal/LSARCreator;->getARInstance()Lcom/vskit/arsdk/portal/ARIManager;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    const/4 v2, -0x1

    .line 210
    iput v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mYuvWight:I

    .line 211
    iput v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mYuvHeight:I

    .line 212
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFirstFrameReally:Z

    .line 214
    iput-boolean v3, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mUseFaceBeauty:Z

    .line 216
    iput-wide v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mDuration:J

    .line 217
    new-instance p1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$1;-><init>(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    .line 308
    new-instance p1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    .line 805
    new-instance p1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$2;-><init>(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    .line 855
    new-instance p1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$3;-><init>(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMediaEncoderListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Z
    .locals 0

    .line 125
    iget-boolean p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsModeInit:Z

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)J
    .locals 2

    .line 125
    iget-wide v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Z)Z
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSavingVideoFlag:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Z
    .locals 0

    .line 125
    iget-boolean p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPauseMode:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)I
    .locals 0

    .line 125
    iget p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mResultCode:I

    return p0
.end method

.method static synthetic access$1702(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;I)I
    .locals 0

    .line 125
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mResultCode:I

    return p1
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/content/Context;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/content/Context;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)I
    .locals 0

    .line 125
    iget p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mYuvWight:I

    return p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/content/Context;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;I)I
    .locals 0

    .line 125
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mYuvWight:I

    return p1
.end method

.method static synthetic access$2102(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)J
    .locals 2

    .line 125
    iget-wide v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mStartRecordTime:J

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;J)J
    .locals 0

    .line 125
    iput-wide p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mStartRecordTime:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/os/Handler;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)I
    .locals 0

    .line 125
    iget p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mError:I

    return p0
.end method

.method static synthetic access$2802(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;I)I
    .locals 0

    .line 125
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mError:I

    return p1
.end method

.method static synthetic access$2900(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)I
    .locals 0

    .line 125
    iget p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mYuvHeight:I

    return p0
.end method

.method static synthetic access$3000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$302(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;I)I
    .locals 0

    .line 125
    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mYuvHeight:I

    return p1
.end method

.method static synthetic access$3102(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;)Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/content/Context;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/mode/CommonVideoHelper;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mCommonVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)I
    .locals 0

    .line 125
    iget p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMediaSpeedType:I

    return p0
.end method

.method static synthetic access$3600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;I)I
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->getMinRecordingTime(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Z
    .locals 0

    .line 125
    iget-boolean p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsStorageUnmounted:Z

    return p0
.end method

.method static synthetic access$3702(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Z)Z
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsStorageUnmounted:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Z
    .locals 0

    .line 125
    iget-boolean p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    return p0
.end method

.method static synthetic access$3802(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Z)Z
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/mode/CameraDeviceControl;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    return-object p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;[B)[B
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mCameraNV21Byte:[B

    return-object p1
.end method

.method static synthetic access$4100(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$4300(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/content/Context;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Ljava/lang/String;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->showInfoAuto(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/feature/funvideo/mode/VskitCall;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVskitCall:Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

    return-object p0
.end method

.method static synthetic access$4802(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Lcom/transsion/camera/feature/funvideo/mode/VskitCall;)Lcom/transsion/camera/feature/funvideo/mode/VskitCall;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVskitCall:Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/content/Context;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/faceunity/entity/Effect;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mItem:Lcom/faceunity/entity/Effect;

    return-object p0
.end method

.method static synthetic access$5002(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Lcom/faceunity/entity/Effect;)Lcom/faceunity/entity/Effect;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mItem:Lcom/faceunity/entity/Effect;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Ljava/lang/String;FLjava/lang/String;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->goToReviewActivity(Ljava/lang/String;FLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Landroid/content/Context;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IAppUI;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Ljava/lang/String;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->saveVideo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunARCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->hideInfoAuto()V

    return-void
.end method

.method static synthetic access$5800(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Z
    .locals 0

    .line 125
    iget-boolean p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsInited:Z

    return p0
.end method

.method static synthetic access$5900(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$6300(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$6400(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->initSticker()V

    return-void
.end method

.method static synthetic access$6502(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Z)Z
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFirstFrameReally:Z

    return p1
.end method

.method static synthetic access$6600(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Z
    .locals 0

    .line 125
    iget-boolean p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsFunARBarInit:Z

    return p0
.end method

.method static synthetic access$6702(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Z)Z
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsFunARBarInit:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$6902(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;)Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordState:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    return-object p1
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$7100(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$7200(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->processStartAndStopRecorder()V

    return-void
.end method

.method static synthetic access$7300(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->processLeaveRecorder()V

    return-void
.end method

.method static synthetic access$7400(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->processFinishRecorder()V

    return-void
.end method

.method static synthetic access$7500(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    return-object p0
.end method

.method private checkResult(II)Z
    .locals 8

    const/16 v0, 0x64

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    .line 1405
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1406
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->checkShutterPanel()V

    :cond_0
    const/16 p1, 0x2e

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq p2, v5, :cond_3

    if-eq p2, v4, :cond_3

    const/4 v6, 0x4

    if-ne p2, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 1425
    iput v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mError:I

    .line 1426
    iget-boolean p2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz p2, :cond_2

    .line 1427
    invoke-virtual {p2, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->enableVideoAutoFlash(Z)V

    .line 1429
    :cond_2
    iput-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    .line 1430
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {p2}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->deleteTempVideoFile()V

    .line 1431
    iput-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsStorageUnmounted:Z

    .line 1432
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2, v5, v3, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 1433
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 1434
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v1, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->funRecordEvent(ZI)V

    goto :goto_1

    .line 1409
    :cond_3
    :goto_0
    iget-object v6, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object v6

    .line 1410
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1411
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1412
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "checkResult,file does not exist."

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1413
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p2, v5, v3, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 1414
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return v1

    .line 1418
    :cond_4
    iput p2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mResultCode:I

    .line 1419
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/transsion/camera/feature/funvideo/R$string;->saving_dialog_string:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v4, v0, p2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 1420
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVskitCall:Lcom/transsion/camera/feature/funvideo/mode/VskitCall;

    invoke-virtual {p1, v6, p0}, Lcom/transsion/camera/feature/funvideo/mode/VskitCall;->start(Ljava/lang/String;Lcom/transsion/camera/feature/funvideo/mode/VskitCall$ResultCallback;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1421
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->saveVideo(Ljava/lang/String;)V

    :cond_5
    return v5

    :cond_6
    :goto_1
    return v1
.end method

.method private createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 999
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "createNotificationChannel"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1000
    new-instance p0, Landroid/app/NotificationChannel;

    invoke-direct {p0, p2, p3, p4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p2, 0x0

    .line 1001
    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 1002
    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 1003
    invoke-virtual {p0, p2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 1004
    invoke-virtual {p1, p0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private doActionWithStorageUnmounted()V
    .locals 3

    .line 762
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Storage UNMOUNTED doActionWithStorageUnmounted, mRecordingFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 763
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 767
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsStorageUnmounted:Z

    .line 769
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 770
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 772
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private getFlashValue()Ljava/lang/String;
    .locals 2

    .line 406
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_flash_facade"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 410
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_flash"

    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMinRecordingTime(I)I
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const/16 p0, 0x1770

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    const/16 p0, 0x2328

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    if-ne p1, p0, :cond_2

    const/16 p0, 0x5dc

    goto :goto_0

    :cond_2
    const/4 p0, 0x4

    if-ne p1, p0, :cond_3

    const/16 p0, 0x3e8

    goto :goto_0

    :cond_3
    const/16 p0, 0xbb8

    :goto_0
    add-int/lit16 p0, p0, 0xc8

    return p0
.end method

.method private getMusicPlaySpeed(I)F
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 p0, 0x40400000    # 3.0f

    return p0

    :cond_1
    const/high16 p0, 0x40000000    # 2.0f

    return p0

    :cond_2
    const p0, 0x3eaaa64c    # 0.3333f

    return p0

    :cond_3
    const/high16 p0, 0x3f000000    # 0.5f

    return p0
.end method

.method private getSpeedType(Ljava/lang/String;)I
    .locals 5

    .line 1021
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "speed_setting_entries_slow_2x"

    const-string v4, "string"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1022
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v3, "speed_setting_entries_fast_2x"

    invoke-virtual {v2, v3, v4, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1027
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    .line 1029
    :cond_0
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private goToReviewActivity(Ljava/lang/String;FLjava/lang/String;)V
    .locals 5

    .line 740
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    if-nez v0, :cond_0

    return-void

    .line 743
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    const-string v2, "com.transsion.camera.app.ReviewCameraActivity"

    invoke-static {v2}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "review_fragment"

    const-string v2, "fun_video"

    .line 744
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 745
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 746
    iget v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewWidth:I

    const-string v3, "key_preview_width"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 747
    iget v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewHeight:I

    const-string v3, "key_preview_height"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 748
    iget v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mTopOffset:I

    const-string v3, "key_preview_top_offset"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 749
    iget v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mBottomOffset:I

    const-string v3, "key_preview_bottom_offset"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 750
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getNavigationBarHeight()I

    move-result v2

    .line 751
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v3}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getCutoutHeight()I

    move-result v3

    const-string v4, "key_preview_cutout_height"

    .line 752
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "key_preview_navigationbar_height"

    .line 753
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "key_speed"

    .line 754
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string p2, "key_video_path"

    .line 755
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_music_path"

    .line 756
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 758
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mGotoActivityListener:Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;

    const/16 p1, 0x64

    invoke-interface {p0, v0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IGotoActivityListener;->onGotoActivity(Landroid/content/Intent;I)V

    return-void
.end method

.method private hideInfoAuto()V
    .locals 1

    .line 1111
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mHintInfoAuto:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    return-void
.end method

.method private declared-synchronized initFunVideoModeUI(Landroid/view/LayoutInflater;I)V
    .locals 3

    monitor-enter p0

    .line 726
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initFunVideoModeUI start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mTopOffset:I

    .line 728
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mBottomOffset:I

    .line 730
    new-instance v0, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    invoke-direct {v0, p1, v1, v2}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;-><init>(Landroid/view/LayoutInflater;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/storage/DataStore;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    .line 731
    invoke-virtual {v0, p2}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->initFunVideoUI(I)V

    .line 732
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->setLayoutParam(Z)V

    .line 733
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->setVideoRecordingCallback(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$VideoRecordingCallback;)V

    .line 734
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {p1, p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->setOnArChangeListener(Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI$FunARChangeListener;)V

    .line 735
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getRingScreenLightState()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->updateLowLight(Z)V

    .line 736
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "initFunVideoModeUI end"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private initSticker()V
    .locals 5

    .line 1115
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init sticker GL resources start mIsInited: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1117
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunARCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 1118
    invoke-static {}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;->getInstance()Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;->getmFunVideoARCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunARCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/featurelibs/ar/ARControl;->initResource(Landroid/content/Context;)V

    .line 1121
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSticker(): wait start fuIsSetup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/featurelibs/ar/ARControl;->fuIsSetup()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 1127
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/transsion/camera/featurelibs/ar/ARControl;->fuIsSetup()I

    move-result v2

    if-gtz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x64

    if-ge v1, v3, :cond_1

    const-wide/16 v3, 0x64

    .line 1130
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    .line 1133
    :catch_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "ARControl.fuIsSetup() > 0 waiting"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1135
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSticker(): wait end fuIsSetup = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/featurelibs/ar/ARControl;->fuIsSetup()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1136
    invoke-static {}, Lcom/transsion/camera/featurelibs/ar/ARControl;->fuIsSetup()I

    move-result v1

    if-lez v1, :cond_2

    .line 1137
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    const/16 v2, 0x68

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResource(ZI)V

    .line 1139
    :cond_2
    iget-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsInited:Z

    if-eqz v1, :cond_3

    .line 1142
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    const/16 v2, 0x67

    invoke-interface {v1, v0, v2}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResource(ZI)V

    .line 1145
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1146
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1147
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "init sticker GL resources end."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$loadMusic$2(Landroid/media/MediaPlayer;)V
    .locals 6

    const/4 v0, 0x1

    .line 1087
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPlayerPrepared:Z

    .line 1088
    monitor-enter p0

    .line 1089
    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPauseMode:Z

    if-eqz v0, :cond_0

    .line 1090
    monitor-exit p0

    return-void

    .line 1092
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 1093
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMediaSpeedType:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->getMusicPlaySpeed(I)F

    move-result v0

    .line 1094
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v1

    float-to-double v2, v0

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    sub-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 1095
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private synthetic lambda$new$0(Z)V
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    if-eqz p0, :cond_0

    .line 310
    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->updateLowLight(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSettingChanged$1()V
    .locals 0

    .line 631
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->resetToDefault()V

    return-void
.end method

.method private declared-synchronized loadMusic(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_3

    :try_start_0
    const-string v0, ""

    .line 1065
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1074
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPauseMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1075
    monitor-exit p0

    return-void

    .line 1077
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadMusic, assetPath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1079
    :try_start_2
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPlayerPrepared:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1080
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 1082
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 1083
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 1084
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1085
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 1086
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1098
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1100
    :goto_0
    monitor-exit p0

    return-void

    .line 1066
    :cond_3
    :goto_1
    :try_start_4
    iget-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPlayerPrepared:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1067
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "loadMusic, resetMusic"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1068
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1069
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 1070
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1072
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private processFinishRecorder()V
    .locals 1

    const/4 v0, 0x0

    .line 1511
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    .line 1512
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;->STATE_INIT:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordState:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    return-void
.end method

.method private processLeaveRecorder()V
    .locals 3

    .line 1497
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processLeaveRecorder mRecordState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordState:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1498
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$4;->$SwitchMap$com$transsion$camera$feature$funvideo$mode$FunVideoMode$FunVideoRecordState:[I

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordState:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1504
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processStartAndStopRecorder in unSupported mRecordState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordState:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1500
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->stopRecording()V

    :goto_0
    return-void
.end method

.method private processStartAndStopRecorder()V
    .locals 3

    .line 1479
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processStartAndStopRecorder mRecordState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordState:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1480
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$4;->$SwitchMap$com$transsion$camera$feature$funvideo$mode$FunVideoMode$FunVideoRecordState:[I

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordState:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1490
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processStartAndStopRecorder in unSupported mRecordState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordState:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1486
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->stopRecording()V

    goto :goto_0

    .line 1482
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->startRecording()V

    :goto_0
    return-void
.end method

.method private refreshShutterUI()V
    .locals 2

    .line 954
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->getShutterTypeSelftimerOn()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOn(I)V

    .line 955
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->getShutterTypeSelftimerOff()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->setShutterTypeSelftimerOff(I)V

    .line 956
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->getShutterTypeSelftimerOff()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->updateShutterType(I)V

    return-void
.end method

.method private saveVideo(Ljava/lang/String;)V
    .locals 8

    .line 776
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 777
    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVideoNameFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 778
    iget-object v3, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v3, v2}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->createFileData(Ljava/lang/String;)V

    .line 779
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 780
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 781
    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {v5}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getLocationManager()Lcom/transsion/camera/app/common/location/LocationManager;

    move-result-object v5

    const-string v6, "key_location"

    invoke-virtual {v5, v6}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    .line 782
    iget-object v6, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTitle()Ljava/lang/String;

    move-result-object v6

    const-string v7, "title"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v6, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v6}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "_display_name"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "datetaken"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v6, 0x3e8

    .line 785
    div-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "date_modified"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 786
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mime_type"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFilePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :try_start_0
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->getDuration(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mDuration:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 791
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 793
    :goto_0
    iget-wide v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mDuration:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resolution"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "_size"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v5, :cond_0

    .line 797
    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 798
    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "longitude"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_0
    const/4 v0, 0x1

    .line 800
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSavingVideoFlag:Z

    .line 801
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMediaSaverListener:Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;

    invoke-interface {v0, v4, p1, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->addVideoSaveRequest(Landroid/content/ContentValues;Ljava/lang/String;Lcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    .line 802
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveVideo Duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private showInfoAuto(Ljava/lang/String;)V
    .locals 1

    .line 1103
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsModeInit:Z

    if-eqz v0, :cond_0

    .line 1104
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->hideInfoAuto()V

    .line 1105
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mHintInfoAuto:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1106
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mHintInfoAuto:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method private startRecording()V
    .locals 9

    .line 1516
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecording start, mRecordingFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", fuIsSetup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/featurelibs/ar/ARControl;->fuIsSetup()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsInited = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsModeInit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsModeInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mFirstFrameReally = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFirstFrameReally:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1517
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->hideInfoAuto()V

    .line 1518
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mModeStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 1519
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 1521
    new-instance v0, Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v1

    const-string v3, ".mp4"

    const-string v4, "video/mp4"

    invoke-direct {v0, v1, v3, v4}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    .line 1522
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->createTempVideoFile(Lcom/transsion/camera/app/common/mode/VideoFileSpec;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1524
    iput-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    .line 1525
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;->STATE_INIT:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordState:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    return-void

    .line 1529
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "\'VID\'_yyyyMMdd_HHmmss"

    invoke-direct {v0, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVideoNameFormat:Ljava/text/SimpleDateFormat;

    .line 1530
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mCommonVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->pauseAudioPlayBack(Landroid/content/Context;)Z

    .line 1532
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_1

    .line 1533
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->enableVideoAutoFlash(Z)V

    .line 1537
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1538
    new-instance v0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    iget-object v3, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    goto :goto_0

    .line 1539
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1540
    new-instance v0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    iget-object v3, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    .line 1543
    :cond_3
    :goto_0
    new-instance v3, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    iget-object v4, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    iget-object v5, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMediaEncoderListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    iget v6, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewHeight:I

    iget v7, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewWidth:I

    const/16 v8, 0xde1

    invoke-direct/range {v3 .. v8}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;-><init>(Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;III)V

    .line 1545
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mItem:Lcom/faceunity/entity/Effect;

    if-eqz v0, :cond_4

    const-string v3, ""

    invoke-virtual {v0}, Lcom/faceunity/entity/Effect;->getMusicPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mItem:Lcom/faceunity/entity/Effect;

    invoke-virtual {v0}, Lcom/faceunity/entity/Effect;->getMusicPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1546
    :cond_4
    new-instance v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    iget-object v5, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMediaEncoderListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    invoke-direct {v0, v3, v4, v5}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;-><init>(Landroid/content/Context;Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;)V

    .line 1548
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sOrientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1549
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_6

    .line 1550
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->setOrientationHint(I)V

    goto :goto_1

    .line 1552
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->setOrientationHint(I)V

    .line 1554
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->prepare()V

    .line 1555
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->startRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1557
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1559
    :goto_2
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;->STATE_STARTED:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordState:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    .line 1560
    iput-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    .line 1562
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mStartRecordTime:J

    .line 1563
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    iget v3, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVideoDuration:I

    iget v4, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMediaSpeedType:I

    invoke-virtual {v0, v3, v4}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->onShowRecordingUI(II)V

    .line 1564
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    invoke-interface {v0, v2}, Lcom/vskit/arsdk/portal/ARIManager;->setReset(I)V

    .line 1565
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPlayerPrepared:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1566
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 1567
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 1568
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1570
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "startRecording end"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private stopRecording()V
    .locals 3

    .line 1574
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecording start, mRecordingFlag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", fuIsSetup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/transsion/camera/featurelibs/ar/ARControl;->fuIsSetup()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mIsInited = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsModeInit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsModeInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mFirstFrameReally = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFirstFrameReally:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1575
    sget-object v0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;->STATE_STOPING:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    iput-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordState:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$FunVideoRecordState;

    .line 1576
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    if-eqz v0, :cond_0

    .line 1577
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->stopRecording()V

    .line 1579
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1580
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->enableVideoAutoFlash(Z)V

    .line 1582
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "stopRecording end"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public buildCaptureInfo()Lcom/transsion/camera/app/common/mode/CaptureInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor<",
            "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
            ">;"
        }
    .end annotation

    .line 1015
    new-instance p0, Lcom/transsion/camera/app/common/mode/NullImageProcessor;

    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/NullImageProcessor;-><init>()V

    return-object p0
.end method

.method public bridge synthetic createImageProcessor()Lcom/transsion/camera/app/common/mode/IImageProcessor;
    .locals 0

    .line 125
    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->createImageProcessor()Lcom/transsion/camera/app/common/mode/CommonPhotoImageProcessor;

    move-result-object p0

    return-object p0
.end method

.method public getDataFlowType()I
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x4

    .line 651
    invoke-static {p0, v0}, Lcom/transsion/camera/adapter/DataFlowSpec;->makeDataFlowSpec(II)I

    move-result p0

    return p0
.end method

.method public getModeFeatures(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    .line 672
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 673
    iget-boolean p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mUseFaceBeauty:Z

    if-eqz p0, :cond_0

    const-string p0, "key_face_beauty"

    .line 674
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p0, "key_tran_plugin"

    .line 676
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "key_video_fun_definition"

    .line 677
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "key_video_interpolation"

    .line 678
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "key_video_fun_speed"

    .line 679
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "key_fingerprint_capture"

    .line 680
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 682
    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getModeRelation()Lcom/transsion/camera/app/common/relation/Relation;
    .locals 1

    .line 415
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->getFlashValue()Ljava/lang/String;

    move-result-object p0

    .line 416
    invoke-static {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->getPreviewRelation(Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object p0

    .line 417
    invoke-static {}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->getCamModeRelation()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/app/common/mode/CameraMode;->mergeRelation(Lcom/transsion/camera/app/common/relation/Relation;Lcom/transsion/camera/app/common/relation/Relation;)V

    return-object p0
.end method

.method public getOutputDataType()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getPreviewSize(Ljava/util/List;)Landroid/util/Size;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 666
    new-instance p0, Landroid/util/Size;

    const/16 p1, 0x500

    const/16 v0, 0x2d0

    invoke-direct {p0, p1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method protected getShutterTypeSelftimerOff()I
    .locals 1

    .line 710
    iget p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVideoDuration:I

    const-string v0, "15"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x6

    goto :goto_0

    :cond_0
    const/4 p0, 0x7

    :goto_0
    return p0
.end method

.method protected getShutterTypeSelftimerOn()I
    .locals 1

    .line 715
    iget p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVideoDuration:I

    const-string v0, "15"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x6

    goto :goto_0

    :cond_0
    const/4 p0, 0x7

    :goto_0
    return p0
.end method

.method public hideModeUI()V
    .locals 3

    .line 1310
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 1311
    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->hideArGrid(ZZ)V

    .line 1313
    :cond_0
    iput-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mNeedHideAR:Z

    return-void
.end method

.method public declared-synchronized init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V
    .locals 12

    move-object v1, p0

    move-object v0, p1

    move-object v4, p2

    move-object v9, p3

    monitor-enter p0

    .line 259
    :try_start_0
    invoke-super/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;I)V

    .line 260
    iget-object v2, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v2, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeUIControl(Lcom/transsion/camera/app/common/IAppUIControl$IModeUIControl;)V

    const/4 v10, 0x0

    .line 261
    invoke-static {v10}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->setsFunVideoMsgTag(I)V

    .line 262
    invoke-static {p1}, Lcom/transsion/camera/featurelibs/ar/ARControl;->initResource(Landroid/content/Context;)V

    .line 263
    invoke-interface {p2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mDataStore:Lcom/transsion/camera/app/common/storage/DataStore;

    .line 265
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "funvideo_record"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 267
    new-instance v3, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$RecorderHandle;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v5, 0x0

    invoke-direct {v3, p0, v2, v5}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$RecorderHandle;-><init>(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Landroid/os/Looper;Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$1;)V

    iput-object v3, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    .line 269
    iget-object v2, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    invoke-interface {v2, p1}, Lcom/vskit/arsdk/portal/ARIManager;->init(Landroid/content/Context;)V

    .line 270
    iget-object v2, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    invoke-interface {v2, p0}, Lcom/vskit/arsdk/portal/ARIManager;->setCallback(Lcom/vskit/arsdk/portal/ARCallback;)V

    .line 271
    invoke-interface {p3, p0}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 272
    new-instance v2, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    invoke-static {}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;->getInstance()Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;-><init>(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;Landroid/os/Looper;)V

    iput-object v2, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    .line 273
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    const-string v2, "key_video_fun_duration"

    .line 274
    invoke-interface {p2, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 276
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVideoDuration:I

    :cond_0
    const-string v2, "key_video_fun_speed"

    .line 278
    invoke-interface {p2, v2}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->getSpeedType(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMediaSpeedType:I

    .line 279
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v2

    iget-object v3, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 280
    invoke-interface {v2, v3}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v2

    invoke-interface {v2}, Lcom/transsion/camera/adapter/ICameraInfo;->getSensorOrientation()I

    move-result v2

    rsub-int v2, v2, 0x168

    iput v2, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSensorOrientation:I

    .line 281
    invoke-static {}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;->getInstance()Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoARThread;->getmFunVideoARCache()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunARCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 282
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 283
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->refreshShutterUI()V

    .line 285
    iget-object v2, v1, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->initFunVideoModeUI(Landroid/view/LayoutInflater;I)V

    .line 287
    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->getPreviewOperator()Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v2

    iput-object v2, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    const-string v2, "com.transsion.camera.feature.arcfilter.preview.FunVideoFilterPreview"

    const/4 v11, 0x1

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v0, v3, v10

    .line 288
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    iput-object v2, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    if-eqz v2, :cond_1

    .line 290
    invoke-interface {v2, p0}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->setPrevieDataCallback(Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;)V

    .line 291
    iget-object v2, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->init(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/IAppUI;Lcom/transsion/camera/app/common/mode/CameraDeviceControl;Ljava/lang/String;Lcom/transsion/camera/app/common/IApp$IIntentAction;)V

    .line 292
    iput-boolean v11, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsModeInit:Z

    :cond_1
    const-string v2, "key_video_fun_duration"

    .line 295
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string v2, "key_video_fun_speed"

    .line 296
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string v2, "key_filter"

    .line 297
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/common/mode/CameraMode;->registerKeyToMonitor(Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v2

    iget-object v3, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v2, v3}, Lcom/transsion/camera/app/common/ModuleTransferManager;->registerTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 300
    new-instance v2, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-direct {v2}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;-><init>()V

    iput-object v2, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mCommonVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    .line 301
    iput v10, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewWidth:I

    .line 302
    iput v10, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewHeight:I

    .line 303
    iput-boolean v10, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPauseMode:Z

    .line 304
    invoke-interface {p3, v11}, Lcom/transsion/camera/app/common/IAppUI;->setVolumeIntercept(Z)V

    const-string v2, "use_face_beauty"

    .line 305
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mUseFaceBeauty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadGLResourceCallback(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x68

    if-ne v2, p1, :cond_0

    .line 556
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "loadGLResourceCallback, EGL_RES_TAG_INIT_VSKIT end"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 557
    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    invoke-interface {v2, v1}, Lcom/vskit/arsdk/portal/ARIManager;->onSurfaceCreated(Z)V

    .line 558
    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    invoke-interface {v2, v1}, Lcom/vskit/arsdk/portal/ARIManager;->setInputTextureType(I)V

    .line 559
    iput-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsInited:Z

    .line 560
    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mItem:Lcom/faceunity/entity/Effect;

    if-eqz v2, :cond_0

    .line 561
    iget-object v3, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    invoke-virtual {v3, v0, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 562
    iget-object v3, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 563
    iget-object v3, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const/16 v2, 0x64

    if-ne v2, p1, :cond_1

    .line 567
    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    if-eqz v2, :cond_1

    .line 568
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->setEglContext(Landroid/opengl/EGLContext;)V

    :cond_1
    const/16 v2, 0x65

    if-ne v2, p1, :cond_2

    .line 573
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mItem:Lcom/faceunity/entity/Effect;

    if-eqz v0, :cond_4

    .line 574
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    invoke-virtual {v0}, Lcom/faceunity/entity/Effect;->getMaxFace()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/vskit/arsdk/portal/ARIManager;->setMaxFaces(I)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x67

    if-ne v2, p1, :cond_4

    .line 577
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v2}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 578
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    iget v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSensorOrientation:I

    rsub-int v2, v2, 0x168

    invoke-interface {v1, v0, v2}, Lcom/vskit/arsdk/portal/ARIManager;->onCameraChange(II)V

    .line 579
    iget v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSensorOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v1

    sub-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x5a

    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    goto :goto_0

    .line 581
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    iget v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSensorOrientation:I

    rsub-int v2, v2, 0x168

    invoke-interface {v0, v1, v2}, Lcom/vskit/arsdk/portal/ARIManager;->onCameraChange(II)V

    .line 582
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v0

    iget v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSensorOrientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x5a

    invoke-static {v0}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    :cond_4
    :goto_0
    const/16 v0, 0x69

    if-ne v0, p1, :cond_6

    .line 587
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 588
    iget p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSensorOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p0

    sub-int/2addr p1, p0

    rem-int/lit16 p1, p1, 0x168

    div-int/lit8 p1, p1, 0x5a

    invoke-static {p1}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    goto :goto_1

    .line 590
    :cond_5
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p1

    iget p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSensorOrientation:I

    add-int/2addr p1, p0

    rem-int/lit16 p1, p1, 0x168

    div-int/lit8 p1, p1, 0x5a

    invoke-static {p1}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public loadGLResourcesCallback([I)V
    .locals 0

    return-void
.end method

.method public modeInitCallback(Landroid/content/Context;)V
    .locals 1

    .line 515
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 516
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public modeUninitCallback()V
    .locals 3

    .line 521
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsInited:Z

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    invoke-static {}, Lcom/transsion/camera/featurelibs/ar/ARControl;->fuIsSetup()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Lcom/vskit/arsdk/portal/ARIManager;->onSurfaceDestroyed(Z)V

    .line 523
    iput-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsInited:Z

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunARCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 526
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    invoke-interface {v0}, Lcom/vskit/arsdk/portal/ARIManager;->onUninit()V

    .line 528
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 529
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->setPrevieDataCallback(Lcom/transsion/camera/app/common/mode/IFilterDataPreviewCallback;)V

    :cond_2
    const-string v0, ""

    .line 532
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->loadMusic(Ljava/lang/String;)V

    return-void
.end method

.method public needRebuildMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyCameraOperateAction(I)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    const/16 v2, 0xb

    if-eq p1, v2, :cond_4

    const/16 v2, 0xc

    if-eq p1, v2, :cond_3

    const/16 v2, 0x92

    if-eq p1, v2, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 1178
    :pswitch_0
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->getArShowFlag()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1179
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {p1, v1, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->hideArGrid(ZZ)V

    .line 1180
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p0, v0, v1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    goto/16 :goto_0

    .line 1161
    :pswitch_1
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    if-eqz p1, :cond_1

    .line 1162
    invoke-virtual {p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->showArIcon()V

    .line 1164
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->getArShowFlag()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1165
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {p1, v1, v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->hideArGrid(ZZ)V

    .line 1166
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v0, v1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 1168
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->setFilterUIState(Z)V

    .line 1170
    :cond_1
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsShowFilterUI:Z

    goto/16 :goto_0

    .line 1174
    :pswitch_2
    iput-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsShowFilterUI:Z

    .line 1175
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->setFilterUIState(Z)V

    goto :goto_0

    .line 1212
    :pswitch_3
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    if-eqz p0, :cond_8

    .line 1213
    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->showArIcon()V

    goto :goto_0

    .line 1204
    :pswitch_4
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    if-eqz p1, :cond_8

    .line 1205
    invoke-virtual {p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->hideArIcon()V

    .line 1206
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->getArShowFlag()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1207
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->hideArGrid(ZZ)V

    goto :goto_0

    .line 1217
    :cond_2
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsEnterMoreMode:Z

    .line 1218
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    if-eqz p0, :cond_8

    .line 1219
    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->hideArIcon()V

    goto :goto_0

    .line 1196
    :cond_3
    :pswitch_5
    iput-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsShowFilterUI:Z

    .line 1197
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    if-eqz p1, :cond_8

    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mNeedHideAR:Z

    if-eqz v0, :cond_8

    .line 1198
    iput-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mNeedHideAR:Z

    .line 1199
    invoke-virtual {p1, v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->setARRootVisibility(I)V

    .line 1200
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->checkShutterPanel()V

    goto :goto_0

    .line 1184
    :cond_4
    iget-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsShowFilterUI:Z

    if-eqz p1, :cond_5

    .line 1185
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v0, v1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ISettingOptionControl;->sinkUI(ZIZ)V

    .line 1188
    :cond_5
    :pswitch_6
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    if-eqz p1, :cond_8

    .line 1189
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mNeedHideAR:Z

    const/16 v0, 0x8

    .line 1190
    invoke-virtual {p1, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->setARRootVisibility(I)V

    .line 1191
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->getArIcon()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/AnimationUtils;->stopPressedAnimator(Landroid/view/View;)V

    goto :goto_0

    .line 1226
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->setCameraSwitching(Z)V

    goto :goto_0

    .line 1223
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->setCameraSwitching(Z)V

    :cond_8
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2d
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onARItemChange(Lcom/faceunity/entity/Effect;)V
    .locals 3

    .line 1233
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onARItemChange, effect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , mIsModeInit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsModeInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1234
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsModeInit:Z

    if-nez v0, :cond_0

    .line 1235
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onARItemChange, mode has not init, return!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 1238
    :cond_0
    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->getBundleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cancel"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1239
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-static {}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->getMusicTemplateRestriction()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 1240
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onARItemChange, post Cancel Restriction end"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1242
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->hideInfoAuto()V

    .line 1243
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1244
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1245
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    .line 1058
    iget-object p3, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p3}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1061
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->checkResult(II)Z

    move-result p0

    return p0
.end method

.method public onBackPressed()Z
    .locals 2

    .line 450
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onBackPressed stopFunVideoRecording"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 453
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p0, 0x1

    return p0

    .line 456
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->onSingleTapUp()Z

    move-result p0

    return p0
.end method

.method public onBundleItemEffect(I)V
    .locals 8

    .line 1284
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 1285
    invoke-interface {v0, v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraInfo;->getFacing()I

    move-result v0

    const-string v1, "isFlipExpr"

    const-string v2, "is3DFlipH"

    const-string v3, "isFlipTrack"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-nez v0, :cond_0

    .line 1286
    invoke-static {p1, v2, v4, v5}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1287
    invoke-static {p1, v3, v4, v5}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1288
    invoke-static {p1, v1, v4, v5}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    .line 1290
    invoke-static {p1, v3, v6, v7}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1291
    invoke-static {p1, v2, v6, v7}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1292
    invoke-static {p1, v1, v6, v7}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    :goto_0
    const-string v0, "{\"thing\":\"<global>\",\"param\":\"follow\"}"

    .line 1294
    invoke-static {p1, v0, v4, v5}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    const-string v0, "isAndroid"

    .line 1295
    invoke-static {p1, v0, v4, v5}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 1296
    iget p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSensorOrientation:I

    int-to-double v0, p0

    const-string p0, "rotationAngle"

    invoke-static {p1, p0, v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method

.method public onBundleLoadComplete(ILjava/lang/String;)V
    .locals 0

    .line 1261
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mItem:Lcom/faceunity/entity/Effect;

    if-eqz p1, :cond_2

    .line 1262
    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->getMusicPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->loadMusic(Ljava/lang/String;)V

    .line 1263
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mItem:Lcom/faceunity/entity/Effect;

    invoke-virtual {p1}, Lcom/faceunity/entity/Effect;->getDescription()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1265
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/CameraUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1267
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->showInfoAuto(Ljava/lang/String;)V

    goto :goto_0

    .line 1269
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->hideInfoAuto()V

    goto :goto_0

    .line 1272
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->hideInfoAuto()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onBundleLoadStart()V
    .locals 1

    const-string v0, ""

    .line 1279
    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->loadMusic(Ljava/lang/String;)V

    return-void
.end method

.method public onCameraStateChanged(I)V
    .locals 2

    .line 360
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onCameraStateChanged(I)V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 362
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraStateChanged, state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/SurfaceTexture;III)I
    .locals 8

    .line 470
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mCameraNV21Byte:[B

    const/4 v0, -0x1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/transsion/camera/featurelibs/ar/ARControl;->fuIsSetup()I

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsInited:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsModeInit:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFirstFrameReally:Z

    if-nez p1, :cond_0

    goto :goto_1

    .line 473
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPlayerPrepared:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 474
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v1, v2}, Lcom/vskit/arsdk/portal/ARIManager;->onMusicFilterTime(J)V

    .line 477
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p1}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingBack(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 478
    iget p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSensorOrientation:I

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result v1

    sub-int/2addr p1, v1

    rem-int/lit16 p1, p1, 0x168

    div-int/lit8 p1, p1, 0x5a

    invoke-static {p1}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    goto :goto_0

    .line 480
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->getOrientation()I

    move-result p1

    iget v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSensorOrientation:I

    add-int/2addr p1, v1

    rem-int/lit16 p1, p1, 0x168

    div-int/lit8 p1, p1, 0x5a

    invoke-static {p1}, Lcom/faceunity/wrapper/faceunity;->fuSetDefaultRotationMode(I)V

    .line 484
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    iget-object v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mCameraNV21Byte:[B

    iget v4, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mYuvWight:I

    iget v5, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mYuvHeight:I

    move v3, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/vskit/arsdk/portal/ARIManager;->onDrawFrameForOrientation([BIIIII)I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 486
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "FunVideo onDraw return -1."

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method public onFirstSteadyFrame()V
    .locals 2

    .line 1152
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CameraMode;->onFirstSteadyFrame()V

    .line 1153
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1154
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onFpsChange(DD)V
    .locals 0

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1

    .line 601
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->onOrientationChanged(I)V

    .line 602
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->onOrientationChanged(I)V

    .line 605
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    const/4 p1, 0x0

    const/16 v0, 0x69

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResource(ZI)V

    return-void
.end method

.method public onProgressEnd()V
    .locals 3

    .line 950
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p0, v0, v1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    return-void
.end method

.method public onRecording(I[F)V
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 494
    iget-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    if-eqz p1, :cond_0

    .line 495
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "onRecording texId is -1, stop it."

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 496
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->stopRecording()V

    :cond_0
    return-void

    .line 501
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    if-eqz v0, :cond_4

    .line 502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mStartRecordTime:J

    sub-long/2addr v0, v2

    .line 503
    iget v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMediaSpeedType:I

    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->getMusicPlaySpeed(I)F

    move-result v2

    long-to-float v0, v0

    const v1, 0x466a6000    # 15000.0f

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_2
    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 505
    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->onVideoRecordingEnd()V

    .line 507
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    if-eqz p0, :cond_4

    .line 508
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->frameAvailableSoon(I[F)Z

    :cond_4
    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 0

    .line 1053
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->saveVideo(Ljava/lang/String;)V

    return-void
.end method

.method public onScreenFormChanged(IZ)V
    .locals 0

    .line 720
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CameraMode;->onScreenFormChanged(IZ)V

    .line 721
    iput p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mScreenFormType:I

    .line 722
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->onScreenFormChanged(IZ)V

    return-void
.end method

.method protected onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "key_picture_size"

    .line 610
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1280x720"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->doPictureSizeUpdate(Lcom/transsion/camera/app/common/mode/ICameraMode;)V

    :cond_0
    const-string v0, "key_video_fun_duration"

    .line 614
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVideoDuration:I

    .line 616
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->refreshShutterUI()V

    .line 617
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingChanged duration key, value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", VideoDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mVideoDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_1
    const-string v0, "key_video_fun_speed"

    .line 620
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 621
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->getSpeedType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMediaSpeedType:I

    .line 622
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mItem:Lcom/faceunity/entity/Effect;

    if-eqz v0, :cond_2

    .line 623
    invoke-virtual {v0}, Lcom/faceunity/entity/Effect;->getMusicPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->loadMusic(Ljava/lang/String;)V

    .line 625
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingChanged speed key, VideoSpeed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", MediaSpeedType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMediaSpeedType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    const-string v0, "key_filter"

    .line 628
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 629
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSettingChanged filter key, value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p1, "-1"

    .line 630
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 631
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    new-instance p2, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public onSettingOptionClick(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSettingReady()V
    .locals 2

    .line 638
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onSettingReady()V

    .line 639
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->refreshShutterUI()V

    .line 640
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsEnterMoreMode:Z

    if-nez v1, :cond_0

    .line 641
    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->showArToggle()V

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_1

    .line 644
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mYUVCallback:Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    .line 646
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    const/4 v0, 0x0

    const/16 v1, 0x67

    invoke-interface {p0, v0, v1}, Lcom/transsion/camera/app/common/preview/IPreviewOperator;->loadGLResource(ZI)V

    return-void
.end method

.method public onShutterClick(I)Z
    .locals 5

    .line 428
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[CapturePerformance] onShutterClick"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 429
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFirstFrameReally:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSavingVideoFlag:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getLeftSpace(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gtz p1, :cond_1

    .line 436
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "onShutterClick space in not enough, can not record video."

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->showLowStorageHint()V

    const/4 p0, 0x0

    return p0

    .line 441
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x2d

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 443
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 444
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v0

    .line 430
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] onShutterClick return, mFirstFrameReally:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFirstFrameReally:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mSavingVideoFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSavingVideoFlag:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method public onShutterDown()V
    .locals 0

    .line 1587
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterDown()V

    .line 1588
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->onShutterDown()V

    return-void
.end method

.method public onShutterLongClick(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onShutterUp(I)V
    .locals 0

    .line 1593
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->onShutterUp(I)V

    .line 1594
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->onShutterUp()V

    return-void
.end method

.method public onSingleTapUp()Z
    .locals 1

    .line 461
    iget-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecordingFlag:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->getArShowFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->hideArGrid(ZZ)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onSystemError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTrackingStatusChanged(I)V
    .locals 0

    return-void
.end method

.method public onVideoRecordingEnd()V
    .locals 2

    .line 940
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onVideoRecordingEnd stopFunVideoRecording"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 941
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 945
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public pause()V
    .locals 3

    .line 385
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->pause()V

    const/4 v0, 0x1

    .line 386
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPauseMode:Z

    const/4 v1, 0x0

    .line 387
    iput-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFirstFrameReally:Z

    .line 388
    iput-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSavingVideoFlag:Z

    .line 389
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    if-eqz v1, :cond_0

    .line 390
    invoke-virtual {v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->pauseFunVideoUI()V

    .line 391
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->resetShutterToIdle()V

    .line 393
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    const/16 v2, 0xca

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 394
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 395
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->hideInfoAuto()V

    .line 396
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 397
    invoke-static {}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoRestriction;->getFaceDetectRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2, v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;->getRelation(Ljava/lang/String;Z)Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v0

    .line 396
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->postRestriction(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public resume()V
    .locals 3

    .line 368
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->resume()V

    const/4 v0, 0x0

    .line 369
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPauseMode:Z

    .line 370
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x64

    .line 371
    invoke-static {}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->getsFunVideoMsgTag()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->checkResult(II)Z

    .line 372
    invoke-static {v0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMsgTag;->setsFunVideoMsgTag(I)V

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    if-eqz v1, :cond_1

    .line 376
    invoke-virtual {v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->resumeFunVideoUI()V

    .line 377
    iget-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSavingVideoFlag:Z

    if-nez v1, :cond_1

    .line 378
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->setARRootVisibility(I)V

    :cond_1
    return-void
.end method

.method public sendNotification(Landroid/content/Context;)V
    .locals 8

    .line 960
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "sendNotification"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "notification"

    .line 961
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 962
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/camera/feature/funvideo/R$string;->video_save_notification:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "notification_id"

    const/4 v3, 0x3

    .line 963
    invoke-direct {p0, v0, v2, v1, v3}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->createNotificationChannel(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;I)V

    .line 965
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v1, p1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v2, Lcom/transsion/camera/feature/funvideo/R$drawable;->btn_shutter_video_notification_saved:I

    .line 966
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 967
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/funvideo/R$string;->camera_label:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 968
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/transsion/camera/feature/funvideo/R$string;->camera_video_saved_notification:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 970
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.APP_GALLERY"

    .line 971
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 972
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 973
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 974
    iget-object v4, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v6, "use_google_photos_default"

    const-string v7, "bool"

    invoke-virtual {v5, v6, v7, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v4, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 975
    invoke-static {v3, p0}, Lcom/transsion/camera/utils/CameraUtil;->getChoseGallery(Landroid/content/pm/PackageManager;Z)I

    move-result p0

    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    const-string p0, "com.google.android.apps.photos"

    .line 977
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-ne p0, v4, :cond_1

    const-string p0, "com.google.android.apps.photosgo"

    .line 979
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string p0, "com.gallery20"

    .line 981
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 984
    :goto_0
    invoke-static {p1}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object p0

    .line 985
    invoke-virtual {p0, v2}, Landroidx/core/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    const/high16 p1, 0xc000000

    const/4 v2, 0x0

    .line 988
    invoke-virtual {p0, v2, p1}, Landroidx/core/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object p0

    .line 992
    invoke-virtual {v1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 993
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 994
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public showModeUI()V
    .locals 0

    return-void
.end method

.method public surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 537
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 538
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARHandler:Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode$ARHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 539
    iget p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewWidth:I

    iget p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewHeight:I

    invoke-static {p1, p0}, Lcom/faceunity/wrapper/faceunity;->fuSetOutputResolution(II)V

    return-void
.end method

.method public surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 544
    iget-boolean p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsInited:Z

    if-eqz p1, :cond_1

    .line 545
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    invoke-static {}, Lcom/transsion/camera/featurelibs/ar/ARControl;->fuIsSetup()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-interface {p1, v0}, Lcom/vskit/arsdk/portal/ARIManager;->onSurfaceDestroyed(Z)V

    .line 546
    iput-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsInited:Z

    .line 548
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunARCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 549
    iget-object p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    invoke-interface {p1}, Lcom/vskit/arsdk/portal/ARIManager;->onUninit()V

    const-string p1, ""

    .line 550
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->loadMusic(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized unInit()V
    .locals 4

    monitor-enter p0

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit() start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 317
    invoke-super {p0}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->unInit()V

    const/4 v0, 0x0

    .line 318
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mIsModeInit:Z

    .line 319
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mARManager:Lcom/vskit/arsdk/portal/ARIManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/vskit/arsdk/portal/ARIManager;->setCallback(Lcom/vskit/arsdk/portal/ARCallback;)V

    .line 320
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFunVideoUI:Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;

    if-eqz v1, :cond_0

    .line 321
    invoke-virtual {v1}, Lcom/transsion/camera/feature/funvideo/ui/FunVideoUI;->unInitFunVideoUI()V

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    if-eqz v1, :cond_1

    .line 324
    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->unInit()V

    .line 326
    :cond_1
    iget-boolean v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPlayerPrepared:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 327
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 329
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mMusicPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 330
    iput-boolean v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPlayerPrepared:Z

    const-string v1, "key_video_fun_duration"

    .line 331
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v1, "key_video_fun_speed"

    .line 332
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v1, "key_filter"

    .line 333
    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/mode/CameraMode;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/transsion/camera/app/common/ModuleTransferManager;->getTransferManager()Lcom/transsion/camera/app/common/ModuleTransferManager;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mModuleTransfer:Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/ModuleTransferManager;->unregisterTransferListener(Lcom/transsion/camera/app/common/IModuleTransfer;)V

    .line 335
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/IAppUI;->setVolumeIntercept(Z)V

    .line 336
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->getCurrentUIState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 337
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/4 v1, 0x1

    const/4 v3, -0x1

    invoke-interface {v0, v1, v3, v2}, Lcom/transsion/camera/app/common/IAppUIControl$IUIStateControl;->updateUIState(IILjava/lang/String;)V

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0, v2}, Lcom/transsion/camera/app/common/IAppUI;->setModeNotifyCameraOperateActionCallBack(Lcom/transsion/camera/app/common/mode/IModeNotifyCameraOperateActionCallback;)V

    .line 341
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCameraDeviceControl:Lcom/transsion/camera/app/common/mode/CameraDeviceControl;

    if-eqz v0, :cond_4

    .line 342
    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/mode/CameraDeviceControl;->addPreviewDataCallback(Lcom/transsion/camera/adapter/CameraProxy$CameraPreviewDataCallback;)V

    .line 345
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    if-eqz v0, :cond_5

    const/16 v1, 0xcb

    .line 346
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 347
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 348
    iget-object v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 349
    iput-object v2, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mRecorderHandle:Landroid/os/Handler;

    .line 352
    :cond_5
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUI;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_6

    .line 353
    invoke-static {}, Lcom/transsion/camera/featurelibs/ar/ARControl;->unInit()V

    .line 355
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit() end"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateCurrentCameraId(Ljava/lang/String;)V
    .locals 2

    .line 687
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/CameraMode;->updateCurrentCameraId(Ljava/lang/String;)V

    .line 688
    invoke-static {}, Lcom/transsion/camera/adapter/CameraAgentFactory;->getCameraAgent()Lcom/transsion/camera/adapter/CameraAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/adapter/CameraAgent;->getCameraDeviceInfo()Lcom/transsion/camera/adapter/ICameraDeviceInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mCurrentCameraId:Ljava/lang/String;

    .line 689
    invoke-interface {v0, v1}, Lcom/transsion/camera/adapter/ICameraDeviceInfo;->getCameraInfo(Ljava/lang/String;)Lcom/transsion/camera/adapter/ICameraInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/adapter/ICameraInfo;->getSensorOrientation()I

    move-result v0

    rsub-int v0, v0, 0x168

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mSensorOrientation:I

    .line 690
    iget-object p0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mFilterCallback:Lcom/transsion/camera/app/common/mode/IFilterProcessor;

    if-eqz p0, :cond_0

    .line 691
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/mode/IFilterProcessor;->updateFilterSupportIds(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updatePreviewSize(Landroid/util/Size;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 658
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CameraMode;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePreviewSize width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 659
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewWidth:I

    .line 660
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->mPreviewHeight:I

    :cond_0
    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V
    .locals 0

    .line 697
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/CommonPhotoMode;->updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 699
    invoke-direct {p0}, Lcom/transsion/camera/feature/funvideo/mode/FunVideoMode;->doActionWithStorageUnmounted()V

    :cond_0
    return-void
.end method
