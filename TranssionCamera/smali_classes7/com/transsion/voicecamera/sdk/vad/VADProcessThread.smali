.class public Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;
.super Ljava/lang/Thread;
.source "VADProcessThread.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VCSDK-VADThread"

.field private static final THREAD_STATE_CREATE:I = 0x0

.field private static final THREAD_STATE_EXIT:I = 0x4

.field private static final THREAD_STATE_RUN:I = 0x3

.field private static final THREAD_STATE_START:I = 0x1

.field private static final THREAD_STATE_WAIT:I = 0x2

.field public static final VAD_PROCESS_LENGTH:I = 0x7a

.field public static final VAD_PROCESS_LENGTH_IN_BYTE:I = 0x1e80

.field public static final VAD_PROCESS_LENGTH_IN_FLOAT:I = 0x7a0

.field public static final VAD_SLIDE_LENGTH:I = 0x64

.field public static final VAD_SLIDE_LENGTH_IN_BYTE:I = 0x1900

.field public static final VAD_SLIDE_LENGTH_IN_FLOAT:I = 0x640


# instance fields
.field private mAudioCache:Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;

.field private mAudioCacheForOut:Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;

.field private mThreadState:I

.field private mVadResultListener:Lcom/transsion/voicecamera/sdk/vad/VADResultListener;

.field private threadLoop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mAudioCache:Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;

    .line 37
    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mAudioCacheForOut:Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;

    .line 41
    iput-object v0, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mVadResultListener:Lcom/transsion/voicecamera/sdk/vad/VADResultListener;

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mThreadState:I

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->threadLoop:Z

    return-void
.end method

.method public static byteArrayToFloatArray([B)[F
    .locals 1

    .line 250
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 251
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    .line 252
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    new-array v0, v0, [F

    .line 253
    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public static floatArrayToByteArray([F)[B
    .locals 2

    .line 243
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    .line 245
    invoke-virtual {v1, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 246
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public deInit()V
    .locals 7

    .line 67
    const-class v0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    monitor-enter v0

    .line 68
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 69
    :try_start_1
    iget v1, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mThreadState:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    if-ne v1, v2, :cond_1

    .line 71
    :cond_0
    iput-boolean v3, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->threadLoop:Z

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 74
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    :goto_0
    :try_start_2
    iget v1, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mThreadState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v5, 0x4

    if-eq v1, v5, :cond_4

    const-wide/16 v5, 0x5

    .line 81
    :try_start_3
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 82
    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 83
    :try_start_4
    iget v1, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mThreadState:I

    if-eq v1, v4, :cond_2

    if-ne v1, v2, :cond_3

    .line 85
    :cond_2
    iput-boolean v3, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->threadLoop:Z

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 88
    :cond_3
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v1, "VCSDK-VADThread"

    const-string v5, "deInit, sleep 5ms, waiting for vad thread exiting"

    .line 89
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 88
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_0
    move-exception v1

    .line 91
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    const-string v1, "VCSDK-VADThread"

    const-string v2, "deInit exit after thread exit!"

    .line 94
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 99
    iput-object v1, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mAudioCache:Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;

    .line 100
    iput-object v1, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mAudioCacheForOut:Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;

    .line 101
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    return-void

    :catchall_1
    move-exception v1

    .line 74
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v1

    :catchall_2
    move-exception p0

    .line 101
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw p0
.end method

.method public init()V
    .locals 3

    .line 55
    const-class v0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;

    monitor-enter v0

    .line 56
    :try_start_0
    new-instance v1, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;

    const v2, 0xea600

    invoke-direct {v1, v2}, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mAudioCache:Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;

    .line 57
    invoke-virtual {v1}, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->clear()V

    .line 58
    new-instance v1, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;

    invoke-direct {v1, v2}, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;-><init>(I)V

    iput-object v1, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mAudioCacheForOut:Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;

    .line 59
    invoke-virtual {v1}, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->clear()V

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->startThread()V

    .line 63
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onReady(Ljava/lang/String;)V
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mVadResultListener:Lcom/transsion/voicecamera/sdk/vad/VADResultListener;

    if-eqz p0, :cond_0

    .line 139
    invoke-interface {p0, p1}, Lcom/transsion/voicecamera/sdk/vad/VADResultListener;->onReady(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public recorderEnd()V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mVadResultListener:Lcom/transsion/voicecamera/sdk/vad/VADResultListener;

    if-eqz p0, :cond_0

    .line 154
    invoke-interface {p0}, Lcom/transsion/voicecamera/sdk/vad/VADResultListener;->onExit()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 15

    const-string v0, "VCSDK-VADThread"

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VAD Thread start, tid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 160
    iput v0, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mThreadState:I

    .line 162
    sget-wide v1, Lcom/transsion/voicecamera/sdk/vad/VADNative;->vadPointer:J

    invoke-static {}, Lcom/transsion/voicecamera/sdk/TransVCamera;->getConfig()Lcom/transsion/voicecamera/sdk/TransVCConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/voicecamera/sdk/TransVCConfig;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x100

    invoke-static {v1, v2, v4, v3}, Lcom/transsion/voicecamera/sdk/vad/VADNative;->vad_init(JILjava/lang/String;)I

    move-result v1

    int-to-long v1, v1

    const-string v3, "VCSDK-VADThread"

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vad_init:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    const/16 v0, 0xc9

    .line 166
    invoke-virtual {p0, v0}, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->sendErrorStatus(I)V

    .line 167
    iput v2, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mThreadState:I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 175
    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v3, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mAudioCache:Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;

    invoke-virtual {v3}, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->getLength()I

    move-result v3

    const/16 v4, 0x640

    const/16 v5, 0x7a0

    if-lt v3, v5, :cond_1

    .line 182
    iget-object v1, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mAudioCache:Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;

    invoke-virtual {v1, v5}, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->getAudioWithoutConsume(I)[F

    move-result-object v1

    .line 183
    iget-object v3, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mAudioCache:Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;

    invoke-virtual {v3, v4}, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->getAudioBuffer(I)[F

    move-result-object v3

    .line 184
    iget-object v5, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mAudioCacheForOut:Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;

    invoke-virtual {v5, v3}, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->add([F)I

    .line 186
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x2

    if-nez v1, :cond_2

    .line 190
    iput v3, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mThreadState:I

    .line 192
    monitor-enter p0

    .line 194
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 196
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 198
    :goto_0
    monitor-exit p0

    goto/16 :goto_4

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    const/4 v5, 0x3

    .line 200
    iput v5, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mThreadState:I

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 202
    sget-wide v8, Lcom/transsion/voicecamera/sdk/vad/VADNative;->vadPointer:J

    const/16 v10, 0x3e80

    invoke-static {v8, v9, v10, v1}, Lcom/transsion/voicecamera/sdk/vad/VADNative;->vad_process(JI[F)[I

    move-result-object v1

    if-eqz v1, :cond_4

    .line 207
    array-length v8, v1

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    move v9, v8

    .line 208
    :goto_2
    array-length v10, v1

    div-int/2addr v10, v2

    if-ge v9, v10, :cond_5

    .line 209
    new-instance v10, Lcom/transsion/voicecamera/sdk/vad/VADResultFrame;

    invoke-direct {v10}, Lcom/transsion/voicecamera/sdk/vad/VADResultFrame;-><init>()V

    new-array v11, v2, [I

    .line 210
    iput-object v11, v10, Lcom/transsion/voicecamera/sdk/vad/VADResultFrame;->vadRes:[I

    mul-int/lit8 v12, v9, 0x4

    .line 211
    aget v13, v1, v12

    aput v13, v11, v8

    add-int/lit8 v13, v12, 0x1

    .line 212
    aget v13, v1, v13

    aput v13, v11, v0

    add-int/lit8 v13, v12, 0x2

    .line 213
    aget v13, v1, v13

    aput v13, v11, v3

    add-int/2addr v12, v5

    .line 214
    aget v12, v1, v12

    aput v12, v11, v5

    const-string v11, "VCSDK-VADThread"

    .line 215
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "vad_process:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Lcom/transsion/voicecamera/sdk/vad/VADResultFrame;->vadRes:[I

    invoke-static {v13}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", time="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v6

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v11, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mAudioCacheForOut:Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;

    invoke-virtual {v11, v4}, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->getAudioBuffer(I)[F

    move-result-object v11

    iput-object v11, v10, Lcom/transsion/voicecamera/sdk/vad/VADResultFrame;->floatPcm:[F

    .line 221
    iget-object v11, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mVadResultListener:Lcom/transsion/voicecamera/sdk/vad/VADResultListener;

    if-eqz v11, :cond_3

    .line 223
    :try_start_3
    invoke-interface {v11, v10}, Lcom/transsion/voicecamera/sdk/vad/VADResultListener;->onDataFrame(Lcom/transsion/voicecamera/sdk/vad/VADResultFrame;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v10

    .line 225
    invoke-virtual {v10}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_3
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    const-string v1, "VCSDK-VADThread"

    const-string v3, "vad_process null!"

    .line 231
    invoke-static {v1, v3}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_5
    :goto_4
    iget-boolean v1, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->threadLoop:Z

    if-nez v1, :cond_0

    .line 236
    sget-wide v0, Lcom/transsion/voicecamera/sdk/vad/VADNative;->vadPointer:J

    invoke-static {v0, v1}, Lcom/transsion/voicecamera/sdk/vad/VADNative;->vad_free(J)I

    .line 238
    iput v2, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mThreadState:I

    return-void

    :catchall_1
    move-exception v0

    .line 186
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public sendErrorStatus(I)V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mVadResultListener:Lcom/transsion/voicecamera/sdk/vad/VADResultListener;

    if-eqz p0, :cond_0

    .line 146
    invoke-interface {p0, p1}, Lcom/transsion/voicecamera/sdk/vad/VADResultListener;->onError(I)V

    :cond_0
    return-void
.end method

.method public setVadResultListener(Lcom/transsion/voicecamera/sdk/vad/VADResultListener;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mVadResultListener:Lcom/transsion/voicecamera/sdk/vad/VADResultListener;

    return-void
.end method

.method public startThread()V
    .locals 1

    .line 105
    iget v0, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mThreadState:I

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public storeData([FI)V
    .locals 5

    .line 113
    iget-object v0, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mAudioCache:Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->getLength()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    const-string v2, "VCSDK-VADThread"

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new record audio data len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", cached:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 121
    monitor-enter p0

    .line 123
    :try_start_0
    iget-object p2, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mAudioCache:Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;

    if-eqz p2, :cond_1

    .line 124
    invoke-virtual {p2, p1}, Lcom/transsion/voicecamera/sdk/utils/FloatAudioCache;->add([F)I

    .line 126
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 129
    iget p1, p0, Lcom/transsion/voicecamera/sdk/vad/VADProcessThread;->mThreadState:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 130
    monitor-enter p0

    .line 131
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 132
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 126
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_2
    :goto_1
    return-void
.end method
