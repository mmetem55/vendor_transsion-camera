.class public Lcom/transsion/voicecamera/sdk/AudioRecordHandler;
.super Lcom/transsion/voicecamera/sdk/recorder/RecordListener;
.source "AudioRecordHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VCSDK-AudioRecordHandler"


# instance fields
.field private isSavingData:Z

.field private mBufferedOutputStream:Ljava/io/BufferedOutputStream;

.field private mVADThreadCallBack:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

.field private pcmFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/transsion/voicecamera/sdk/recorder/RecordListener;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->mVADThreadCallBack:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    return-void
.end method

.method public static floatArrayToByteArray([F)[B
    .locals 2

    .line 53
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 55
    invoke-virtual {v1, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 56
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private generateFileName()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMddHHmmss"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getASRBufferOutStream()Ljava/io/BufferedOutputStream;
    .locals 5

    const/4 v0, 0x0

    .line 61
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/transsion/voicecamera/sdk/TransVCamera;->getConfig()Lcom/transsion/voicecamera/sdk/TransVCConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/voicecamera/sdk/TransVCConfig;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump_data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->generateFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->pcmFile:Ljava/io/File;

    .line 62
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "VCSDK-AudioRecordHandler"

    if-nez v1, :cond_0

    .line 63
    :try_start_1
    iget-object v1, p0, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->pcmFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to create parent dirs: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->pcmFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->pcmFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->pcmFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to create PCM data file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->pcmFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 76
    :cond_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->pcmFile:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v0
.end method

.method private stopSaveData()V
    .locals 5

    .line 90
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 92
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 93
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->pcmFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->generateFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".pcm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "VCSDK-AudioRecordHandler"

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rename file to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->pcmFile:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 97
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :goto_0
    iput-object v1, p0, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    goto :goto_2

    :goto_1
    iput-object v1, p0, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    .line 100
    throw v0

    :cond_0
    :goto_2
    return-void
.end method


# virtual methods
.method public onRecordData([FI)V
    .locals 2

    .line 30
    iget-boolean v0, p0, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->isSavingData:Z

    const-string v1, "VCSDK-AudioRecordHandler"

    if-nez v0, :cond_1

    invoke-static {}, Lcom/transsion/voicecamera/sdk/TransVCamera;->isSaveAudioData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    if-nez v0, :cond_0

    .line 32
    invoke-direct {p0}, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->getASRBufferOutStream()Ljava/io/BufferedOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    :cond_0
    const-string v0, "start save audio data"

    .line 34
    invoke-static {v1, v0}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->isSavingData:Z

    .line 37
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->isSavingData:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/transsion/voicecamera/sdk/TransVCamera;->isSaveAudioData()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "stop save audio data"

    .line 38
    invoke-static {v1, v0}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->isSavingData:Z

    .line 40
    invoke-direct {p0}, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->stopSaveData()V

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->mBufferedOutputStream:Ljava/io/BufferedOutputStream;

    if-eqz v0, :cond_3

    .line 44
    :try_start_0
    invoke-static {p1}, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->floatArrayToByteArray([F)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 49
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->mVADThreadCallBack:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->storeData([FI)V

    return-void
.end method

.method public onRecordEnd()V
    .locals 2

    const-string v0, "VCSDK-AudioRecordHandler"

    const-string v1, "onRecordEnd"

    .line 117
    invoke-static {v0, v1}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->mVADThreadCallBack:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    invoke-virtual {v0}, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->recorderEnd()V

    .line 119
    invoke-direct {p0}, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->stopSaveData()V

    return-void
.end method

.method public onRecordError(I)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->mVADThreadCallBack:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    invoke-virtual {p0, p1}, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->sendErrorStatus(I)V

    return-void
.end method

.method public onRecordStart()V
    .locals 2

    const-string v0, "VCSDK-AudioRecordHandler"

    const-string v1, "onRecordStart"

    .line 111
    invoke-static {v0, v1}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/AudioRecordHandler;->mVADThreadCallBack:Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->onReady(Ljava/lang/String;)V

    return-void
.end method
