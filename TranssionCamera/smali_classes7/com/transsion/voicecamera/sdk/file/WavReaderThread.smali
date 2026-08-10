.class public Lcom/transsion/voicecamera/sdk/file/WavReaderThread;
.super Lcom/transsion/voicecamera/sdk/file/ReaderThread;
.source "WavReaderThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VCSDK-WavReader"


# instance fields
.field private volatile isReading:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string v0, "VCSDK-WavReaderThread"

    .line 22
    invoke-direct {p0, v0}, Lcom/transsion/voicecamera/sdk/file/ReaderThread;-><init>(Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->mSourceFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public byteToFloat([B)[F
    .locals 3

    .line 37
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 39
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 41
    array-length p1, p1

    div-int/lit8 p1, p1, 0x2

    new-array p1, p1, [F

    const/4 v0, 0x0

    .line 43
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_0

    .line 44
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    int-to-float v1, v1

    const v2, 0x46fffe00    # 32767.0f

    div-float/2addr v1, v2

    .line 46
    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public deInit()V
    .locals 1

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/transsion/voicecamera/sdk/file/WavReaderThread;->isReading:Z

    return-void
.end method

.method public init()V
    .locals 2

    const-string v0, "VCSDK-WavReader"

    const-string v1, "thread start"

    .line 27
    invoke-static {v0, v1}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/transsion/voicecamera/sdk/file/WavReaderThread;->isReading:Z

    .line 29
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 11

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 56
    :try_start_0
    iget-object v2, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->pcmReaderListener:Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;

    if-eqz v2, :cond_0

    .line 57
    iget-object v3, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->mSourceFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;->onFileLoaded(Ljava/lang/String;)V

    .line 59
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->mSourceFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 v1, 0x8c0

    :try_start_1
    new-array v1, v1, [B

    const-wide/16 v3, 0x0

    .line 64
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-wide/16 v5, 0xc8

    .line 65
    :try_start_2
    invoke-virtual {p0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 66
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    :try_start_3
    iget-object v5, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->mSourceFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    const-string v7, "VCSDK-WavReader"

    .line 68
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File.length="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v5, 0x2c

    .line 69
    invoke-virtual {v2, v5, v6}, Ljava/io/FileInputStream;->skip(J)J

    .line 70
    :cond_1
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-eq v5, v0, :cond_3

    iget-boolean v5, p0, Lcom/transsion/voicecamera/sdk/file/WavReaderThread;->isReading:Z

    if-eqz v5, :cond_3

    .line 72
    iget-object v5, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->pcmReaderListener:Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;

    if-eqz v5, :cond_1

    .line 73
    invoke-virtual {p0, v1}, Lcom/transsion/voicecamera/sdk/file/WavReaderThread;->byteToFloat([B)[F

    move-result-object v5

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    const-wide/16 v8, 0x14

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 75
    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 76
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    sub-long/2addr v8, v6

    invoke-virtual {p0, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 77
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    .line 79
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 80
    iget-object v6, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->pcmReaderListener:Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;

    array-length v7, v5

    invoke-interface {v6, v5, v7}, Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;->onReadData([FI)V

    goto :goto_0

    .line 83
    :cond_3
    iget-boolean v1, p0, Lcom/transsion/voicecamera/sdk/file/WavReaderThread;->isReading:Z

    if-eqz v1, :cond_4

    .line 84
    iget-object v1, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->pcmReaderListener:Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;

    if-eqz v1, :cond_4

    .line 85
    invoke-interface {v1}, Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;->onReadEnd()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 96
    :cond_4
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catchall_1
    move-exception v1

    .line 66
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p0

    move-object v1, v2

    goto :goto_4

    :catch_0
    move-exception v1

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_2

    :catchall_3
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception v2

    .line 89
    :goto_2
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->pcmReaderListener:Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;

    if-eqz p0, :cond_5

    .line 91
    invoke-interface {p0, v0}, Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;->onReadError(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_5
    if-eqz v1, :cond_6

    .line 96
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_3
    return-void

    :goto_4
    if-eqz v1, :cond_7

    .line 96
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 101
    :cond_7
    :goto_5
    throw p0
.end method
