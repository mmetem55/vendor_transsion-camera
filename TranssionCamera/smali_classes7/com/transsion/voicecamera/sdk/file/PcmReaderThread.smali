.class public Lcom/transsion/voicecamera/sdk/file/PcmReaderThread;
.super Lcom/transsion/voicecamera/sdk/file/ReaderThread;
.source "PcmReaderThread.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VCSDK-PcmReader"


# instance fields
.field private volatile isReading:Z


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string v0, "VCSDK-PcmReaderThread"

    .line 25
    invoke-direct {p0, v0}, Lcom/transsion/voicecamera/sdk/file/ReaderThread;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->mSourceFile:Ljava/io/File;

    return-void
.end method

.method public static byteArrayToFloatArray([B)[F
    .locals 1

    .line 40
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    .line 42
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    new-array v0, v0, [F

    .line 43
    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/transsion/voicecamera/sdk/file/PcmReaderThread;->isReading:Z

    return-void
.end method

.method public init()V
    .locals 2

    const-string v0, "VCSDK-PcmReader"

    const-string v1, "thread start"

    .line 30
    invoke-static {v0, v1}, Lcom/transsion/voicecamera/sdk/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/transsion/voicecamera/sdk/file/PcmReaderThread;->isReading:Z

    .line 32
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 12

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 51
    :try_start_0
    iget-object v2, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->pcmReaderListener:Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;

    if-eqz v2, :cond_0

    .line 52
    iget-object v3, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->mSourceFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;->onFileLoaded(Ljava/lang/String;)V

    .line 54
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->mSourceFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x1180

    :try_start_1
    new-array v1, v1, [B

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xc8

    .line 59
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 60
    :cond_1
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-eq v5, v0, :cond_3

    iget-boolean v6, p0, Lcom/transsion/voicecamera/sdk/file/PcmReaderThread;->isReading:Z

    if-eqz v6, :cond_3

    .line 62
    iget-object v6, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->pcmReaderListener:Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;

    if-eqz v6, :cond_1

    .line 63
    invoke-static {v1}, Lcom/transsion/voicecamera/sdk/file/PcmReaderThread;->byteArrayToFloatArray([B)[F

    move-result-object v6

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    const-wide/16 v9, 0x14

    cmp-long v7, v7, v9

    if-gez v7, :cond_2

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    sub-long/2addr v9, v7

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V

    .line 67
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 68
    iget-object v7, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->pcmReaderListener:Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;

    div-int/lit8 v5, v5, 0x4

    invoke-interface {v7, v6, v5}, Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;->onReadData([FI)V

    goto :goto_0

    .line 71
    :cond_3
    iget-boolean v1, p0, Lcom/transsion/voicecamera/sdk/file/PcmReaderThread;->isReading:Z

    if-eqz v1, :cond_4

    .line 72
    iget-object v1, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->pcmReaderListener:Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;

    if-eqz v1, :cond_4

    .line 73
    invoke-interface {v1}, Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;->onReadEnd()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :cond_4
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v2

    .line 77
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    iget-object p0, p0, Lcom/transsion/voicecamera/sdk/file/ReaderThread;->pcmReaderListener:Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;

    if-eqz p0, :cond_5

    .line 79
    invoke-interface {p0, v0}, Lcom/transsion/voicecamera/sdk/file/PcmReaderListener;->onReadError(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    if-eqz v1, :cond_6

    .line 84
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 86
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_2
    return-void

    :goto_3
    if-eqz v1, :cond_7

    .line 84
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 89
    :cond_7
    :goto_4
    throw p0
.end method
