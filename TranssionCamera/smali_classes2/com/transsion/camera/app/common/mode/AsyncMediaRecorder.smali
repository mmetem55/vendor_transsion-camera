.class Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;
.super Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;
.source "AsyncMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$MediaRecorderListener;,
        Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$CameraStartListener;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAudioSource:I

.field private mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

.field private mCameraListener:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$CameraStartListener;

.field private mCameraOperation:Lcom/transsion/camera/app/common/mode/IVideoContract$ICameraRecorder;

.field private mContext:Landroid/content/Context;

.field private mIsMuteRecoder:Z

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderListener:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$MediaRecorderListener;

.field private mMuteRecoderChanged:Z

.field private mNeedCreateVideoSurface:Z

.field private mPolicy:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderPolicy;

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mSetParameterMethod:Ljava/lang/reflect/Method;

.field private mSetParameterMethodInit:Z

.field private mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mSurface:Landroid/view/Surface;

.field private final mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

.field private volatile mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

.field private mVideoStateCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IVideoStateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/mode/CommonVideoHelper;Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderPolicy;Lcom/transsion/camera/app/common/mode/IVideoContract$ICameraRecorder;Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;Lcom/transsion/camera/app/common/mode/IVideoContract$IVideoStateCallback;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;-><init>()V

    .line 74
    sget-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_UNKNOWN:Lcom/transsion/camera/app/common/mode/VideoState;

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    .line 76
    new-instance v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$CameraStartListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$CameraStartListener;-><init>(Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCameraListener:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$CameraStartListener;

    .line 77
    new-instance v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$MediaRecorderListener;

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$MediaRecorderListener;-><init>(Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$1;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorderListener:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$MediaRecorderListener;

    .line 79
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSetParameterMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSetParameterMethodInit:Z

    .line 81
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mIsMuteRecoder:Z

    .line 82
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMuteRecoderChanged:Z

    .line 83
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mNeedCreateVideoSurface:Z

    .line 85
    iput v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mAudioSource:I

    .line 89
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 91
    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    .line 92
    iput-object p4, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mPolicy:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderPolicy;

    .line 93
    iput-object p5, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCameraOperation:Lcom/transsion/camera/app/common/mode/IVideoContract$ICameraRecorder;

    .line 94
    iput-object p6, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    .line 95
    iput-object p7, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoStateCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IVideoStateCallback;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "create_video_surface_in_photo_mode"

    invoke-static {p1, p3, p2}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mNeedCreateVideoSurface:Z

    const-string p2, "audio_source"

    .line 97
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mAudioSource:I

    return-void
.end method

.method private abortStartRecording(I)V
    .locals 1

    const/4 v0, 0x1

    .line 353
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->abortStartRecording(IZ)V

    return-void
.end method

.method private abortStartRecording(IZ)V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->releaseAudioFocus(Landroid/content/Context;)V

    .line 358
    sget-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PREVIEWING:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->updateVideoState(Lcom/transsion/camera/app/common/mode/VideoState;)V

    .line 359
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;->onMediaRecorderStopped(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->stopMediaRecording(I)V

    return-void
.end method

.method static synthetic access$300()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 49
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private canStartMediaRecording()Z
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    sget-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/mode/VideoState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private configMediaRecorder(Z)Z
    .locals 9

    const/4 v0, 0x0

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 164
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mPolicy:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderPolicy;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mProfile:Landroid/media/CamcorderProfile;

    invoke-interface {v1, v2, p1}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderPolicy;->createMediaInfo(Landroid/media/CamcorderProfile;Z)Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 166
    sget-object p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "create media info failed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 169
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    if-nez v3, :cond_1

    .line 170
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v1, "key_video_quality"

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-static {}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->getInstance()Lcom/transsion/camera/utils/VideoSurfaceUtil;

    move-result-object v3

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v7, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->getVideoSurface(Ljava/lang/String;Ljava/lang/String;IILjava/io/File;)Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSurface:Landroid/view/Surface;

    .line 173
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->releaseRecorder()V

    .line 174
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->sendMediaSurface(Z)V

    return v0

    .line 177
    :cond_1
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->setOutputFile(Lcom/transsion/camera/app/common/mode/VideoFileInfo;)V

    if-eqz p1, :cond_2

    .line 179
    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->setProfile(Lcom/transsion/camera/app/common/mode/VideoFileInfo;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 181
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->setProfile(Lcom/transsion/camera/app/common/mode/VideoFileInfo;)V

    .line 183
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getOrientation()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 185
    sget-object p1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configMediaRecorder exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0
.end method

.method private configRecorder(Z)Z
    .locals 3

    .line 138
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configRecorder mMuteRecoderChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMuteRecoderChanged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsMuteRecoder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mIsMuteRecoder:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 143
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMuteRecoderChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mIsMuteRecoder:Z

    if-eqz v0, :cond_0

    .line 144
    iput-boolean v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMuteRecoderChanged:Z

    .line 145
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->releaseRecorder()V

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->resetMediaRecorder()V

    .line 148
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->configMediaRecorder(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->prepareRecorder(Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private createTempRecordFile()Ljava/io/File;
    .locals 2

    .line 213
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createTempRecordFile"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 214
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    .line 215
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 218
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, ".temp_record"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private handleMediaRecorderException()V
    .locals 0

    .line 311
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->resetVideoState()V

    .line 312
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->reset()V

    return-void
.end method

.method private handlePauseException(Ljava/lang/Exception;)V
    .locals 3

    .line 301
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handlePauseException] Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 302
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->handleMediaRecorderException()V

    return-void
.end method

.method private handlePrepareException(Ljava/lang/Exception;)V
    .locals 3

    .line 285
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handlePrepareException] Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 286
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->sendMediaSurface(Z)V

    .line 287
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->handleMediaRecorderException()V

    return-void
.end method

.method private handleResumeException(Ljava/lang/Exception;)V
    .locals 3

    .line 306
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleResumeException] Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 307
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->handleMediaRecorderException()V

    return-void
.end method

.method private handleStopException(Ljava/lang/Exception;)V
    .locals 2

    .line 291
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[handleStopException] Exception, this will cause the video file to be deleted "

    invoke-static {v0, v1, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->releaseAudioFocus(Landroid/content/Context;)V

    .line 293
    sget-object p1, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PREVIEWING:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->updateVideoState(Lcom/transsion/camera/app/common/mode/VideoState;)V

    .line 294
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;->onMediaRecorderStopped(IZ)V

    .line 295
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz p0, :cond_0

    .line 296
    invoke-virtual {p0}, Landroid/media/MediaRecorder;->reset()V

    :cond_0
    return-void
.end method

.method private isSetParameterSupport()Z
    .locals 5

    .line 596
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSetParameterMethodInit:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 597
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "init SetParameter Method"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 598
    iput-boolean v2, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSetParameterMethodInit:Z

    .line 600
    const-class v0, Landroid/media/MediaRecorder;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v4, "setParameter"

    .line 601
    invoke-static {v0, v4, v3}, Lcom/transsion/camera/utils/ReflectionUtils;->findDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSetParameterMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 606
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSetParameterMethod:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private pauseMediaRecording()V
    .locals 1

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->pause()V

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;->onMediaRecorderPaused()V

    .line 366
    sget-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PAUSED:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->updateVideoState(Lcom/transsion/camera/app/common/mode/VideoState;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 368
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->handlePauseException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private prepareRecorder(Z)Z
    .locals 9

    .line 256
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareRecorder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 257
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mNeedCreateVideoSurface:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 258
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    const-string v0, "key_video_quality"

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 259
    invoke-static {}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->getInstance()Lcom/transsion/camera/utils/VideoSurfaceUtil;

    move-result-object v3

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;->getCameraId()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v7, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 260
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->createTempRecordFile()Ljava/io/File;

    move-result-object v8

    .line 259
    invoke-virtual/range {v3 .. v8}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->getVideoSurface(Ljava/lang/String;Ljava/lang/String;IILjava/io/File;)Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSurface:Landroid/view/Surface;

    .line 261
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->sendMediaSurface(Z)V

    return v2

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSurface:Landroid/view/Surface;

    if-nez v1, :cond_1

    .line 265
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSurface:Landroid/view/Surface;

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v3}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    const/4 v1, 0x0

    .line 269
    :try_start_0
    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V

    if-nez p1, :cond_2

    .line 271
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->sendMediaSurface(Z)V

    :cond_2
    const-string p1, "prepareRecorder end"

    .line 273
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 279
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->handlePrepareException(Ljava/lang/Exception;)V

    return v1

    :catch_1
    move-exception p1

    .line 276
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->handlePrepareException(Ljava/lang/Exception;)V

    return v1
.end method

.method private releaseRecorder()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 124
    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    :cond_0
    return-void
.end method

.method private resetMediaRecorder()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 154
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorderListener:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$MediaRecorderListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorderListener:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$MediaRecorderListener;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    :goto_0
    return-void
.end method

.method private resetVideoState()V
    .locals 3

    .line 399
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    sget-object v1, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_UNKNOWN:Lcom/transsion/camera/app/common/mode/VideoState;

    if-eq v0, v1, :cond_0

    .line 400
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[resetVideoState] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " --> STATE_PREVIEW"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 401
    sget-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/mode/VideoState;

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    :cond_0
    return-void
.end method

.method private resumeMediaRecording()V
    .locals 1

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->resume()V

    .line 375
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;->onMediaRecorderResumed()V

    .line 376
    sget-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_RECORDING:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->updateVideoState(Lcom/transsion/camera/app/common/mode/VideoState;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 378
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->handleResumeException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private sendMediaSurface(Z)V
    .locals 8

    .line 316
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMediaSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 318
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSurface:Landroid/view/Surface;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v5, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget v6, p0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move v7, p1

    invoke-interface/range {v2 .. v7}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;->onMediaRecorderPrepared(Landroid/view/Surface;IIIZ)V

    return-void
.end method

.method private setOutputFile(Lcom/transsion/camera/app/common/mode/VideoFileInfo;)V
    .locals 4

    .line 192
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getFileTempPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/File;)V

    .line 197
    :goto_0
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getMaxDuration()I

    move-result v0

    if-lez v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getMaxDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 200
    :cond_1
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getMaxFileSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 201
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getMaxFileSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    :cond_2
    return-void
.end method

.method private setParameterExtra(Ljava/lang/String;)V
    .locals 3

    .line 610
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->isSetParameterSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mSetParameterMethod:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, p0, v1}, Lcom/transsion/camera/utils/ReflectionUtils;->doMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private setProfile(Lcom/transsion/camera/app/common/mode/VideoFileInfo;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 222
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->isNeedAudio()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    sget-object p1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProfile mAudioSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mAudioSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 224
    iget p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mAudioSource:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 225
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 229
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {p1, p0}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    goto/16 :goto_3

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    if-eqz p1, :cond_2

    .line 232
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getCaptureFPS()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getCaptureFPS()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    :cond_2
    if-eqz p1, :cond_3

    .line 235
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getBitRateCoefficient()I

    move-result v0

    if-lez v0, :cond_3

    .line 236
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getBitRateCoefficient()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/2addr v0, v1

    .line 237
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    goto :goto_1

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    :goto_1
    if-eqz p1, :cond_4

    .line 241
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getVideoFrameRate()I

    move-result v0

    if-lez v0, :cond_4

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getVideoFrameRate()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    goto :goto_2

    .line 244
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 246
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 247
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    if-eqz p1, :cond_5

    .line 248
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->isNeedModifyIFrame()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "video-param-i-frames-interval=0"

    .line 249
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->setParameterExtra(Ljava/lang/String;)V

    :cond_5
    const-string p1, "pending-limit=1"

    .line 251
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->setParameterExtra(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private startCameraRecording()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mPolicy:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderPolicy;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderPolicy;->checkPermitBeforeStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;->onMediaRecorderPreparing()V

    .line 325
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->pauseAudioPlayBack(Landroid/content/Context;)Z

    const/4 v0, 0x1

    .line 326
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->configRecorder(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCameraOperation:Lcom/transsion/camera/app/common/mode/IVideoContract$ICameraRecorder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCameraListener:Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$CameraStartListener;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/mode/IVideoContract$ICameraRecorder;->startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    sget-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PRE_RECORDING:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->updateVideoState(Lcom/transsion/camera/app/common/mode/VideoState;)V

    goto :goto_0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->releaseAudioFocus(Landroid/content/Context;)V

    .line 330
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;->onMediaRecorderPrepareAbort()V

    goto :goto_0

    .line 333
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;->onMediaRecorderPrepareAbort()V

    :goto_0
    return-void
.end method

.method private startMediaRecording()V
    .locals 2

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 344
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;->onMediaRecorderStarted()V

    .line 345
    sget-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_RECORDING:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->updateVideoState(Lcom/transsion/camera/app/common/mode/VideoState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 347
    sget-object v1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 348
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->abortStartRecording(I)V

    :goto_0
    return-void
.end method

.method private stopMediaRecording(I)V
    .locals 4

    .line 384
    :try_start_0
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[stopMediaRecording+] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reason"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;->onMediaRecorderStopping(IZ)V

    .line 386
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 387
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->releaseRecorder()V

    .line 388
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object v3, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->releaseAudioFocus(Landroid/content/Context;)V

    .line 389
    sget-object v1, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PREVIEWING:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->updateVideoState(Lcom/transsion/camera/app/common/mode/VideoState;)V

    .line 390
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    invoke-interface {v1, p1, v2}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;->onMediaRecorderStopped(IZ)V

    const-string p1, "[stopMediaRecording-]"

    .line 391
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 394
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->handleStopException(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private updateVideoState(Lcom/transsion/camera/app/common/mode/VideoState;)V
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    if-eq v0, p1, :cond_0

    .line 407
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateVideoState] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 408
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    :cond_0
    return-void
.end method


# virtual methods
.method protected configRecorder(Landroid/os/Message;)V
    .locals 0

    .line 130
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/CamcorderProfile;

    if-eqz p1, :cond_0

    .line 132
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mProfile:Landroid/media/CamcorderProfile;

    const/4 p1, 0x0

    .line 133
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->configRecorder(Z)Z

    :cond_0
    return-void
.end method

.method protected operationPrepared(Landroid/os/Message;)V
    .locals 2

    .line 414
    sget-object p1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$1;->$SwitchMap$com$transsion$camera$app$common$mode$VideoState:[I

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 427
    sget-object p1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "operationPrepared called in  mVideoState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " do nothing"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 424
    :cond_0
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->abortStartRecording(I)V

    goto :goto_0

    .line 420
    :cond_1
    sget-object p1, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->updateVideoState(Lcom/transsion/camera/app/common/mode/VideoState;)V

    .line 421
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoStateCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IVideoStateCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IVideoContract$IVideoStateCallback;->onVideoRestartPreviewed()V

    goto :goto_0

    .line 417
    :cond_2
    sget-object p1, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->updateVideoState(Lcom/transsion/camera/app/common/mode/VideoState;)V

    :goto_0
    return-void
.end method

.method protected pauseResume(Landroid/os/Message;)V
    .locals 2

    .line 478
    sget-object p1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pauseResume mVideoState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 479
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$1;->$SwitchMap$com$transsion$camera$app$common$mode$VideoState:[I

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pauseResume in unSupported mVideoState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 484
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->resumeMediaRecording()V

    goto :goto_0

    .line 481
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->pauseMediaRecording()V

    :goto_0
    return-void
.end method

.method protected release(Landroid/os/Message;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->releaseRecorder()V

    const/4 p1, 0x0

    .line 103
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mIsMuteRecoder:Z

    .line 104
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMuteRecoderChanged:Z

    return-void
.end method

.method protected shouldConsumerStopCommand()Z
    .locals 1

    .line 511
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$1;->$SwitchMap$com$transsion$camera$app$common$mode$VideoState:[I

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected snapShot(Landroid/os/Message;)V
    .locals 1

    .line 538
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/mode/IVideoContract$ISnapShotCallback;

    if-nez p1, :cond_0

    return-void

    .line 542
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$1;->$SwitchMap$com$transsion$camera$app$common$mode$VideoState:[I

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    .line 548
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/IVideoContract$ISnapShotCallback;->onSnapShot(Z)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 545
    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/mode/IVideoContract$ISnapShotCallback;->onSnapShot(Z)V

    :goto_0
    return-void
.end method

.method protected startMediaRecorder(Landroid/os/Message;)V
    .locals 3

    .line 457
    sget-object p1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$1;->$SwitchMap$com$transsion$camera$app$common$mode$VideoState:[I

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 470
    sget-object p1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMediaRecorder in unSupported mVideoState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 471
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->abortStartRecording(I)V

    goto :goto_0

    .line 459
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->canStartMediaRecording()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 460
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->startMediaRecording()V

    goto :goto_0

    .line 462
    :cond_1
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->abortStartRecording(I)V

    goto :goto_0

    .line 467
    :cond_2
    sget-object p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "already stop or abort, ignore this!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected startStop(Landroid/os/Message;)V
    .locals 2

    .line 434
    sget-object p1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startStop mVideoState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 435
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$1;->$SwitchMap$com$transsion$camera$app$common$mode$VideoState:[I

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startStop in unSupported mVideoState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 441
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->stopMediaRecording(I)V

    .line 445
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/AbstractAsyncMediaRecorder;->removeStartStopMessages()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "remove StartStop messages"

    .line 446
    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->startCameraRecording()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected stop(Landroid/os/Message;)V
    .locals 3

    .line 494
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$1;->$SwitchMap$com$transsion$camera$app$common$mode$VideoState:[I

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const/4 p1, 0x6

    if-eq v0, p1, :cond_0

    .line 503
    sget-object p1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop in unSupported mVideoState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :cond_0
    invoke-direct {p0, v2}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->stopMediaRecording(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 500
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    move v2, v1

    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->abortStartRecording(IZ)V

    :goto_0
    return-void
.end method

.method protected storageUnmounted(Landroid/os/Message;)V
    .locals 2

    .line 522
    sget-object p1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder$1;->$SwitchMap$com$transsion$camera$app$common$mode$VideoState:[I

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 531
    sget-object p1, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "storageUnmounted do nothing in mVideoState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 525
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->stopMediaRecording(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    .line 528
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->abortStartRecording(I)V

    :goto_0
    return-void
.end method

.method protected updateMuteRecoder(Landroid/os/Message;)V
    .locals 3

    .line 109
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 110
    sget-object v0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMuteRecoder mIsMuteRecoder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mIsMuteRecoder:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", muteRecoder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mIsMuteRecoder:Z

    if-eq v0, p1, :cond_0

    .line 113
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mIsMuteRecoder:Z

    const/4 p1, 0x1

    .line 114
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/AsyncMediaRecorder;->mMuteRecoderChanged:Z

    :cond_0
    return-void
.end method
