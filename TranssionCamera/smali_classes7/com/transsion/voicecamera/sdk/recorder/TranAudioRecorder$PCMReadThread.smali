.class Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;
.super Ljava/lang/Thread;
.source "TranAudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PCMReadThread"
.end annotation


# instance fields
.field private isRecording:Z

.field protected mBuffer:[F

.field private mRecorder:Landroid/media/AudioRecord;

.field final synthetic this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;


# direct methods
.method public constructor <init>(Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    const-string p1, "PCMReadThread"

    .line 193
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 147
    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    .line 148
    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mBuffer:[F

    const/4 p1, 0x0

    .line 194
    iput-boolean p1, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->isRecording:Z

    const-string p0, "VCSDK-AudioRecorder"

    const-string p1, "PCMReadThread constructor"

    .line 195
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createAudioRecorder()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    invoke-static {v0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->access$000(Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;)I

    move-result v0

    iget-object v1, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    invoke-static {v1}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->access$100(Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    invoke-static {v2}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->access$200(Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    const/16 v1, 0x1180

    if-ge v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 161
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio recorder buffer size to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "VCSDK-AudioRecorder"

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 166
    :goto_1
    new-instance v9, Landroid/media/AudioRecord;

    iget-object v2, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    invoke-static {v2}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->access$300(Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;)I

    move-result v3

    iget-object v2, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    invoke-static {v2}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->access$000(Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;)I

    move-result v4

    iget-object v2, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    invoke-static {v2}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->access$100(Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;)I

    move-result v5

    iget-object v2, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    invoke-static {v2}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->access$200(Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;)I

    move-result v6

    move-object v2, v9

    move v7, v0

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v9, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    .line 167
    invoke-virtual {v9}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create AudioRecord error"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v4}, Landroid/media/AudioRecord;->getState()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v2, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    const/4 v2, 0x0

    .line 172
    iput-object v2, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    add-int/2addr v1, v3

    const/4 v2, 0x5

    if-ge v2, v1, :cond_1

    const-string v1, "failed to create AudioRecord"

    .line 176
    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const-wide/16 v2, 0x46

    .line 179
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    .line 186
    :cond_2
    :goto_2
    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mBuffer:[F

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create AudioRecord ok buffer size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mBuffer:[F

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " audioSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    .line 188
    invoke-static {v1}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->access$300(Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    .line 189
    invoke-static {p0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->access$000(Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 187
    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onRecordCallback([FI)V
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mRecordListener:Lcom/transsion/voicecamera/sdk/recorder/RecordListener;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/voicecamera/sdk/recorder/RecordListener;->onRecordData([FI)V

    return-void
.end method

.method public recorderStatus()Z
    .locals 0

    .line 151
    iget-boolean p0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->isRecording:Z

    return p0
.end method

.method public run()V
    .locals 7

    .line 217
    sget-boolean v0, Lcom/transsion/voicecamera/sdk/utils/DebugMode;->DEBUG:Z

    const-string v1, "VCSDK-AudioRecorder"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PCMReadThread start, tid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    const v2, 0xc3501

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 219
    invoke-direct {p0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->createAudioRecorder()V

    .line 220
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    if-nez v0, :cond_2

    const-string v0, "fatal error, audio recorder is null"

    .line 221
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    iget-object v0, v0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mRecordListener:Lcom/transsion/voicecamera/sdk/recorder/RecordListener;

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {v0, v2}, Lcom/transsion/voicecamera/sdk/recorder/RecordListener;->onRecordError(I)V

    .line 225
    :cond_1
    iput-boolean v3, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->isRecording:Z

    return-void

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    const-string v0, "startRecording is RECORDSTATE_RECORDING"

    .line 230
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iput-boolean v3, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->isRecording:Z

    return-void

    .line 234
    :cond_3
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 235
    iget-boolean v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->isRecording:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    iget-object v0, v0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mRecordListener:Lcom/transsion/voicecamera/sdk/recorder/RecordListener;

    if-eqz v0, :cond_4

    .line 236
    invoke-virtual {v0}, Lcom/transsion/voicecamera/sdk/recorder/RecordListener;->onRecordStart()V

    .line 238
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->isRecording:Z

    if-eqz v0, :cond_7

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    iget-object v0, v0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mRecordListener:Lcom/transsion/voicecamera/sdk/recorder/RecordListener;

    if-eqz v0, :cond_6

    .line 241
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    iget-object v5, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mBuffer:[F

    array-length v6, v5

    invoke-virtual {v0, v5, v3, v6, v3}, Landroid/media/AudioRecord;->read([FIII)I

    move-result v0

    .line 242
    iget-boolean v5, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->isRecording:Z

    if-eqz v5, :cond_4

    if-lez v0, :cond_5

    .line 244
    iget-object v5, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mBuffer:[F

    invoke-virtual {p0, v5, v0}, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->onRecordCallback([FI)V

    goto :goto_0

    .line 246
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recording error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    iget-object v0, v0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mRecordListener:Lcom/transsion/voicecamera/sdk/recorder/RecordListener;

    invoke-virtual {v0, v2}, Lcom/transsion/voicecamera/sdk/recorder/RecordListener;->onRecordError(I)V

    goto :goto_1

    :cond_6
    const-string v0, "fatal error, RecordListener is null"

    .line 255
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 259
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 262
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    if-eqz v0, :cond_9

    iget-boolean v2, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->isRecording:Z

    if-nez v2, :cond_9

    .line 263
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 264
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 266
    :cond_8
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 267
    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->mRecorder:Landroid/media/AudioRecord;

    .line 269
    :cond_9
    iget-boolean v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->isRecording:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->this$0:Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;

    iget-object v0, v0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder;->mRecordListener:Lcom/transsion/voicecamera/sdk/recorder/RecordListener;

    if-eqz v0, :cond_a

    .line 270
    invoke-virtual {v0}, Lcom/transsion/voicecamera/sdk/recorder/RecordListener;->onRecordEnd()V

    .line 272
    :cond_a
    sget-boolean v0, Lcom/transsion/voicecamera/sdk/utils/DebugMode;->DEBUG:Z

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PCMReadThread exit, tid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public startRecording()V
    .locals 1

    .line 199
    monitor-enter p0

    const/4 v0, 0x1

    .line 200
    :try_start_0
    iput-boolean v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->isRecording:Z

    .line 201
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopRecording()V
    .locals 1

    .line 205
    monitor-enter p0

    const/4 v0, 0x0

    .line 206
    :try_start_0
    iput-boolean v0, p0, Lcom/transsion/voicecamera/sdk/recorder/TranAudioRecorder$PCMReadThread;->isRecording:Z

    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 208
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
