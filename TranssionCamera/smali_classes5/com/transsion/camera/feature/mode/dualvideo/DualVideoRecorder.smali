.class public Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;
.super Ljava/lang/Object;
.source "DualVideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$RecorderHandle;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoCB;,
        Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;
    }
.end annotation


# static fields
.field private static final MSG_RECORDER_FINISH:I = 0xcc

.field private static final MSG_RECORDER_LEAVE:I = 0xcb

.field private static final MSG_RECORDER_PAUSE_RESUME:I = 0xca

.field private static final MSG_RECORDER_START_STOP:I = 0xc9

.field private static final MSG_RECORDER_STAY:I = 0xcd

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

.field private mCameraOperation:Lcom/transsion/camera/app/common/mode/IVideoContract$ICameraRecorder;

.field private mContext:Landroid/content/Context;

.field private mDualVideoCB:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoCB;

.field private mLeave:Z

.field private mMainOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private final mMediaEncoderListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

.field private mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

.field private mPolicy:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderPolicy;

.field private mProfile:Landroid/media/CamcorderProfile;

.field private volatile mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

.field private mRecorderHandle:Landroid/os/Handler;

.field private volatile mRecordingFlag:Z

.field private mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderPolicy;Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;Lcom/transsion/camera/app/common/mode/IVideoContract$ICameraRecorder;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_INIT:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    .line 59
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mLeave:Z

    .line 328
    new-instance v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMediaEncoderListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    .line 64
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mPolicy:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderPolicy;

    .line 66
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    .line 67
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mCameraOperation:Lcom/transsion/camera/app/common/mode/IVideoContract$ICameraRecorder;

    .line 68
    iput-object p5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMainOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-void
.end method

.method static synthetic access$1000(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Lcom/transsion/camera/app/common/preview/IPreviewOperator;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMainOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-object p0
.end method

.method static synthetic access$102(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;)Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    return-object p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;)Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    return-object p1
.end method

.method static synthetic access$300()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 27
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->processStartAndStopRecorder()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->processPauseAndResumeRecorder()V

    return-void
.end method

.method static synthetic access$602(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mLeave:Z

    return p1
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->processLeaveRecorder()V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->processFinishRecorder()V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    return-object p0
.end method

.method static synthetic access$902(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;)Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    return-object p1
.end method

.method private pauseRecording()V
    .locals 3

    .line 294
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseRecording, mRecordingFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 295
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    if-nez v0, :cond_0

    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->pauseRecording()V

    .line 299
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_PAUSED:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    .line 300
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;->onMediaRecorderPaused()V

    return-void
.end method

.method private processFinishRecorder()V
    .locals 2

    const/4 v0, 0x0

    .line 231
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    .line 232
    sget-object v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_INIT:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    .line 233
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mLeave:Z

    return-void
.end method

.method private processLeaveRecorder()V
    .locals 3

    .line 216
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processLeaveRecorder mRecordState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 217
    sget-object v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$2;->$SwitchMap$com$transsion$camera$feature$mode$dualvideo$DualVideoRecorder$DualVideoRecordState:[I

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processStartAndStopRecorder in unSupported mRecordState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->stopRecording()V

    :goto_0
    return-void
.end method

.method private processPauseAndResumeRecorder()V
    .locals 3

    .line 198
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processPauseAndResumeRecorder mRecordState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 199
    sget-object v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$2;->$SwitchMap$com$transsion$camera$feature$mode$dualvideo$DualVideoRecorder$DualVideoRecordState:[I

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processPauseAndResumeRecorder in unSupported mRecordState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->resumeRecording()V

    goto :goto_0

    .line 201
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->pauseRecording()V

    :goto_0
    return-void
.end method

.method private processStartAndStopRecorder()V
    .locals 3

    .line 176
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processStartAndStopRecorder mRecordState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mLeave:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mLeave:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 177
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mLeave:Z

    if-eqz v1, :cond_0

    return-void

    .line 180
    :cond_0
    sget-object v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$2;->$SwitchMap$com$transsion$camera$feature$mode$dualvideo$DualVideoRecorder$DualVideoRecordState:[I

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processStartAndStopRecorder in unSupported mRecordState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->stopRecording()V

    goto :goto_0

    .line 182
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->startRecording()V

    :goto_0
    return-void
.end method

.method private resumeRecording()V
    .locals 3

    .line 304
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeRecording, mRecordingFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 305
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    if-nez v0, :cond_0

    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->resumeRecording()V

    .line 309
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_STARTED:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    .line 310
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;->onMediaRecorderResumed()V

    return-void
.end method

.method private startRecording()V
    .locals 11

    .line 237
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecording start, mRecordingFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 238
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    if-eqz v1, :cond_0

    return-void

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;->onMediaRecorderPreparing()V

    .line 243
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mCameraOperation:Lcom/transsion/camera/app/common/mode/IVideoContract$ICameraRecorder;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/transsion/camera/app/common/mode/IVideoContract$ICameraRecorder;->startRecording(Lcom/transsion/camera/adapter/CameraProxy$IMediaStartCallback;)Z

    .line 245
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mPolicy:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderPolicy;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mProfile:Landroid/media/CamcorderProfile;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderPolicy;->createMediaInfo(Landroid/media/CamcorderProfile;Z)Lcom/transsion/camera/app/common/mode/VideoFileInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "create media info failed"

    .line 247
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 248
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    .line 249
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_INIT:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    return-void

    .line 253
    :cond_1
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mPolicy:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderPolicy;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderPolicy;->creatFileSpec()Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    move-result-object v4

    if-nez v4, :cond_2

    .line 255
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    .line 256
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_INIT:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    return-void

    .line 259
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startRecording fileSpec.mFileTempPath :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 262
    :try_start_0
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 263
    new-instance v5, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    goto :goto_0

    .line 264
    :cond_3
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 265
    new-instance v5, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    .line 268
    :cond_4
    :goto_0
    new-instance v4, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMediaEncoderListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v7, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v9, v7, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v10, 0xde1

    move v7, v8

    move v8, v9

    move v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;-><init>(Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;III)V

    .line 271
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->isNeedAudio()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 272
    new-instance v4, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    iget-object v7, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMediaEncoderListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    invoke-direct {v4, v5, v6, v7}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;-><init>(Landroid/content/Context;Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;)V

    .line 275
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sOrientation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 276
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getOrientation()I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_6

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->setOrientationHint(I)V

    goto :goto_1

    .line 279
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->setOrientationHint(I)V

    .line 281
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->prepare()V

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->startRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 284
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    :goto_2
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_STARTED:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    .line 287
    iput-boolean v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    .line 289
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mCallback:Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/IVideoContract$IMediaRecorderCallback;->onMediaRecorderStarted()V

    .line 290
    sget-object p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "startRecording end"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private stopRecording()V
    .locals 3

    .line 314
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecording start, mRecordingFlag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 315
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    if-nez v1, :cond_0

    return-void

    .line 318
    :cond_0
    sget-object v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;->STATE_STOPING:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordState:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoRecordState;

    .line 319
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mMuxer:Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    if-eqz v1, :cond_1

    .line 320
    invoke-virtual {v1}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->stopRecording()V

    .line 322
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mDualVideoCB:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoCB;

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    .line 323
    invoke-interface {p0, v1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoCB;->playRecorderSound(Z)V

    :cond_2
    const-string p0, "stopRecording end"

    .line 325
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mLeave:Z

    .line 73
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "dualvideo_record"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 75
    new-instance v1, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$RecorderHandle;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$RecorderHandle;-><init>(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;Landroid/os/Looper;Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$1;)V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    return-void
.end method

.method public isRecording()Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    return p0
.end method

.method public leave()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyVideoRecorderData([FI)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecordingFlag:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->frameAvailableSoon(I[F)Z

    :cond_0
    return-void
.end method

.method public pauseOrResume()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setDualVideoCB(Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoCB;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mDualVideoCB:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoCB;

    return-void
.end method

.method public setProfile(Landroid/media/CamcorderProfile;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mProfile:Landroid/media/CamcorderProfile;

    return-void
.end method

.method public startOrStop(Z)V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x12c

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    if-eqz p1, :cond_1

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mDualVideoCB:Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoCB;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    .line 103
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder$DualVideoCB;->playRecorderSound(Z)V

    :cond_1
    return-void
.end method

.method public stay()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0xcc

    .line 80
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 81
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 82
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/DualVideoRecorder;->mRecorderHandle:Landroid/os/Handler;

    :cond_0
    return-void
.end method
