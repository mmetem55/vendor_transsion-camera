.class public Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;
.super Ljava/lang/Object;
.source "AudioRecordHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VCSDK-AudioRecordHelper"

.field public static final USE_CHANNEL_IN_MONO:I = 0x1

.field public static final USE_CHANNEL_IN_STEREO:I = 0x2

.field public static final USE_CHANNEL_IN_STEREO_BARGEIN:I = 0x3

.field private static volatile sInstance:Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;


# instance fields
.field private mRecorder:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    :try_start_0
    new-instance v0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    invoke-direct {v0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;-><init>()V

    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->mRecorder:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    :try_start_0
    new-instance v0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    invoke-direct {v0, p1}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->mRecorder:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 38
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;
    .locals 2

    .line 16
    sget-object v0, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->sInstance:Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    if-nez v0, :cond_1

    .line 17
    const-class v0, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->sInstance:Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    invoke-direct {v1}, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;-><init>()V

    sput-object v1, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->sInstance:Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    .line 21
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 23
    :cond_1
    :goto_0
    sget-object v0, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->sInstance:Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;

    return-object v0
.end method


# virtual methods
.method public registerRecordListener(Lcom/transsion/voicecamera/sdk/recorder/RecordListener;)V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->mRecorder:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    if-eqz p0, :cond_0

    .line 44
    invoke-virtual {p0, p1}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->setRecordListener(Lcom/transsion/voicecamera/sdk/recorder/RecordListener;)V

    :cond_0
    return-void
.end method

.method public releaseRecorder()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->mRecorder:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    if-eqz v0, :cond_0

    const-string v0, "VCSDK-AudioRecordHelper"

    const-string v1, "release recorder"

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->mRecorder:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    invoke-virtual {p0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->releaseRecorder()V

    :cond_0
    return-void
.end method

.method public startRecording()Z
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->mRecorder:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    const/4 v1, 0x0

    const-string v2, "VCSDK-AudioRecordHelper"

    if-nez v0, :cond_0

    const-string p0, "failed to start recording, recorder is null"

    .line 56
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 61
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "start record "

    .line 62
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->mRecorder:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    invoke-virtual {p0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->startRecording()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    const-string p0, "start record error"

    .line 67
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public stopRecording()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->mRecorder:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    if-eqz v0, :cond_0

    const-string v0, "VCSDK-AudioRecordHelper"

    const-string v1, "stop record "

    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->mRecorder:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    invoke-virtual {p0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->stopRecording()V

    :cond_0
    return-void
.end method

.method public unregisterRecordListener()V
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/recorder/AudioRecordHelper;->mRecorder:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    if-eqz p0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->removeRecordListener()V

    :cond_0
    return-void
.end method
