.class public Lcom/cdv/io/NvAndroidVideoFileReaderSW;
.super Ljava/lang/Object;
.source "NvAndroidVideoFileReaderSW.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cdv/io/NvAndroidVideoFileReaderSW$CueVideoFrameInfo;
    }
.end annotation


# static fields
.field private static final ERROR_EOF:I = 0x1

.field private static final ERROR_FAIL:I = 0x2

.field private static final ERROR_INTERRUPTED_DECODING:I = 0x3

.field private static final ERROR_MEDIA_EXTRACTOR_PRELOAD_FAILED:I = 0x4

.field private static final ERROR_OK:I = 0x0

.field private static final SKIP_MODE_ALL_NONREFERENCE:I = 0x1

.field private static final SKIP_MODE_BELOW_TIMESTAMP:I = 0x2

.field private static final SKIP_MODE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NvAndroidVideoFileReaderSW"

.field private static final m_verbose:Z = true


# instance fields
.field private m_actualDuration:J

.field private m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private m_cleanupHandler:Landroid/os/Handler;

.field private m_context:Landroid/content/Context;

.field private m_contiuousDecodingThreshold:J

.field private m_decoder:Landroid/media/MediaCodec;

.field m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

.field m_decoderOutputBuffers:[Ljava/nio/ByteBuffer;

.field private m_decoderSetupFailed:Z

.field private m_decoderStarted:Z

.field private m_decoderUseSurface:Z

.field private m_duration:J

.field private m_extractor:Landroid/media/MediaExtractor;

.field private m_extractorInOriginalState:Z

.field private m_format:Landroid/media/MediaFormat;

.field private m_frameSyncObject:Ljava/lang/Object;

.field private m_handler:Landroid/os/Handler;

.field private m_imageReader:Landroid/media/ImageReader;

.field private m_imageReady:Z

.field private m_inputBufferQueued:Z

.field private m_interruptionChecker:Lcom/cdv/utils/NvAndroidInterruptionChecker;

.field private m_lastSeekActualTimestamp:J

.field private m_lastSeekTimestamp:J

.field private m_listPlaybackCueFrame:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cdv/io/NvAndroidVideoFileReaderSW$CueVideoFrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_onlyDecodeKeyFrame:Z

.field private m_owner:J

.field private m_pendingInputFrameCount:I

.field private m_preloadedTimestamp:J

.field private m_sawInputEOS:Z

.field private m_sawOutputEOS:Z

.field private m_skipNonReferenceFrameWhenPlayback:Z

.field private m_timestampOfLastCopiedFrame:J

.field private m_timestampOfLastDecodedFrame:J

.field private m_videoColorTransferCharacteristic:I

.field private m_videoFilePath:Ljava/lang/String;

.field private m_videoHDRMaxLuminance:I

.field private m_videoTrackIndex:I


# direct methods
.method constructor <init>(JLandroid/os/Handler;Landroid/os/Handler;)V
    .locals 4

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    const/4 v1, -0x1

    .line 62
    iput v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoTrackIndex:I

    .line 63
    iput-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    const-wide/16 v1, 0x0

    .line 64
    iput-wide v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_duration:J

    .line 65
    iput-wide v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_actualDuration:J

    const/4 v1, 0x1

    .line 66
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractorInOriginalState:Z

    .line 68
    iput-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 70
    iput-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    .line 71
    iput-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_imageReader:Landroid/media/ImageReader;

    const/4 v1, 0x0

    .line 72
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderUseSurface:Z

    .line 73
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_frameSyncObject:Ljava/lang/Object;

    .line 74
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_imageReady:Z

    .line 75
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderSetupFailed:Z

    .line 76
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderStarted:Z

    .line 77
    iput-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 78
    iput-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderOutputBuffers:[Ljava/nio/ByteBuffer;

    const-wide/high16 v2, -0x8000000000000000L

    .line 80
    iput-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastDecodedFrame:J

    .line 81
    iput-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastCopiedFrame:J

    .line 82
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_inputBufferQueued:Z

    .line 83
    iput v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_pendingInputFrameCount:I

    .line 84
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawInputEOS:Z

    .line 85
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawOutputEOS:Z

    .line 87
    iput-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_preloadedTimestamp:J

    .line 88
    iput-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_lastSeekTimestamp:J

    .line 89
    iput-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_lastSeekActualTimestamp:J

    .line 90
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_onlyDecodeKeyFrame:Z

    const-wide/32 v2, 0xf4240

    .line 92
    iput-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_contiuousDecodingThreshold:J

    .line 96
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_skipNonReferenceFrameWhenPlayback:Z

    .line 97
    iput v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoColorTransferCharacteristic:I

    .line 98
    iput v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoHDRMaxLuminance:I

    .line 110
    iput-wide p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_owner:J

    .line 111
    iput-object p3, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_handler:Landroid/os/Handler;

    .line 112
    iput-object p4, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_cleanupHandler:Landroid/os/Handler;

    .line 113
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method

.method private AwaitNewImage()Landroid/media/Image;
    .locals 5

    .line 988
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_frameSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 989
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_imageReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 993
    :try_start_1
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_frameSyncObject:Ljava/lang/Object;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 994
    iget-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_imageReady:Z

    if-nez v1, :cond_0

    const-string p0, "NvAndroidVideoFileReaderSW"

    const-string v1, "ImageReader wait timed out!"

    .line 996
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 997
    :try_start_2
    monitor-exit v0

    return-object v2

    :catch_0
    move-exception p0

    const-string v1, "NvAndroidVideoFileReaderSW"

    .line 1001
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1003
    monitor-exit v0

    return-object v2

    :cond_1
    const/4 v1, 0x0

    .line 1007
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_imageReady:Z

    .line 1008
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1011
    :try_start_3
    iget-object p0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_imageReader:Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    const-string v0, "NvAndroidVideoFileReaderSW"

    .line 1013
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2

    :catchall_0
    move-exception p0

    .line 1008
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method private CleanupDecoder(Z)V
    .locals 3

    .line 574
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderStarted:Z

    if-eqz v0, :cond_0

    .line 576
    :try_start_0
    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawInputEOS:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawOutputEOS:Z

    if-nez v0, :cond_0

    .line 580
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->DrainOutputBuffers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NvAndroidVideoFileReaderSW"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 589
    invoke-direct {p0, v0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->CleanupDecoderCore(Z)V

    goto :goto_1

    .line 593
    :cond_1
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_cleanupHandler:Landroid/os/Handler;

    new-instance v1, Lcom/cdv/io/NvAndroidVideoFileReaderSW$2;

    invoke-direct {v1, p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW$2;-><init>(Lcom/cdv/io/NvAndroidVideoFileReaderSW;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 601
    :goto_1
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->clearCueVideoFrameForPlayback()V

    const-wide/high16 v1, -0x8000000000000000L

    .line 603
    iput-wide v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastDecodedFrame:J

    .line 604
    iput-wide v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastCopiedFrame:J

    .line 605
    iput v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_pendingInputFrameCount:I

    .line 606
    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawInputEOS:Z

    .line 607
    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawOutputEOS:Z

    return-void
.end method

.method private CleanupDecoderCore(Z)V
    .locals 4

    .line 612
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 613
    iget-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderStarted:Z

    if-eqz v2, :cond_1

    .line 615
    :try_start_0
    iget-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_inputBufferQueued:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 617
    :try_start_1
    invoke-virtual {p1}, Landroid/media/MediaCodec;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 622
    :catch_0
    :try_start_2
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_inputBufferQueued:Z

    .line 625
    :cond_0
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NvAndroidVideoFileReaderSW"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 630
    :goto_0
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderStarted:Z

    .line 631
    iput-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 633
    :cond_1
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V

    .line 634
    iput-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    .line 637
    :cond_2
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_imageReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_3

    .line 638
    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    .line 639
    iput-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_imageReader:Landroid/media/ImageReader;

    .line 641
    :cond_3
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderUseSurface:Z

    return-void
.end method

.method private DecodeToFrame(JJI)I
    .locals 0

    .line 737
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->DoDecodeToFrame(JJI)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 739
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "NvAndroidVideoFileReaderSW"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    .line 742
    invoke-direct {p0, p1}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->CleanupDecoder(Z)V

    const/4 p0, 0x2

    return p0
.end method

.method private DoDecodeToFrame(JJI)I
    .locals 30

    move-object/from16 v0, p0

    move-wide/from16 v14, p1

    move/from16 v13, p5

    .line 751
    iget-object v1, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    array-length v1, v1

    const/4 v12, 0x3

    .line 752
    div-int/2addr v1, v12

    const/4 v11, 0x2

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v9, 0x0

    move v1, v9

    .line 756
    :goto_0
    iget-boolean v2, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawOutputEOS:Z

    const/4 v8, 0x1

    if-nez v2, :cond_22

    .line 759
    invoke-direct/range {p0 .. p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->isInterruptedDecoding()Z

    move-result v2

    if-eqz v2, :cond_0

    return v12

    .line 763
    :cond_0
    iget-boolean v2, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawInputEOS:Z

    if-nez v2, :cond_b

    .line 765
    iget-object v2, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    const-wide/16 v3, 0xfa0

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v2

    if-ltz v2, :cond_a

    .line 767
    iget-object v3, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v2

    .line 771
    :goto_1
    iget-object v4, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v3, v9}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v4

    if-gez v4, :cond_1

    .line 774
    iget-object v3, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x4

    move-object/from16 v18, v3

    move/from16 v19, v2

    invoke-virtual/range {v18 .. v24}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 775
    iput-boolean v8, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawInputEOS:Z

    const-string v2, "NvAndroidVideoFileReaderSW"

    const-string v3, "Sent input EOS"

    .line 777
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 779
    :cond_1
    iget-object v7, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v7

    iget v12, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoTrackIndex:I

    if-eq v7, v12, :cond_2

    const-string v7, "NvAndroidVideoFileReaderSW"

    .line 780
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WEIRD: got sample from track "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    .line 781
    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", expected "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoTrackIndex:I

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 780
    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_2
    iget-object v5, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v5

    .line 785
    iget-object v7, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v7

    and-int/2addr v7, v8

    if-eqz v7, :cond_3

    move v7, v8

    goto :goto_2

    :cond_3
    move v7, v9

    :goto_2
    if-ne v13, v8, :cond_4

    :goto_3
    move v12, v8

    goto :goto_4

    :cond_4
    if-ne v13, v11, :cond_5

    sub-long v18, v14, p3

    cmp-long v12, v5, v18

    if-gez v12, :cond_5

    goto :goto_3

    :cond_5
    move v12, v9

    :goto_4
    if-eqz v12, :cond_6

    .line 796
    invoke-direct {v0, v3}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->isNonReferenceFrame(Ljava/nio/ByteBuffer;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 797
    iget-object v4, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    .line 798
    iput-boolean v9, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractorInOriginalState:Z

    const-string v4, "NvAndroidVideoFileReaderSW"

    .line 800
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "skip non reference frame:"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " inputTime:"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    const/4 v12, 0x3

    goto/16 :goto_1

    .line 805
    :cond_6
    invoke-direct {v0, v5, v6, v7}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->canSkipFrameForCuePlayback(JZ)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 806
    iget-object v4, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->advance()Z

    .line 807
    iput-boolean v9, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractorInOriginalState:Z

    const/4 v4, 0x0

    .line 810
    iget-object v12, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7

    .line 811
    iget-object v4, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cdv/io/NvAndroidVideoFileReaderSW$CueVideoFrameInfo;

    :cond_7
    if-eqz v4, :cond_8

    .line 813
    iget-wide v11, v4, Lcom/cdv/io/NvAndroidVideoFileReaderSW$CueVideoFrameInfo;->cueVideoFrameTimeStamp:J

    sub-long v18, v11, v5

    const-wide/32 v20, 0x1e8480

    cmp-long v4, v18, v20

    if-lez v4, :cond_8

    .line 814
    invoke-direct {v0, v11, v12}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->SeekExtractor(J)I

    :cond_8
    const-string v4, "NvAndroidVideoFileReaderSW"

    .line 818
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "skip when cue inputTime:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " isKeyf:"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x2

    goto :goto_5

    .line 822
    :cond_9
    iget-object v3, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    const/16 v20, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, v3

    move/from16 v19, v2

    move/from16 v21, v4

    move-wide/from16 v22, v5

    invoke-virtual/range {v18 .. v24}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const-string v3, "NvAndroidVideoFileReaderSW"

    .line 824
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Submitted frame to decoder input buffer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", size="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iput-boolean v8, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_inputBufferQueued:Z

    .line 827
    iget v2, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_pendingInputFrameCount:I

    add-int/2addr v2, v8

    iput v2, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_pendingInputFrameCount:I

    const-string v2, "NvAndroidVideoFileReaderSW"

    .line 829
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pending input frame count increased: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_pendingInputFrameCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v2, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    .line 832
    iput-boolean v9, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractorInOriginalState:Z

    goto :goto_6

    :cond_a
    const-string v2, "NvAndroidVideoFileReaderSW"

    const-string v3, "Input buffer not available"

    .line 838
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_b
    :goto_6
    iget v2, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_pendingInputFrameCount:I

    if-gt v2, v10, :cond_d

    iget-boolean v2, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawInputEOS:Z

    if-eqz v2, :cond_c

    goto :goto_7

    :cond_c
    move v2, v9

    goto :goto_8

    :cond_d
    :goto_7
    const/16 v2, 0xfa0

    .line 853
    :goto_8
    iget-object v3, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    iget-object v4, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    int-to-long v5, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v11

    add-int/2addr v1, v8

    const/4 v2, -0x1

    if-ne v11, v2, :cond_e

    const-string v2, "NvAndroidVideoFileReaderSW"

    const-string v3, "No output from decoder available"

    .line 858
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_e
    const/4 v2, -0x3

    if-ne v11, v2, :cond_f

    const-string v2, "NvAndroidVideoFileReaderSW"

    const-string v3, "Decoder output buffers changed"

    .line 861
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object v2, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_9

    :cond_f
    const/4 v2, -0x2

    if-ne v11, v2, :cond_12

    .line 864
    iget-object v2, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    const-string v3, "color-transfer"

    .line 865
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "color-transfer"

    .line 866
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoColorTransferCharacteristic:I

    :cond_10
    const-string v3, "hdr-static-info"

    .line 869
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "hdr-static-info"

    .line 870
    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->extractHDRMaxLuminance(Ljava/nio/ByteBuffer;)I

    move-result v3

    iput v3, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoHDRMaxLuminance:I

    :cond_11
    const-string v3, "NvAndroidVideoFileReaderSW"

    .line 874
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decoder output format changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-direct {v0, v2}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->ParseMediaFormat(Landroid/media/MediaFormat;)V

    :goto_9
    move/from16 v22, v9

    move/from16 v23, v10

    const/16 v24, 0x2

    const/16 v25, 0x3

    goto/16 :goto_13

    :cond_12
    if-gez v11, :cond_13

    const-string v0, "NvAndroidVideoFileReaderSW"

    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x2

    return v12

    :cond_13
    const/4 v12, 0x2

    const-string v2, "NvAndroidVideoFileReaderSW"

    .line 881
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Surface decoder given buffer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v4, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")  (pts="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v2, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_14

    const-string v2, "NvAndroidVideoFileReaderSW"

    const-string v3, "Output EOS"

    .line 887
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iput-boolean v8, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawOutputEOS:Z

    .line 892
    :cond_14
    iget-object v2, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v3, :cond_19

    .line 896
    iget-wide v1, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v1, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastDecodedFrame:J

    .line 897
    iget v1, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_pendingInputFrameCount:I

    sub-int/2addr v1, v8

    iput v1, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_pendingInputFrameCount:I

    const-string v1, "NvAndroidVideoFileReaderSW"

    .line 899
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending input frame count decreased: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_pendingInputFrameCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, v14, v1

    if-eqz v1, :cond_18

    .line 902
    iget-wide v1, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastDecodedFrame:J

    sub-long v3, v14, p3

    cmp-long v3, v1, v3

    if-ltz v3, :cond_15

    move v3, v8

    goto :goto_a

    :cond_15
    move v3, v9

    :goto_a
    if-nez v3, :cond_16

    .line 903
    iget-wide v4, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_duration:J

    const-wide/32 v6, 0x186a0

    sub-long/2addr v4, v6

    cmp-long v1, v1, v4

    if-ltz v1, :cond_16

    move v1, v8

    move v3, v1

    goto :goto_b

    :cond_16
    move v1, v9

    .line 912
    :goto_b
    iget-boolean v2, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_onlyDecodeKeyFrame:Z

    move/from16 v20, v1

    if-eqz v2, :cond_17

    move v7, v8

    goto :goto_c

    :cond_17
    move v7, v3

    :goto_c
    move/from16 v19, v9

    goto :goto_d

    :cond_18
    move v7, v8

    move/from16 v19, v9

    move/from16 v20, v19

    goto :goto_d

    :cond_19
    move/from16 v19, v1

    move v7, v9

    move/from16 v20, v7

    .line 919
    :goto_d
    iget-boolean v1, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderUseSurface:Z

    if-nez v1, :cond_1b

    if-eqz v7, :cond_1a

    .line 921
    iget-wide v2, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_owner:J

    iget-object v1, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v4, v1, v11

    iget-object v1, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v12, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastDecodedFrame:J

    move-object/from16 v1, p0

    move/from16 v29, v7

    move-wide v7, v12

    invoke-direct/range {v1 .. v8}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->nativeCopyVideoFrame(JLjava/nio/ByteBuffer;IIJ)V

    .line 922
    iget-wide v1, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastDecodedFrame:J

    iput-wide v1, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastCopiedFrame:J

    goto :goto_e

    :cond_1a
    move/from16 v29, v7

    .line 925
    :goto_e
    iget-object v1, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v11, v9}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v28, v29

    goto/16 :goto_11

    :cond_1b
    move v1, v7

    if-eqz v1, :cond_1c

    .line 928
    iget-object v2, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_frameSyncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 930
    :try_start_0
    iput-boolean v9, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_imageReady:Z

    .line 931
    monitor-exit v2

    goto :goto_f

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 934
    :cond_1c
    :goto_f
    iget-object v2, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v11, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-eqz v1, :cond_1f

    const-string v2, "NvAndroidVideoFileReaderSW"

    const-string v3, "Rendering decoded frame to ImageReader."

    .line 937
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    invoke-direct/range {p0 .. p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->AwaitNewImage()Landroid/media/Image;

    move-result-object v21

    if-eqz v21, :cond_1e

    .line 941
    invoke-virtual/range {v21 .. v21}, Landroid/media/Image;->getWidth()I

    .line 942
    invoke-virtual/range {v21 .. v21}, Landroid/media/Image;->getHeight()I

    .line 945
    invoke-virtual/range {v21 .. v21}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v7

    .line 949
    invoke-virtual/range {v21 .. v21}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v13

    .line 950
    array-length v2, v13

    const/4 v12, 0x3

    if-ne v2, v12, :cond_1d

    .line 951
    iget-wide v2, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_owner:J

    iget v4, v7, Landroid/graphics/Rect;->left:I

    iget v5, v7, Landroid/graphics/Rect;->top:I

    iget v6, v7, Landroid/graphics/Rect;->right:I

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    aget-object v11, v13, v9

    .line 953
    invoke-virtual {v11}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    move/from16 v18, v8

    move-object v8, v11

    aget-object v11, v13, v9

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v11

    move/from16 v22, v9

    move v9, v11

    aget-object v11, v13, v22

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v11

    move/from16 v23, v10

    move v10, v11

    aget-object v11, v13, v18

    .line 954
    invoke-virtual {v11}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    const/16 v24, 0x2

    aget-object v16, v13, v18

    invoke-virtual/range {v16 .. v16}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v16

    move/from16 v25, v12

    move/from16 v12, v16

    aget-object v16, v13, v18

    invoke-virtual/range {v16 .. v16}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v16

    move-object/from16 v17, v13

    move/from16 v13, v16

    aget-object v16, v17, v24

    .line 955
    invoke-virtual/range {v16 .. v16}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v16

    move-object/from16 v14, v16

    aget-object v15, v17, v24

    invoke-virtual {v15}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v15

    aget-object v16, v17, v24

    invoke-virtual/range {v16 .. v16}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v16

    move/from16 v29, v1

    move-wide/from16 v26, v2

    iget-wide v1, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastDecodedFrame:J

    move-wide/from16 v17, v1

    move/from16 v28, v29

    move-object/from16 v1, p0

    move-wide/from16 v2, v26

    .line 951
    invoke-direct/range {v1 .. v18}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->nativeCopyVideoFrameFromYUV420ImagePlanes(JIIIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIJ)V

    .line 957
    iget-wide v1, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastDecodedFrame:J

    iput-wide v1, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastCopiedFrame:J

    goto :goto_10

    :cond_1d
    move/from16 v28, v1

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v25, v12

    const/16 v24, 0x2

    .line 960
    :goto_10
    invoke-virtual/range {v21 .. v21}, Landroid/media/Image;->close()V

    goto :goto_12

    :cond_1e
    const/16 v24, 0x2

    const-string v0, "NvAndroidVideoFileReaderSW"

    const-string v1, "Render decoded frame to ImageReader failed!"

    .line 962
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v24

    :cond_1f
    move/from16 v28, v1

    move/from16 v22, v9

    move/from16 v23, v10

    :goto_11
    const/16 v24, 0x2

    const/16 v25, 0x3

    :goto_12
    if-eqz v28, :cond_20

    if-nez v20, :cond_20

    return v22

    :cond_20
    move/from16 v1, v19

    :goto_13
    const/16 v2, 0x64

    if-le v1, v2, :cond_21

    const-string v0, "NvAndroidVideoFileReaderSW"

    const-string v1, "We have tried too many times and can\'t decode a frame!"

    .line 973
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v24

    :cond_21
    move-wide/from16 v14, p1

    move/from16 v13, p5

    move/from16 v9, v22

    move/from16 v10, v23

    move/from16 v11, v24

    move/from16 v12, v25

    goto/16 :goto_0

    :cond_22
    move/from16 v18, v8

    move/from16 v22, v9

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, p1, v1

    if-eqz v3, :cond_23

    .line 978
    iget-wide v3, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastCopiedFrame:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_23

    iget-wide v0, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_duration:J

    const-wide/32 v5, 0x186a0

    sub-long/2addr v0, v5

    cmp-long v0, v3, v0

    if-ltz v0, :cond_23

    return v22

    :cond_23
    return v18
.end method

.method private DrainOutputBuffers()V
    .locals 6

    .line 1021
    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawInputEOS:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawOutputEOS:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1028
    :cond_1
    iget-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawOutputEOS:Z

    if-nez v2, :cond_7

    .line 1030
    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v1, v3

    const/4 v4, -0x1

    const-string v5, "NvAndroidVideoFileReaderSW"

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, -0x3

    if-ne v2, v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, -0x2

    if-ne v2, v4, :cond_4

    goto :goto_0

    :cond_4
    if-gez v2, :cond_5

    .line 1039
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DrainDecoderBuffers(): Unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1043
    :cond_5
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    .line 1044
    iput-boolean v3, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawOutputEOS:Z

    .line 1046
    :cond_6
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move v1, v0

    :goto_0
    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    const-string p0, "DrainDecoderBuffers(): We have tried too many times and can\'t decode a frame!"

    .line 1050
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return-void
.end method

.method private InvalidLastSeekTimestamp()V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    .line 1058
    iput-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_lastSeekTimestamp:J

    .line 1059
    iput-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_lastSeekActualTimestamp:J

    return-void
.end method

.method private IsValid()Z
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private ParseMediaFormat(Landroid/media/MediaFormat;)V
    .locals 13

    const-string v2, "width"

    .line 1085
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "height"

    .line 1086
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "color-format"

    .line 1087
    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_8

    .line 1090
    :cond_0
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 1091
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 1092
    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 1094
    iget-object v5, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x19

    if-ne v4, v6, :cond_1

    const-string v6, "OMX.k3.video.decoder.avc"

    .line 1095
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const v4, 0x7f000100

    :cond_1
    move v5, v4

    const-string v4, "slice-height"

    .line 1100
    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1101
    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    const-string v6, "stride"

    .line 1102
    invoke-virtual {p1, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1103
    invoke-virtual {p1, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    :cond_3
    move v6, v2

    .line 1106
    :goto_1
    iget-object v7, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v7}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "OMX.Nvidia."

    .line 1107
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v4, v4, 0xf

    and-int/lit8 v4, v4, -0x10

    goto :goto_2

    :cond_4
    const-string v8, "OMX.SEC.avc.dec"

    .line 1109
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v2

    move v6, v3

    goto :goto_3

    :cond_5
    :goto_2
    move v7, v6

    move v6, v4

    :goto_3
    const-string v4, "crop-left"

    .line 1118
    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_6

    .line 1119
    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    move v8, v4

    goto :goto_4

    :cond_6
    move v8, v9

    :goto_4
    const-string v4, "crop-right"

    .line 1122
    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1123
    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v2, -0x1

    :goto_5
    move v10, v2

    const-string v2, "crop-top"

    .line 1126
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1127
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    move v11, v2

    goto :goto_6

    :cond_8
    move v11, v9

    :goto_6
    const-string v2, "crop-bottom"

    .line 1130
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1131
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    move v12, v1

    goto :goto_7

    :cond_9
    add-int/lit8 v3, v3, -0x1

    move v12, v3

    :goto_7
    add-int/lit8 v1, v10, 0x1

    sub-int v3, v1, v8

    add-int/lit8 v1, v12, 0x1

    sub-int v4, v1, v11

    .line 1138
    iget-wide v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_owner:J

    move-object v0, p0

    move v9, v10

    move v10, v11

    move v11, v12

    invoke-direct/range {v0 .. v11}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->nativeSetFormatInfo(JIIIIIIIII)V

    :cond_a
    :goto_8
    return-void
.end method

.method private SeekExtractor(J)I
    .locals 7

    .line 646
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seek to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NvAndroidVideoFileReaderSW"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    iget-wide v3, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_duration:J

    const-wide/32 v5, 0x186a0

    sub-long/2addr v3, v5

    cmp-long v0, p1, v3

    if-gez v0, :cond_1

    const-string v0, "Try to recreate MediaExtractor!"

    .line 655
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->recreateMediaExtractor()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Failed to recreate MediaExtractor!"

    .line 657
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->CloseFile()V

    const/4 p0, 0x2

    return p0

    .line 662
    :cond_0
    iget-object p0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p0, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 664
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Seek(again) to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method private SeekInternal(JJI)I
    .locals 8

    const-string v0, "NvAndroidVideoFileReaderSW"

    .line 673
    iget-wide v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastDecodedFrame:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    iget-wide v6, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_contiuousDecodingThreshold:J

    add-long/2addr v1, v6

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    goto :goto_0

    .line 681
    :cond_0
    iget-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractorInOriginalState:Z

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_contiuousDecodingThreshold:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    .line 688
    :goto_0
    iget-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_onlyDecodeKeyFrame:Z

    if-eqz v1, :cond_2

    move v4, v5

    :cond_2
    if-nez v4, :cond_6

    const/4 v1, 0x2

    .line 693
    :try_start_0
    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, p1, p2, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Seek to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawInputEOS:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_sawOutputEOS:Z

    if-eqz v2, :cond_3

    goto :goto_1

    .line 711
    :cond_3
    iget-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_inputBufferQueued:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_6

    .line 713
    :try_start_1
    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 718
    :catch_0
    :try_start_2
    iput-boolean v5, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_inputBufferQueued:Z

    .line 719
    iput v5, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_pendingInputFrameCount:I

    const-string v2, "Video decoder has been flushed."

    .line 721
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 701
    :cond_4
    :goto_1
    invoke-direct {p0, v5}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->CleanupDecoder(Z)V

    .line 702
    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 703
    invoke-direct {p0, v2}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->SetupDecoder(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    const-string v2, "Decoder has been recreated."

    .line 707
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 725
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    .line 731
    :cond_6
    :goto_2
    invoke-direct/range {p0 .. p5}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->DecodeToFrame(JJI)I

    move-result p0

    return p0
.end method

.method private SetupDecoder(Ljava/lang/String;)Z
    .locals 1

    .line 473
    invoke-direct {p0, p1}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->preferDecodeToImageReader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-direct {p0, p1}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->setupDecoderWithImageReader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 478
    :cond_0
    invoke-direct {p0, p1}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->setupDecoderWithBuffers(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$000(Lcom/cdv/io/NvAndroidVideoFileReaderSW;)Ljava/lang/Object;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_frameSyncObject:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$102(Lcom/cdv/io/NvAndroidVideoFileReaderSW;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_imageReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/cdv/io/NvAndroidVideoFileReaderSW;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->CleanupDecoderCore(Z)V

    return-void
.end method

.method private canSkipFrameForCuePlayback(JZ)Z
    .locals 7

    .line 1144
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1149
    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1150
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW$CueVideoFrameInfo;

    :cond_1
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 1152
    iget-wide v3, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW$CueVideoFrameInfo;->cueVideoFrameTimeStamp:J

    cmp-long v5, v3, p1

    if-lez v5, :cond_3

    iget-boolean v5, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW$CueVideoFrameInfo;->isKeyframe:Z

    if-eqz v5, :cond_3

    if-eqz p3, :cond_2

    const-wide/32 v5, 0xc350

    add-long/2addr v5, p1

    cmp-long p3, v5, v3

    if-ltz p3, :cond_2

    .line 1155
    iput-wide p1, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW$CueVideoFrameInfo;->cueVideoFrameTimeStamp:J

    .line 1156
    iget-object p0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_2
    return v2

    .line 1163
    :cond_3
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_4

    if-nez p3, :cond_4

    .line 1164
    iget-object p3, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cdv/io/NvAndroidVideoFileReaderSW$CueVideoFrameInfo;

    .line 1165
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW$CueVideoFrameInfo;

    .line 1166
    iget-wide v3, p3, Lcom/cdv/io/NvAndroidVideoFileReaderSW$CueVideoFrameInfo;->cueVideoFrameTimeStamp:J

    cmp-long v3, p1, v3

    if-lez v3, :cond_4

    iget-boolean p3, p3, Lcom/cdv/io/NvAndroidVideoFileReaderSW$CueVideoFrameInfo;->isKeyframe:Z

    if-eqz p3, :cond_4

    iget-wide v3, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW$CueVideoFrameInfo;->cueVideoFrameTimeStamp:J

    cmp-long p3, p1, v3

    if-gez p3, :cond_4

    iget-boolean p3, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW$CueVideoFrameInfo;->isKeyframe:Z

    if-eqz p3, :cond_4

    .line 1168
    iget-object p0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v2

    .line 1173
    :cond_4
    :goto_0
    iget-object p3, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    .line 1174
    iget-object p3, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cdv/io/NvAndroidVideoFileReaderSW$CueVideoFrameInfo;

    .line 1175
    iget-wide v2, p3, Lcom/cdv/io/NvAndroidVideoFileReaderSW$CueVideoFrameInfo;->cueVideoFrameTimeStamp:J

    cmp-long p3, v2, p1

    if-ltz p3, :cond_5

    return v1

    .line 1178
    :cond_5
    iget-object p3, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    :goto_1
    return v1
.end method

.method private extractHDRMaxLuminance(Ljava/nio/ByteBuffer;)I
    .locals 2

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 1188
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_1

    return p0

    :cond_1
    new-array v0, v1, [B

    .line 1192
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1193
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 p0, 0x11

    aget-byte p0, v0, p0

    .line 1194
    invoke-static {p0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result p0

    const/16 p1, 0x12

    aget-byte p1, v0, p1

    invoke-static {p1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    return p0
.end method

.method private isInterruptedDecoding()Z
    .locals 0

    .line 1199
    iget-object p0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_interruptionChecker:Lcom/cdv/utils/NvAndroidInterruptionChecker;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1203
    :cond_0
    invoke-virtual {p0}, Lcom/cdv/utils/NvAndroidInterruptionChecker;->isInterrupted()Z

    move-result p0

    return p0
.end method

.method private isNonReferenceFrame(Ljava/nio/ByteBuffer;)Z
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 1066
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    return p0

    :cond_1
    new-array v0, v1, [B

    .line 1069
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 1070
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1071
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p1, 0x4

    aget-byte p1, v0, p1

    and-int/lit8 v2, p1, 0x1f

    aget-byte v3, v0, p0

    if-nez v3, :cond_2

    const/4 v3, 0x1

    aget-byte v4, v0, v3

    if-nez v4, :cond_2

    const/4 v4, 0x2

    aget-byte v4, v0, v4

    if-nez v4, :cond_2

    const/4 v4, 0x3

    aget-byte v0, v0, v4

    if-ne v0, v3, :cond_2

    if-ne v2, v3, :cond_2

    shr-int/2addr p1, v1

    and-int/2addr p1, v4

    if-nez p1, :cond_2

    return v3

    :cond_2
    return p0
.end method

.method private native nativeCopyVideoFrame(JLjava/nio/ByteBuffer;IIJ)V
.end method

.method private native nativeCopyVideoFrameFromYUV420ImagePlanes(JIIIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIJ)V
.end method

.method private native nativeSetFormatInfo(JIIIIIIIII)V
.end method

.method private preferDecodeToImageReader(Ljava/lang/String;)Z
    .locals 1

    .line 414
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "OPPO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 415
    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "R15"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "video/mpeg2"

    .line 416
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private preloadInternal(J)I
    .locals 8

    .line 424
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->IsValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 427
    :cond_0
    iget-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_duration:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    .line 428
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    move-object v2, p0

    move-wide v3, p1

    .line 429
    invoke-direct/range {v2 .. v7}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->SeekInternal(JJI)I

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_1

    .line 431
    iget-wide v3, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastCopiedFrame:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_2

    .line 432
    iput-wide p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_preloadedTimestamp:J

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-ne v0, p1, :cond_2

    .line 434
    iget-wide p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastCopiedFrame:J

    cmp-long p1, p1, v1

    if-nez p1, :cond_2

    iget-wide p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastDecodedFrame:J

    cmp-long v1, p1, v1

    if-eqz v1, :cond_2

    iget-wide v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_duration:J

    const-wide/32 v3, 0x186a0

    sub-long/2addr v1, v3

    cmp-long p0, p1, v1

    if-gez p0, :cond_2

    const/4 v0, 0x4

    :cond_2
    :goto_0
    return v0
.end method

.method private recreateMediaExtractor()Z
    .locals 4

    const/4 v0, 0x1

    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 448
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoFilePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cdv/utils/NvAndroidUtils;->createMediaExtractorFromMediaFilePath(Landroid/content/Context;Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v1

    iput-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->clearCueVideoFrameForPlayback()V

    .line 454
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    iget v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoTrackIndex:I

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 455
    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractorInOriginalState:Z

    return v0

    .line 450
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Failed to re-create media extractor!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NvAndroidVideoFileReaderSW"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    .line 460
    iput-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    const/4 v2, -0x1

    .line 461
    iput v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoTrackIndex:I

    .line 462
    iput-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    const-wide/16 v1, 0x0

    .line 463
    iput-wide v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_duration:J

    .line 464
    iput-wide v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_actualDuration:J

    .line 465
    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractorInOriginalState:Z

    .line 466
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->CloseFile()V

    const/4 p0, 0x0

    return p0
.end method

.method private setupDecoderWithBuffers(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "NvAndroidVideoFileReaderSW"

    const/4 v1, 0x0

    .line 487
    :try_start_0
    invoke-static {p1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    .line 488
    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 489
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    const/4 p1, 0x1

    .line 490
    iput-boolean p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderStarted:Z

    .line 493
    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 494
    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video deocder ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] has been created."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input buffer count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Output buffer count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderOutputBuffers:[Ljava/nio/ByteBuffer;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 505
    invoke-direct {p0, v1}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->CleanupDecoder(Z)V

    return v1
.end method

.method private setupDecoderWithImageReader(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "NvAndroidVideoFileReaderSW"

    const/4 v1, 0x0

    .line 518
    :try_start_0
    invoke-static {p1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    .line 522
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 523
    invoke-virtual {v2, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p1

    .line 525
    iget-object p1, p1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v2, p1

    move v3, v1

    :goto_0
    const v4, 0x7f420888

    const/4 v5, 0x1

    if-ge v3, v2, :cond_1

    aget v6, p1, v3

    if-ne v6, v4, :cond_0

    move p1, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_1
    const/4 v2, 0x0

    if-nez p1, :cond_2

    const-string p1, "We can\'t decode to ImageReader if COLOR_FormatYUV420Flexible is not supported!"

    .line 533
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V

    .line 535
    iput-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    return v1

    .line 539
    :cond_2
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    const-string v3, "color-format"

    invoke-virtual {p1, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 541
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    const-string v3, "width"

    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    .line 542
    iget-object v3, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    const-string v4, "height"

    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x23

    .line 543
    invoke-static {p1, v3, v4, v5}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_imageReader:Landroid/media/ImageReader;

    .line 544
    new-instance v3, Lcom/cdv/io/NvAndroidVideoFileReaderSW$1;

    invoke-direct {v3, p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW$1;-><init>(Lcom/cdv/io/NvAndroidVideoFileReaderSW;)V

    iget-object v4, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_handler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 556
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    iget-object v4, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_imageReader:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {p1, v3, v4, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 557
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 558
    iput-boolean v5, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderStarted:Z

    .line 559
    iput-boolean v5, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderUseSurface:Z

    .line 561
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception p1

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 565
    invoke-direct {p0, v1}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->CleanupDecoder(Z)V

    return v1
.end method


# virtual methods
.method public CloseFile()V
    .locals 5

    .line 296
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->InvalidLastSeekTimestamp()V

    const/4 v0, 0x1

    .line 297
    invoke-direct {p0, v0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->CleanupDecoder(Z)V

    .line 299
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 300
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 301
    iput-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    const/4 v1, -0x1

    .line 302
    iput v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoTrackIndex:I

    .line 303
    iput-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    const-wide/16 v3, 0x0

    .line 304
    iput-wide v3, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_duration:J

    .line 305
    iput-wide v3, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_actualDuration:J

    .line 306
    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractorInOriginalState:Z

    const/4 v0, 0x0

    .line 307
    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_onlyDecodeKeyFrame:Z

    .line 310
    :cond_0
    iput-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoFilePath:Ljava/lang/String;

    .line 311
    iput-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_context:Landroid/content/Context;

    return-void
.end method

.method public GetHDRMaxLuminance()I
    .locals 0

    .line 404
    iget p0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoHDRMaxLuminance:I

    return p0
.end method

.method public GetNextVideoFrameForPlayback()I
    .locals 6

    .line 385
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->IsValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 389
    :cond_0
    iget-boolean v5, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_skipNonReferenceFrameWhenPlayback:Z

    const-wide/high16 v1, -0x8000000000000000L

    const-wide/16 v3, 0x0

    move-object v0, p0

    .line 392
    invoke-direct/range {v0 .. v5}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->DecodeToFrame(JJI)I

    move-result v0

    .line 393
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->InvalidLastSeekTimestamp()V

    return v0
.end method

.method public GetVideoColorTransfer()I
    .locals 0

    .line 399
    iget p0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoColorTransferCharacteristic:I

    return p0
.end method

.method public OpenFile(Ljava/lang/String;Landroid/content/Context;IJ)Z
    .locals 10

    const-string v0, "frame-rate"

    .line 121
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->IsValid()Z

    move-result v1

    const-string v2, "NvAndroidVideoFileReaderSW"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const-string p0, "You can\'t call OpenFile() twice!"

    .line 122
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 127
    :cond_0
    invoke-static {p2, p1}, Lcom/cdv/utils/NvAndroidUtils;->createMediaExtractorFromMediaFilePath(Landroid/content/Context;Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v1

    iput-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    if-nez v1, :cond_1

    return v3

    :cond_1
    const/4 v4, 0x1

    .line 131
    iput-boolean v4, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractorInOriginalState:Z

    .line 132
    iput-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoFilePath:Ljava/lang/String;

    .line 133
    iput-object p2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_context:Landroid/content/Context;

    .line 137
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p2

    move v1, v3

    :goto_0
    const-string v5, "): "

    const-string v6, "mime"

    if-ge v1, p2, :cond_3

    .line 139
    iget-object v7, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v7

    .line 140
    invoke-virtual {v7, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "video/"

    .line 141
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 143
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extractor selected track "

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iput v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoTrackIndex:I

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_3
    :goto_1
    iget p2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoTrackIndex:I

    if-gez p2, :cond_4

    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to find a video track from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->CloseFile()V

    return v3

    .line 155
    :cond_4
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1, p2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 156
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_extractor:Landroid/media/MediaExtractor;

    iget p2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoTrackIndex:I

    invoke-virtual {p1, p2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    .line 165
    sget-object p1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string p2, "qcom"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "current cpu platform is Qualcomm."

    .line 168
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v4

    goto :goto_2

    :cond_5
    move p1, v3

    :goto_2
    if-ltz p3, :cond_7

    if-nez p1, :cond_7

    .line 174
    iget-object p2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    if-lez p3, :cond_6

    goto :goto_3

    :cond_6
    const/16 p3, 0x78

    :goto_3
    const-string v1, "operating-rate"

    invoke-virtual {p2, v1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 179
    :cond_7
    :try_start_0
    iget-object p2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    const-string p3, "durationUs"

    invoke-virtual {p2, p3}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_duration:J

    .line 180
    iput-wide p2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_actualDuration:J

    .line 182
    iget-object p2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    invoke-virtual {p2, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 184
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Selected video track "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoTrackIndex:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ("

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", duration(us): "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_duration:J

    invoke-virtual {p3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_8

    .line 191
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 192
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    invoke-virtual {p1, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    const/4 p1, 0x3

    .line 202
    iput p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoColorTransferCharacteristic:I

    .line 203
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    const-string p3, "color-transfer"

    invoke-virtual {p1, p3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 204
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    invoke-virtual {p1, p3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoColorTransferCharacteristic:I

    .line 207
    :cond_9
    iput v3, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoHDRMaxLuminance:I

    .line 208
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    const-string p3, "hdr-static-info"

    invoke-virtual {p1, p3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 209
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_format:Landroid/media/MediaFormat;

    invoke-virtual {p1, p3}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->extractHDRMaxLuminance(Ljava/nio/ByteBuffer;)I

    move-result p1

    iput p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_videoHDRMaxLuminance:I

    .line 212
    :cond_a
    iput-boolean v3, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderSetupFailed:Z

    .line 213
    invoke-direct {p0, p2}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->SetupDecoder(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 214
    iput-boolean v4, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderSetupFailed:Z

    .line 215
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->CloseFile()V

    return v3

    .line 219
    :cond_b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    .line 220
    iput-wide p4, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_contiuousDecodingThreshold:J

    return v4

    :catch_0
    move-exception p1

    .line 196
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->CloseFile()V

    return v3
.end method

.method public SeekVideoFrame(JJ)I
    .locals 8

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeekVideoFrame() called, timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tolerance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NvAndroidVideoFileReaderSW"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->IsValid()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    .line 322
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 323
    iget-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_duration:J

    cmp-long v0, p1, v2

    if-ltz v0, :cond_2

    .line 326
    iget-wide v4, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_actualDuration:J

    const-wide/16 v6, 0x61a8

    add-long/2addr v4, v6

    cmp-long p1, p1, v4

    if-gez p1, :cond_1

    const-wide/16 p1, 0x1

    sub-long p1, v2, p1

    goto :goto_0

    :cond_1
    return v1

    .line 332
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastCopiedFrame:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    sub-long v0, p1, v0

    .line 333
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, p3

    if-gtz v0, :cond_3

    return v3

    .line 336
    :cond_3
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->clearCueVideoFrameForPlayback()V

    .line 338
    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_onlyDecodeKeyFrame:Z

    if-eqz v0, :cond_4

    move v5, v3

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    move v5, v0

    :goto_1
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->SeekInternal(JJI)I

    move-result p3

    if-nez p3, :cond_5

    .line 340
    iput-wide p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_lastSeekTimestamp:J

    .line 341
    iget-wide p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastCopiedFrame:J

    iput-wide p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_lastSeekActualTimestamp:J

    goto :goto_2

    .line 343
    :cond_5
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->InvalidLastSeekTimestamp()V

    :goto_2
    return p3
.end method

.method public StartPlayback(JJ)I
    .locals 9

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartPlayback() called, timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tolerance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NvAndroidVideoFileReaderSW"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->IsValid()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    .line 356
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 357
    iget-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_actualDuration:J

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    return v1

    .line 359
    :cond_1
    iget-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_duration:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    const-wide/16 p1, 0x1

    sub-long p1, v0, p1

    .line 362
    :cond_2
    iget-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_preloadedTimestamp:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    .line 364
    iget-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastCopiedFrame:J

    cmp-long v4, p1, v0

    if-gtz v4, :cond_3

    move-wide p1, v0

    .line 367
    :cond_3
    iput-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_preloadedTimestamp:J

    goto :goto_0

    .line 370
    :cond_4
    iget-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_lastSeekTimestamp:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    iget-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_lastSeekActualTimestamp:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_5

    move-wide v4, v0

    goto :goto_1

    :cond_5
    :goto_0
    move-wide v4, p1

    .line 374
    :goto_1
    iget-wide p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastCopiedFrame:J

    cmp-long v0, v4, p1

    if-nez v0, :cond_6

    iget-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastDecodedFrame:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 377
    :cond_6
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->clearCueVideoFrameForPlayback()V

    const/4 v8, 0x2

    move-object v3, p0

    move-wide v6, p3

    .line 378
    invoke-direct/range {v3 .. v8}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->SeekInternal(JJI)I

    move-result p1

    .line 379
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->InvalidLastSeekTimestamp()V

    return p1
.end method

.method public clearCueVideoFrameForPlayback()V
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 265
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public cueVideoFrameForPlayback(JZ)V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW$CueVideoFrameInfo;

    if-eqz v0, :cond_0

    .line 252
    iget-wide v0, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW$CueVideoFrameInfo;->cueVideoFrameTimeStamp:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    return-void

    .line 256
    :cond_0
    new-instance v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW$CueVideoFrameInfo;

    invoke-direct {v0}, Lcom/cdv/io/NvAndroidVideoFileReaderSW$CueVideoFrameInfo;-><init>()V

    .line 257
    iput-wide p1, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW$CueVideoFrameInfo;->cueVideoFrameTimeStamp:J

    .line 258
    iput-boolean p3, v0, Lcom/cdv/io/NvAndroidVideoFileReaderSW$CueVideoFrameInfo;->isKeyframe:Z

    .line 259
    iget-object p0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public enableOnlyDecodeKeyFrame(Z)V
    .locals 0

    .line 275
    iput-boolean p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_onlyDecodeKeyFrame:Z

    return-void
.end method

.method public hasDecoderSetupFailed()Z
    .locals 0

    .line 270
    iget-boolean p0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_decoderSetupFailed:Z

    return p0
.end method

.method public preload(J)V
    .locals 8

    .line 227
    invoke-direct {p0, p1, p2}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->preloadInternal(J)I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    const-string v2, "NvAndroidVideoFileReaderSW"

    const-wide/high16 v3, -0x8000000000000000L

    const/4 v5, 0x4

    if-ne v0, v5, :cond_1

    .line 233
    iput-wide v3, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastDecodedFrame:J

    .line 234
    invoke-direct {p0, p1, p2}, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->preloadInternal(J)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    .line 236
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Try to preload! times="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x2

    if-lt v1, v6, :cond_0

    :cond_1
    if-ne v0, v5, :cond_2

    const-string p1, "Try to recreate MediaExtractor after preload!"

    .line 243
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iput-wide v3, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_timestampOfLastDecodedFrame:J

    :cond_2
    return-void
.end method

.method public setActualDuration(J)V
    .locals 2

    .line 280
    iget-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_duration:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 281
    iput-wide p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_actualDuration:J

    :cond_0
    return-void
.end method

.method public setInterruptionChecker(Lcom/cdv/utils/NvAndroidInterruptionChecker;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_interruptionChecker:Lcom/cdv/utils/NvAndroidInterruptionChecker;

    return-void
.end method

.method public skipNonReferenceFrame(Z)V
    .locals 0

    .line 291
    iput-boolean p1, p0, Lcom/cdv/io/NvAndroidVideoFileReaderSW;->m_skipNonReferenceFrameWhenPlayback:Z

    return-void
.end method
