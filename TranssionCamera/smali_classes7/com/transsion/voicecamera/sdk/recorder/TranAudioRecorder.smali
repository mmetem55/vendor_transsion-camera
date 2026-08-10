.class public Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;
.super Ljava/lang/Object;
.source "TranAudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1180

.field protected static final DEFAULT_TIMER_INTERVAL:I = 0x46

.field public static final TAG:Ljava/lang/String; = "VCSDK-AudioRecorder"


# instance fields
.field private mAudioChannels:I

.field private mAudioFormat:I

.field private mAudioSource:I

.field protected mRecordListener:Lcom/transsion/voicecamera/sdk/recorder/RecordListener;

.field private mSampleRate:I

.field private readThread:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    .line 36
    invoke-direct {p0, v0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mRecordListener:Lcom/transsion/voicecamera/sdk/recorder/RecordListener;

    const/16 v0, 0x3e80

    .line 21
    iput v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mSampleRate:I

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mAudioSource:I

    const/4 v0, 0x4

    .line 26
    iput v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mAudioFormat:I

    .line 47
    iput p1, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mAudioChannels:I

    return-void
.end method

.method private PCMThreadStart()V
    .locals 2

    .line 89
    new-instance v0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;

    invoke-direct {v0, p0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;-><init>(Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;)V

    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->readThread:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;

    const/16 v1, 0xa

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 91
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->readThread:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;

    invoke-virtual {v0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->startRecording()V

    .line 92
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->readThread:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private PCMThreadStop()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->readThread:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;

    if-eqz v0, :cond_1

    .line 97
    sget-boolean v0, Lcom/transsion/voicecamera/sdk/utils/DebugMode;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VCSDK-AudioRecorder"

    const-string v1, "PCMReadThread stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->readThread:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;

    invoke-virtual {v0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->stopRecording()V

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->readThread:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mSampleRate:I

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mAudioChannels:I

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mAudioFormat:I

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mAudioSource:I

    return p0
.end method


# virtual methods
.method public isRecording()Z
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->readThread:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->recorderStatus()Z

    move-result p0

    return p0
.end method

.method public releaseRecorder()V
    .locals 2

    .line 122
    sget-boolean v0, Lcom/transsion/voicecamera/sdk/utils/DebugMode;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VCSDK-AudioRecorder"

    const-string v1, "releaseRecorder func"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->stopRecording()V

    :cond_1
    return-void
.end method

.method public removeRecordListener()V
    .locals 1

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mRecordListener:Lcom/transsion/voicecamera/sdk/recorder/RecordListener;

    return-void
.end method

.method public setRecordListener(Lcom/transsion/voicecamera/sdk/recorder/RecordListener;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mRecordListener:Lcom/transsion/voicecamera/sdk/recorder/RecordListener;

    return-void
.end method

.method public startRecording()V
    .locals 2

    .line 104
    sget-boolean v0, Lcom/transsion/voicecamera/sdk/utils/DebugMode;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VCSDK-AudioRecorder"

    const-string v1, "startRecording begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->PCMThreadStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mRecordListener:Lcom/transsion/voicecamera/sdk/recorder/RecordListener;

    if-eqz v0, :cond_1

    .line 111
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mRecordListener:Lcom/transsion/voicecamera/sdk/recorder/RecordListener;

    const v0, 0xc3501

    invoke-virtual {p0, v0}, Lcom/transsion/voicecamera/sdk/recorder/RecordListener;->onRecordError(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopRecording()V
    .locals 2

    .line 117
    sget-boolean v0, Lcom/transsion/voicecamera/sdk/utils/DebugMode;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VCSDK-AudioRecorder"

    const-string v1, "stopRecording func"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->PCMThreadStop()V

    return-void
.end method
