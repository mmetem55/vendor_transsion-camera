.class public Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;
.super Ljava/lang/Object;
.source "GLDataBufferRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;,
        Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$VideoHandle;
    }
.end annotation


# static fields
.field private static final COMMANDS:[Ljava/lang/String;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataBufferRecorderCallback:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;

.field private mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

.field private mGLMediaRecorder:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;

.field private final mIPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

.field private volatile mIsModeResumed:Z

.field private mIsMuteRecoder:Z

.field private volatile mIsRecording:Z

.field private mOrientation:I

.field private mPreviewSize:Landroid/util/Size;

.field protected final mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

.field private mStartRecordTime:J

.field protected mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

.field private mVideoHandle:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$VideoHandle;

.field private final mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

.field private mVideoNameFormat:Ljava/text/SimpleDateFormat;

.field private volatile mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 36
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "DataBufferRecorder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "startStop"

    const-string v3, "pauseResume"

    const-string v4, "storageUnMounted"

    const-string v5, "snapShot"

    const-string v6, "releaseRecorder"

    const-string v7, "stop"

    .line 71
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->COMMANDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/mode/CommonVideoHelper;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;Lcom/transsion/camera/app/common/preview/IPreviewOperator;)V
    .locals 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_UNKNOWN:Lcom/transsion/camera/app/common/mode/VideoState;

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    .line 82
    sget-object v0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lily [DataBufferRecorder Construct] , Thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 83
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    .line 85
    iput-object p3, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mSettingController:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;

    .line 86
    iput-object p4, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mIPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 35
    sget-object v0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mIsRecording:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mOrientation:I

    return p0
.end method

.method static synthetic access$1102(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mOrientation:I

    return p1
.end method

.method static synthetic access$1200(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mIsMuteRecoder:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;II)I
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->calcBitRate(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mGLMediaRecorder:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mStartRecordTime:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mDataBufferRecorderCallback:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;Lcom/transsion/camera/app/common/mode/VideoState;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->updateVideoState(Lcom/transsion/camera/app/common/mode/VideoState;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)Ljava/text/SimpleDateFormat;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoNameFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static synthetic access$200(I)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-static {p0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->getCommand(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)Landroid/util/Size;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mPreviewSize:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;Landroid/util/Size;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->doStartStop(Landroid/util/Size;)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->doPauseResume()V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->doStorageUnmounted()V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->doSnapShot()V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->doRelease()V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->stopRecording()V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->removeStartStopMessages()V

    return-void
.end method

.method private calcBitRate(II)I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    int-to-float p0, p1

    const/high16 p1, 0x40f00000    # 7.5f

    mul-float/2addr p0, p1

    int-to-float p1, p2

    mul-float/2addr p0, p1

    float-to-int p0, p0

    .line 228
    sget-object p1, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    int-to-float v0, p0

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, "bitrate=%5.2f[Mbps]"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private doPauseResume()V
    .locals 3

    .line 330
    sget-object v0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseResume mVideoState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 331
    sget-object v1, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$3;->$SwitchMap$com$transsion$camera$app$common$mode$VideoState:[I

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseResume in unSupported mVideoState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->resumeRecording()V

    goto :goto_0

    .line 333
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->pauseRecording()V

    :goto_0
    return-void
.end method

.method private doRelease()V
    .locals 0

    return-void
.end method

.method private doSnapShot()V
    .locals 0

    return-void
.end method

.method private doStartStop(Landroid/util/Size;)V
    .locals 3

    .line 169
    sget-object v0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startStop mVideoState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 170
    sget-object v1, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$3;->$SwitchMap$com$transsion$camera$app$common$mode$VideoState:[I

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 p1, 0x2

    if-eq v1, p1, :cond_0

    const/4 p1, 0x3

    if-eq v1, p1, :cond_0

    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startStop in unSupported mVideoState:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->stopRecording()V

    .line 177
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->removeStartStopMessages()V

    goto :goto_0

    .line 172
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->startRecording(Landroid/util/Size;)V

    :goto_0
    return-void
.end method

.method private doStorageUnmounted()V
    .locals 3

    .line 360
    sget-object v0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$3;->$SwitchMap$com$transsion$camera$app$common$mode$VideoState:[I

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 366
    sget-object v0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storageUnmounted do nothing in mVideoState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->stopRecording()V

    :goto_0
    return-void
.end method

.method private static getCommand(I)Ljava/lang/String;
    .locals 1

    .line 377
    sget-object v0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->COMMANDS:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method

.method private pauseRecording()V
    .locals 1

    .line 345
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mGLMediaRecorder:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;

    invoke-virtual {v0}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->pauseRecording()V

    .line 346
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mDataBufferRecorderCallback:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;->onDataBufferRecorderPaused()V

    .line 347
    sget-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PAUSED:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->updateVideoState(Lcom/transsion/camera/app/common/mode/VideoState;)V

    return-void
.end method

.method private removeStartStopMessages()V
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoHandle:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$VideoHandle;

    if-nez v0, :cond_0

    .line 469
    sget-object p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "removeStartStopMessages mVideoHandle is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 472
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoHandle:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$VideoHandle;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method private resumeRecording()V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mGLMediaRecorder:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;

    invoke-virtual {v0}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->resumeRecording()V

    .line 352
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mDataBufferRecorderCallback:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;->onDataBufferRecorderResumed()V

    .line 353
    sget-object v0, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_RECORDING:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->updateVideoState(Lcom/transsion/camera/app/common/mode/VideoState;)V

    return-void
.end method

.method private sendMessage(I)V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoHandle:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$VideoHandle;

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 456
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoHandle:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$VideoHandle;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private sendMessage(Landroid/os/Message;)V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoHandle:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$VideoHandle;

    if-eqz v0, :cond_0

    .line 462
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 463
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoHandle:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$VideoHandle;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private shouldConsumerStopCommand()Z
    .locals 1

    .line 389
    sget-object v0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$3;->$SwitchMap$com$transsion$camera$app$common$mode$VideoState:[I

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private startRecording(Landroid/util/Size;)V
    .locals 4

    .line 187
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mIsModeResumed:Z

    if-nez v0, :cond_0

    .line 188
    sget-object p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "lily.. startRecording failed for mode paused!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 191
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mPreviewSize:Landroid/util/Size;

    .line 193
    new-instance v0, Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->getCameraDirectory()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mp4"

    const-string v3, "video/mp4"

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    .line 194
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    invoke-interface {v1, v0}, Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;->createTempVideoFile(Lcom/transsion/camera/app/common/mode/VideoFileSpec;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 196
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mDataBufferRecorderCallback:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;

    if-eqz p0, :cond_1

    .line 197
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;->onStartFailed()V

    :cond_1
    return-void

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mDataBufferRecorderCallback:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;->onDataBufferRecorderPrepared()V

    .line 203
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->pauseAudioPlayBack(Landroid/content/Context;)Z

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mStartRecordTime:J

    .line 207
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mIPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    new-instance v1, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$1;

    invoke-direct {v1, p0, p1}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$1;-><init>(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;Landroid/util/Size;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    .line 221
    sget-object p1, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_RECORDING:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->updateVideoState(Lcom/transsion/camera/app/common/mode/VideoState;)V

    .line 222
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mDataBufferRecorderCallback:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;->onDataBufferRecorderStarted()V

    return-void
.end method

.method private stopRecording()V
    .locals 2

    .line 233
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mIsRecording:Z

    if-nez v0, :cond_1

    .line 234
    sget-object v0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "lily.. stopRecording failed for not started record!"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mDataBufferRecorderCallback:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;

    if-eqz p0, :cond_0

    .line 236
    invoke-interface {p0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;->onDataBufferRecorderStopped()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 240
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mIsRecording:Z

    .line 242
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mDataBufferRecorderCallback:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;

    if-eqz v0, :cond_2

    .line 243
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;->onDataBufferRecorderStopped()V

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mDataBufferRecorderCallback:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;

    if-eqz v0, :cond_3

    .line 248
    invoke-interface {v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;->onDataBufferRecorderSaving()V

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->releaseAudioFocus(Landroid/content/Context;)V

    .line 252
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mIPreviewOperator:Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    new-instance v1, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$2;-><init>(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateVideoState(Lcom/transsion/camera/app/common/mode/VideoState;)V
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    if-eq v0, p1, :cond_0

    .line 383
    sget-object v0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateVideoState] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 384
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    :cond_0
    return-void
.end method


# virtual methods
.method public frameAvailable([FII)V
    .locals 2

    .line 412
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mIsRecording:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mGLMediaRecorder:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoState:Lcom/transsion/camera/app/common/mode/VideoState;

    sget-object v1, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_RECORDING:Lcom/transsion/camera/app/common/mode/VideoState;

    if-ne v0, v1, :cond_0

    .line 413
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mGLMediaRecorder:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->frameAvailable([FIIZ)V

    :cond_0
    return-void
.end method

.method public init()V
    .locals 4

    .line 90
    sget-object v0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "lily [init]++"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 91
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "VideoHDR_Record #"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 93
    new-instance v2, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$VideoHandle;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v2, v1, p0, v3}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$VideoHandle;-><init>(Landroid/os/Looper;Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$1;)V

    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoHandle:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$VideoHandle;

    .line 94
    new-instance v1, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;

    invoke-direct {v1}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mGLMediaRecorder:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;

    .line 95
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "\'VID\'_yyyyMMdd_HHmmss"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoNameFormat:Ljava/text/SimpleDateFormat;

    .line 96
    sget-object v1, Lcom/transsion/camera/app/common/mode/VideoState;->STATE_PREVIEW:Lcom/transsion/camera/app/common/mode/VideoState;

    invoke-direct {p0, v1}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->updateVideoState(Lcom/transsion/camera/app/common/mode/VideoState;)V

    const-string p0, "lily [init]--"

    .line 97
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public leave(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->shouldConsumerStopCommand()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x5

    .line 431
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->sendMessage(I)V

    return p1
.end method

.method public modePause()V
    .locals 1

    const/4 v0, 0x0

    .line 422
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mIsModeResumed:Z

    return-void
.end method

.method public modeResume()V
    .locals 1

    const/4 v0, 0x1

    .line 418
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mIsModeResumed:Z

    return-void
.end method

.method public pauseResume()V
    .locals 1

    const/4 v0, 0x1

    .line 437
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->sendMessage(I)V

    return-void
.end method

.method public setDataBufferRecorderCallback(Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mDataBufferRecorderCallback:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 408
    iput p1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mOrientation:I

    return-void
.end method

.method public startStop(Landroid/util/Size;)V
    .locals 2

    .line 399
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 400
    iput v1, v0, Landroid/os/Message;->what:I

    .line 401
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 402
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public storageUnmounted()V
    .locals 1

    const/4 v0, 0x2

    .line 445
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->sendMessage(I)V

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoHandle:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$VideoHandle;

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "lily [unInit]++"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoHandle:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$VideoHandle;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 104
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoHandle:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$VideoHandle;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    .line 105
    iput-object v2, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mVideoHandle:Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$VideoHandle;

    const-string p0, "lily [unInit]--"

    .line 106
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateMuteRecoder(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mIsMuteRecoder:Z

    return-void
.end method

.method public updateStorageOperator(Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;->mStorageOperator:Lcom/transsion/camera/app/common/storage/IStorage$IStorageOperator;

    return-void
.end method
