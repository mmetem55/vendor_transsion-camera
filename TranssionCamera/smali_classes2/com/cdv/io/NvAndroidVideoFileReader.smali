.class public Lcom/cdv/io/NvAndroidVideoFileReader;
.super Ljava/lang/Object;
.source "NvAndroidVideoFileReader.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cdv/io/NvAndroidVideoFileReader$CueVideoFrameInfo;
    }
.end annotation


# static fields
.field private static final ERROR_EOF:I = 0x1

.field private static final ERROR_FAIL:I = 0x2

.field private static final ERROR_INTERRUPTED_DECODING:I = 0x3

.field private static final ERROR_MEDIA_EXTRACTOR_PRELOAD_FAILED:I = 0x4

.field private static final ERROR_OK:I = 0x0

.field private static final SKIP_MODE_ALL_NONREFERENCE:I = 0x1

.field private static final SKIP_MODE_ALL_NON_KEYFRAME:I = 0x3

.field private static final SKIP_MODE_BELOW_TIMESTAMP:I = 0x2

.field private static final SKIP_MODE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NvAndroidVideoFileReader"

.field private static m_setOnFrameAvailableListener2:Ljava/lang/reflect/Method; = null

.field private static final m_verbose:Z = true


# instance fields
.field private m_actualDuration:J

.field private m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private m_cleanupHandler:Landroid/os/Handler;

.field private m_context:Landroid/content/Context;

.field private m_contiuousDecodingThreshold:J

.field private m_curTexImageUpdated:Z

.field private m_decoder:Landroid/media/MediaCodec;

.field m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

.field private m_decoderSetupFailed:Z

.field private m_decoderStarted:Z

.field private m_duration:J

.field private m_extractor:Landroid/media/MediaExtractor;

.field private m_extractorInOriginalState:Z

.field private m_firstPlaybackTexFrameUnconsumed:Z

.field private m_format:Landroid/media/MediaFormat;

.field private m_frameAvailable:Z

.field private m_frameSyncObject:Ljava/lang/Object;

.field private m_handler:Landroid/os/Handler;

.field private m_inputBufferQueued:Z

.field private m_interruptionChecker:Lcom/cdv/utils/NvAndroidInterruptionChecker;

.field private m_lastSeekActualTimestamp:J

.field private m_lastSeekTimestamp:J

.field private m_listPlaybackCueFrame:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/cdv/io/NvAndroidVideoFileReader$CueVideoFrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m_pendingInputFrameCount:I

.field private m_preloadedTimestamp:J

.field private m_sawInputEOS:Z

.field private m_sawOutputEOS:Z

.field private m_skipModeWhenPlayback:I

.field private m_surface:Landroid/view/Surface;

.field private m_surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private m_surfaceTextureCreationSemaphore:Ljava/util/concurrent/Semaphore;

.field private m_temporalLayerEndTime:J

.field private m_texId:I

.field private m_timestampOfCurTexFrame:J

.field private m_timestampOfLastDecodedFrame:J

.field private m_timestampOfLastInputFrame:J

.field private m_usedTemporalLayer:I

.field private m_videoColorTransferCharacteristic:I

.field private m_videoFilePath:Ljava/lang/String;

.field private m_videoHDRMaxLuminance:I

.field private m_videoTrackIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 121
    :try_start_0
    const-class v0, Landroid/graphics/SurfaceTexture;

    const-string v1, "setOnFrameAvailableListener"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/os/Handler;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_setOnFrameAvailableListener2:Ljava/lang/reflect/Method;

    const-string v0, "NvAndroidVideoFileReader"

    const-string v1, "New SurfaceTexture.setOnFrameAvailableListener() method is available!"

    .line 125
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 127
    sput-object v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_setOnFrameAvailableListener2:Ljava/lang/reflect/Method;

    :goto_0
    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 5

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    const/4 v1, -0x1

    .line 66
    iput v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoTrackIndex:I

    .line 67
    iput-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_format:Landroid/media/MediaFormat;

    const-wide/16 v2, 0x0

    .line 68
    iput-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_duration:J

    .line 69
    iput-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_actualDuration:J

    const/4 v2, 0x1

    .line 70
    iput-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractorInOriginalState:Z

    .line 73
    iput-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 74
    iput-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surface:Landroid/view/Surface;

    .line 79
    iput-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 81
    iput-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    .line 82
    iput-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoderSetupFailed:Z

    .line 83
    iput-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoderStarted:Z

    .line 84
    iput-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_frameSyncObject:Ljava/lang/Object;

    .line 87
    iput-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_frameAvailable:Z

    const-wide/high16 v3, -0x8000000000000000L

    .line 89
    iput-wide v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfLastDecodedFrame:J

    .line 90
    iput-wide v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfCurTexFrame:J

    .line 91
    iput-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_curTexImageUpdated:Z

    .line 92
    iput-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_firstPlaybackTexFrameUnconsumed:Z

    .line 93
    iput-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawOutputEOS:Z

    .line 95
    iput-wide v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_preloadedTimestamp:J

    .line 96
    iput-wide v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_lastSeekTimestamp:J

    .line 97
    iput-wide v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_lastSeekActualTimestamp:J

    .line 99
    iput v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_usedTemporalLayer:I

    const-wide/16 v0, -0x1

    .line 100
    iput-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_temporalLayerEndTime:J

    const-wide/32 v0, 0x16e360

    .line 102
    iput-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_contiuousDecodingThreshold:J

    .line 104
    iput-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_inputBufferQueued:Z

    .line 105
    iput-wide v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfLastInputFrame:J

    .line 106
    iput-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawInputEOS:Z

    .line 107
    iput v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_pendingInputFrameCount:I

    .line 110
    iput v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_skipModeWhenPlayback:I

    .line 112
    iput v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoColorTransferCharacteristic:I

    .line 113
    iput v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoHDRMaxLuminance:I

    .line 140
    iput-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_handler:Landroid/os/Handler;

    .line 141
    iput-object p2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_cleanupHandler:Landroid/os/Handler;

    .line 142
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method

.method private AwaitNewImage(Z)Z
    .locals 5

    .line 1230
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_frameSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1231
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_frameAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1235
    :try_start_1
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_frameSyncObject:Ljava/lang/Object;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 1236
    iget-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_frameAvailable:Z

    if-nez v1, :cond_0

    const-string p0, "NvAndroidVideoFileReader"

    const-string p1, "Frame wait timed out!"

    .line 1238
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1239
    :try_start_2
    monitor-exit v0

    return v2

    :catch_0
    move-exception p0

    const-string p1, "NvAndroidVideoFileReader"

    .line 1243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1245
    monitor-exit v0

    return v2

    .line 1249
    :cond_1
    iput-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_frameAvailable:Z

    .line 1250
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1253
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_2

    const-string v1, "NvAndroidVideoFileReader"

    .line 1255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Before updateTexImage(): glError "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p1, :cond_3

    .line 1261
    :try_start_3
    iget-object p0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "NvAndroidVideoFileReader"

    .line 1263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v2

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 1250
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method private CleanupDecoder(Z)V
    .locals 4

    .line 659
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->updateCurTexImage()V

    .line 661
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoderStarted:Z

    if-eqz v0, :cond_0

    .line 663
    :try_start_0
    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawInputEOS:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawOutputEOS:Z

    if-nez v0, :cond_0

    .line 667
    invoke-direct {p0, v1}, Lcom/cdv/io/NvAndroidVideoFileReader;->DrainOutputBuffers(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NvAndroidVideoFileReader"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 676
    invoke-direct {p0, v1}, Lcom/cdv/io/NvAndroidVideoFileReader;->CleanupDecoderCore(Z)V

    goto :goto_1

    .line 680
    :cond_1
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_cleanupHandler:Landroid/os/Handler;

    new-instance v0, Lcom/cdv/io/NvAndroidVideoFileReader$2;

    invoke-direct {v0, p0}, Lcom/cdv/io/NvAndroidVideoFileReader$2;-><init>(Lcom/cdv/io/NvAndroidVideoFileReader;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    const-wide/high16 v2, -0x8000000000000000L

    .line 688
    iput-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfLastDecodedFrame:J

    .line 689
    iput-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfCurTexFrame:J

    .line 690
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_firstPlaybackTexFrameUnconsumed:Z

    .line 691
    iput v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_pendingInputFrameCount:I

    .line 692
    iput-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfLastInputFrame:J

    .line 693
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawInputEOS:Z

    .line 694
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawOutputEOS:Z

    .line 695
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->clearCueVideoFrameForPlayback()V

    return-void
.end method

.method private CleanupDecoderCore(Z)V
    .locals 5

    .line 701
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 702
    iget-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoderStarted:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 704
    :try_start_0
    iget-boolean v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_inputBufferQueued:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    .line 706
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 711
    :catch_0
    :try_start_2
    iput-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_inputBufferQueued:Z

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 716
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NvAndroidVideoFileReader"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 719
    :goto_0
    iput-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoderStarted:Z

    .line 720
    iput-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 723
    iput-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    :cond_2
    if-eqz p1, :cond_4

    .line 727
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surface:Landroid/view/Surface;

    if-eqz p1, :cond_3

    .line 728
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 729
    iput-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surface:Landroid/view/Surface;

    .line 732
    :cond_3
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p1, :cond_4

    .line 735
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 736
    iput-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 740
    :cond_4
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->clearCueVideoFrameForPlayback()V

    return-void
.end method

.method private DecodeToFrame(JJZI)I
    .locals 0

    .line 848
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/cdv/io/NvAndroidVideoFileReader;->DoDecodeToFrame(JJZI)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 850
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "NvAndroidVideoFileReader"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    .line 853
    invoke-direct {p0, p1}, Lcom/cdv/io/NvAndroidVideoFileReader;->CleanupDecoder(Z)V

    const/4 p0, 0x2

    return p0
.end method

.method private DoDecodeToFrame(JJZI)I
    .locals 24

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p6

    .line 862
    iget-object v4, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    array-length v4, v4

    const/4 v5, 0x3

    .line 863
    div-int/2addr v4, v5

    const/4 v6, 0x2

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    .line 868
    :goto_0
    iget-boolean v10, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawOutputEOS:Z

    const/4 v13, 0x1

    if-nez v10, :cond_21

    .line 870
    invoke-direct/range {p0 .. p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->isInterruptedDecoding()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v0, "NvAndroidVideoFileReader"

    const-string v1, "Interrupted video Decoding "

    .line 871
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 874
    :cond_0
    iget-boolean v10, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawInputEOS:Z

    if-nez v10, :cond_d

    .line 876
    iget-object v10, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    const-wide/16 v14, 0xfa0

    invoke-virtual {v10, v14, v15}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v10

    if-ltz v10, :cond_c

    .line 878
    iget-object v14, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v14, v14, v10

    .line 882
    :goto_1
    iget-object v15, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v15, v14, v7}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v15

    if-gez v15, :cond_1

    .line 885
    iget-object v14, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x4

    move-object/from16 v16, v14

    move/from16 v17, v10

    invoke-virtual/range {v16 .. v22}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 886
    iput-boolean v13, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawInputEOS:Z

    const-string v10, "NvAndroidVideoFileReader"

    const-string v14, "Sent input EOS"

    .line 888
    invoke-static {v10, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 890
    :cond_1
    iget-object v11, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v11

    iget v12, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoTrackIndex:I

    if-eq v11, v12, :cond_2

    const-string v11, "NvAndroidVideoFileReader"

    .line 891
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WEIRD: got sample from track "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    .line 892
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", expected "

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoTrackIndex:I

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 891
    invoke-static {v11, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_2
    iget-object v6, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v11

    .line 897
    iget-object v6, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v6

    and-int/2addr v6, v13

    if-eqz v6, :cond_3

    move v6, v13

    goto :goto_2

    :cond_3
    move v6, v7

    :goto_2
    if-nez v6, :cond_5

    if-ne v3, v5, :cond_4

    .line 901
    iget-object v6, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->advance()Z

    .line 902
    iput-boolean v7, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractorInOriginalState:Z

    :goto_3
    const/4 v6, 0x2

    goto :goto_1

    .line 906
    :cond_4
    invoke-direct {v0, v14, v11, v12}, Lcom/cdv/io/NvAndroidVideoFileReader;->canSkipFrame(Ljava/nio/ByteBuffer;J)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 907
    iget-object v6, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v6}, Landroid/media/MediaExtractor;->advance()Z

    .line 908
    iput-boolean v7, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractorInOriginalState:Z

    goto :goto_3

    :cond_5
    if-ne v3, v13, :cond_6

    :goto_4
    move v5, v13

    goto :goto_5

    :cond_6
    const/4 v5, 0x2

    if-ne v3, v5, :cond_7

    sub-long v16, v1, p3

    cmp-long v5, v11, v16

    if-gez v5, :cond_7

    goto :goto_4

    :cond_7
    move v5, v7

    :goto_5
    if-eqz v5, :cond_8

    .line 923
    invoke-direct {v0, v14}, Lcom/cdv/io/NvAndroidVideoFileReader;->isNonReferenceFrame(Ljava/nio/ByteBuffer;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 924
    iget-object v5, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->advance()Z

    .line 925
    iput-boolean v7, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractorInOriginalState:Z

    const-string v5, "NvAndroidVideoFileReader"

    .line 927
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "skip non reference frame:"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " inputTime:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x3

    goto :goto_3

    .line 932
    :cond_8
    invoke-direct {v0, v11, v12, v6}, Lcom/cdv/io/NvAndroidVideoFileReader;->canSkipFrameForCuePlayback(JZ)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 933
    iget-object v5, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->advance()Z

    .line 934
    iput-boolean v7, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractorInOriginalState:Z

    const/4 v5, 0x0

    .line 937
    iget-object v15, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    if-eqz v15, :cond_9

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_9

    .line 938
    iget-object v5, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cdv/io/NvAndroidVideoFileReader$CueVideoFrameInfo;

    :cond_9
    move/from16 v23, v8

    if-eqz v5, :cond_a

    .line 940
    iget-wide v7, v5, Lcom/cdv/io/NvAndroidVideoFileReader$CueVideoFrameInfo;->cueVideoFrameTimeStamp:J

    sub-long v15, v7, v11

    const-wide/32 v17, 0x1e8480

    cmp-long v5, v15, v17

    if-lez v5, :cond_a

    .line 941
    invoke-direct {v0, v7, v8}, Lcom/cdv/io/NvAndroidVideoFileReader;->SeekExtractor(J)I

    :cond_a
    const-string v5, "NvAndroidVideoFileReader"

    .line 944
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "skip when cue inputTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " isKeyf:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v8, v23

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_b
    move/from16 v23, v8

    .line 948
    iput-wide v11, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfLastInputFrame:J

    .line 949
    iget-object v5, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    const/16 v18, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v5

    move/from16 v17, v10

    move/from16 v19, v15

    move-wide/from16 v20, v11

    invoke-virtual/range {v16 .. v22}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const-string v5, "NvAndroidVideoFileReader"

    .line 951
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Submitted frame to decoder input buffer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iput-boolean v13, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_inputBufferQueued:Z

    .line 954
    iget v5, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_pendingInputFrameCount:I

    add-int/2addr v5, v13

    iput v5, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_pendingInputFrameCount:I

    const-string v5, "NvAndroidVideoFileReader"

    .line 956
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pending input frame count increased: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_pendingInputFrameCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v5, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5}, Landroid/media/MediaExtractor;->advance()Z

    const/4 v5, 0x0

    .line 959
    iput-boolean v5, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractorInOriginalState:Z

    goto :goto_7

    :cond_c
    move/from16 v23, v8

    const-string v5, "NvAndroidVideoFileReader"

    const-string v6, "Input buffer not available"

    .line 965
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_d
    :goto_6
    move/from16 v23, v8

    .line 971
    :goto_7
    iget v5, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_pendingInputFrameCount:I

    if-gt v5, v4, :cond_f

    iget-boolean v5, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawInputEOS:Z

    if-eqz v5, :cond_e

    goto :goto_8

    :cond_e
    const/4 v5, 0x0

    goto :goto_9

    :cond_f
    :goto_8
    const/16 v5, 0xfa0

    .line 980
    :goto_9
    iget-object v6, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    iget-object v7, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    int-to-long v10, v5

    invoke-virtual {v6, v7, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    add-int/lit8 v6, v9, 0x1

    const/4 v7, -0x1

    if-ne v5, v7, :cond_10

    const-string v5, "NvAndroidVideoFileReader"

    const-string v7, "No output from decoder available"

    .line 985
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_10
    const/4 v7, -0x3

    if-ne v5, v7, :cond_11

    const-string v5, "NvAndroidVideoFileReader"

    const-string v7, "Decoder output buffers changed"

    .line 989
    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_11
    const/4 v7, -0x2

    if-ne v5, v7, :cond_14

    .line 991
    iget-object v5, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v5}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v5

    const-string v7, "color-transfer"

    .line 992
    invoke-virtual {v5, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    const-string v7, "color-transfer"

    .line 993
    invoke-virtual {v5, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoColorTransferCharacteristic:I

    :cond_12
    const-string v7, "hdr-static-info"

    .line 996
    invoke-virtual {v5, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    const-string v7, "hdr-static-info"

    .line 997
    invoke-virtual {v5, v7}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/cdv/io/NvAndroidVideoFileReader;->extractHDRMaxLuminance(Ljava/nio/ByteBuffer;)I

    move-result v7

    iput v7, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoHDRMaxLuminance:I

    :cond_13
    const-string v7, "NvAndroidVideoFileReader"

    .line 1001
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Decoder output format changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    move v9, v6

    move/from16 v8, v23

    const/4 v5, 0x2

    goto/16 :goto_f

    :cond_14
    if-gez v5, :cond_15

    const-string v0, "NvAndroidVideoFileReader"

    .line 1003
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    return v0

    :cond_15
    const-string v7, "NvAndroidVideoFileReader"

    .line 1007
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Surface decoder given buffer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " (size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")  (pts="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ") "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-object v7, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v7, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_16

    const-string v7, "NvAndroidVideoFileReader"

    const-string v8, "Output EOS"

    .line 1013
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iput-boolean v13, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawOutputEOS:Z

    .line 1026
    :cond_16
    iget-boolean v7, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawOutputEOS:Z

    if-nez v7, :cond_1b

    .line 1030
    iget-object v6, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v6, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfLastDecodedFrame:J

    .line 1031
    iget v6, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_pendingInputFrameCount:I

    sub-int/2addr v6, v13

    iput v6, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_pendingInputFrameCount:I

    const-string v6, "NvAndroidVideoFileReader"

    .line 1034
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pending input frame count decreased: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_pendingInputFrameCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v1, v6

    if-eqz v8, :cond_1a

    .line 1037
    iget-wide v6, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfLastDecodedFrame:J

    sub-long v8, v1, p3

    cmp-long v8, v6, v8

    if-ltz v8, :cond_17

    move v8, v13

    goto :goto_b

    :cond_17
    const/4 v8, 0x0

    :goto_b
    if-nez v8, :cond_19

    .line 1038
    iget-boolean v9, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawInputEOS:Z

    if-eqz v9, :cond_19

    if-nez p5, :cond_19

    .line 1042
    iget-wide v9, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfLastInputFrame:J

    const-wide/high16 v11, -0x8000000000000000L

    cmp-long v11, v9, v11

    if-eqz v11, :cond_18

    cmp-long v6, v6, v9

    if-ltz v6, :cond_18

    move v6, v13

    move v8, v6

    goto :goto_c

    :cond_18
    move v13, v8

    move/from16 v8, v23

    const/4 v6, 0x0

    :goto_c
    move v7, v6

    const/4 v6, 0x0

    goto :goto_d

    :cond_19
    move v13, v8

    :cond_1a
    move/from16 v8, v23

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_d

    :cond_1b
    move/from16 v8, v23

    const/4 v7, 0x0

    const/4 v13, 0x0

    :goto_d
    if-eqz v13, :cond_1d

    if-nez p5, :cond_1c

    .line 1058
    invoke-virtual/range {p0 .. p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->updateCurTexImage()V

    .line 1060
    :cond_1c
    iget-object v9, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_frameSyncObject:Ljava/lang/Object;

    monitor-enter v9

    const/4 v10, 0x0

    .line 1062
    :try_start_0
    iput-boolean v10, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_frameAvailable:Z

    .line 1063
    monitor-exit v9

    goto :goto_e

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1070
    :cond_1d
    :goto_e
    iget-object v9, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v9, v5, v13}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-eqz v13, :cond_1f

    const-string v5, "NvAndroidVideoFileReader"

    const-string v9, "Rendering decoded frame to surface texture."

    .line 1073
    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v5, p5, 0x1

    .line 1076
    invoke-direct {v0, v5}, Lcom/cdv/io/NvAndroidVideoFileReader;->AwaitNewImage(Z)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 1078
    iget-object v9, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v9, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v9, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfCurTexFrame:J

    .line 1079
    iput-boolean v5, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_curTexImageUpdated:Z

    const-string v5, "NvAndroidVideoFileReader"

    .line 1081
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Surface texture updated, pts="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfCurTexFrame:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_1f

    const/4 v5, 0x0

    return v5

    :cond_1e
    const-string v0, "NvAndroidVideoFileReader"

    const-string v1, "Render decoded frame to surface texture failed!"

    .line 1086
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    return v5

    :cond_1f
    const/4 v5, 0x2

    move v9, v6

    :goto_f
    const/16 v6, 0x64

    if-le v9, v6, :cond_20

    const-string v0, "NvAndroidVideoFileReader"

    const-string v1, "We have tried too many times and can\'t decode a frame!"

    .line 1093
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_20
    move v6, v5

    const/4 v5, 0x3

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_21
    move/from16 v23, v8

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v1, v1, v6

    if-eqz v1, :cond_23

    .line 1098
    iget-wide v1, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfCurTexFrame:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_23

    if-eqz v23, :cond_22

    const/4 v3, 0x0

    return v3

    :cond_22
    const/4 v3, 0x0

    .line 1101
    iget-boolean v4, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawInputEOS:Z

    if-eqz v4, :cond_23

    .line 1102
    iget-wide v4, v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfLastInputFrame:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_23

    cmp-long v0, v1, v4

    if-ltz v0, :cond_23

    return v3

    :cond_23
    return v13
.end method

.method private DrainOutputBuffers(Z)V
    .locals 5

    if-nez p1, :cond_1

    .line 1274
    iget-boolean p1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawInputEOS:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawOutputEOS:Z

    if-eqz p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    move v0, p1

    .line 1281
    :cond_2
    iget-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawOutputEOS:Z

    if-nez v1, :cond_8

    .line 1283
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const/4 v3, -0x1

    const-string v4, "NvAndroidVideoFileReader"

    if-ne v1, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, -0x3

    if-ne v1, v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, -0x2

    if-ne v1, v3, :cond_5

    goto :goto_0

    :cond_5
    if-gez v1, :cond_6

    .line 1292
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "DrainDecoderBuffers(): Unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1296
    :cond_6
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    .line 1297
    iput-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawOutputEOS:Z

    .line 1299
    :cond_7
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    move v0, p1

    :goto_0
    const/16 v1, 0x64

    if-le v0, v1, :cond_2

    const-string p0, "DrainDecoderBuffers(): We have tried too many times and can\'t decode a frame!"

    .line 1303
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method private InvalidLastSeekTimestamp()V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    .line 1311
    iput-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_lastSeekTimestamp:J

    .line 1312
    iput-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_lastSeekActualTimestamp:J

    return-void
.end method

.method private IsValid()Z
    .locals 0

    .line 573
    iget-object p0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private SeekExtractor(J)I
    .locals 7

    .line 745
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seek to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NvAndroidVideoFileReader"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_1

    iget-wide v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_duration:J

    const-wide/32 v5, 0x186a0

    sub-long/2addr v3, v5

    cmp-long v0, p1, v3

    if-gez v0, :cond_1

    const-string v0, "Try to recreate MediaExtractor!"

    .line 754
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->recreateMediaExtractor()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "Failed to recreate MediaExtractor!"

    .line 756
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->CloseFile()V

    const/4 p0, 0x2

    return p0

    .line 761
    :cond_0
    iget-object p0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p0, p1, p2, v1}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 763
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

.method private SeekInternal(JJZI)I
    .locals 8

    const-string v0, "NvAndroidVideoFileReader"

    .line 772
    iget-wide v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfLastDecodedFrame:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v3, v1, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    iget-wide v6, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_contiuousDecodingThreshold:J

    add-long/2addr v1, v6

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    goto :goto_0

    .line 780
    :cond_0
    iget-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractorInOriginalState:Z

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_contiuousDecodingThreshold:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    if-nez v4, :cond_7

    const/4 v1, 0x2

    .line 788
    :try_start_0
    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, p1, p2, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Seek to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-gez v2, :cond_3

    iget-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_duration:J

    const-wide/32 v6, 0x186a0

    sub-long/2addr v2, v6

    cmp-long v2, p1, v2

    if-gez v2, :cond_3

    const-string v2, "Try to recreate MediaExtractor!"

    .line 797
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->recreateMediaExtractor()Z

    move-result v2

    if-nez v2, :cond_2

    const-string p1, "Failed to recreate MediaExtractor!"

    .line 799
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->CloseFile()V

    return v1

    .line 804
    :cond_2
    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2, p1, p2, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 806
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Seek(again) to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_3
    iget-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawInputEOS:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_sawOutputEOS:Z

    if-eqz v2, :cond_4

    goto :goto_1

    .line 823
    :cond_4
    iget-boolean v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_inputBufferQueued:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_7

    .line 825
    :try_start_1
    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 830
    :catch_0
    :try_start_2
    iput-boolean v5, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_inputBufferQueued:Z

    .line 831
    iput v5, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_pendingInputFrameCount:I

    const-string v2, "Video decoder has been flushed."

    .line 833
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 813
    :cond_5
    :goto_1
    invoke-direct {p0, v5}, Lcom/cdv/io/NvAndroidVideoFileReader;->CleanupDecoder(Z)V

    .line 814
    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_format:Landroid/media/MediaFormat;

    const-string v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 815
    invoke-direct {p0, v2}, Lcom/cdv/io/NvAndroidVideoFileReader;->SetupDecoder(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    const-string v2, "Decoder has been recreated."

    .line 819
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 837
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

    .line 838
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1

    .line 842
    :cond_7
    :goto_2
    invoke-direct/range {p0 .. p6}, Lcom/cdv/io/NvAndroidVideoFileReader;->DecodeToFrame(JJZI)I

    move-result p0

    return p0
.end method

.method private SetupDecoder(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "NvAndroidVideoFileReader"

    const/4 v1, 0x0

    .line 631
    :try_start_0
    invoke-static {p1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    .line 632
    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_format:Landroid/media/MediaFormat;

    iget-object v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surface:Landroid/view/Surface;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 633
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    const/4 p1, 0x1

    .line 634
    iput-boolean p1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoderStarted:Z

    .line 637
    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 642
    array-length v2, v2

    .line 643
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input buffer count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 646
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

    .line 647
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 648
    invoke-direct {p0, v1}, Lcom/cdv/io/NvAndroidVideoFileReader;->CleanupDecoder(Z)V

    return v1
.end method

.method static synthetic access$002(Lcom/cdv/io/NvAndroidVideoFileReader;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$100(Lcom/cdv/io/NvAndroidVideoFileReader;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_texId:I

    return p0
.end method

.method static synthetic access$200(Lcom/cdv/io/NvAndroidVideoFileReader;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTextureCreationSemaphore:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static synthetic access$300(Lcom/cdv/io/NvAndroidVideoFileReader;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/cdv/io/NvAndroidVideoFileReader;->CleanupDecoderCore(Z)V

    return-void
.end method

.method private canSkipFrame(Ljava/nio/ByteBuffer;J)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1139
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    return v0

    .line 1141
    :cond_1
    iget v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_usedTemporalLayer:I

    if-gez v1, :cond_2

    return v0

    .line 1144
    :cond_2
    iget-wide v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_temporalLayerEndTime:J

    cmp-long p2, p2, v3

    if-ltz p2, :cond_3

    return v0

    :cond_3
    new-array p2, v2, [B

    .line 1148
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p3

    .line 1149
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1150
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p1, 0x4

    aget-byte p1, p2, p1

    and-int/lit8 p1, p1, 0x1f

    aget-byte p3, p2, v0

    const/4 v1, 0x1

    if-nez p3, :cond_7

    aget-byte p3, p2, v1

    if-nez p3, :cond_7

    const/4 p3, 0x2

    aget-byte p3, p2, p3

    if-nez p3, :cond_7

    const/4 p3, 0x3

    aget-byte p3, p2, p3

    if-ne p3, v1, :cond_7

    const/16 p3, 0xe

    if-eq p1, p3, :cond_4

    const/16 p3, 0x14

    if-ne p1, p3, :cond_7

    :cond_4
    const/4 p1, 0x5

    aget-byte p3, p2, p1

    and-int/lit16 p3, p3, 0xff

    const/4 v2, 0x7

    shr-int/2addr p3, v2

    if-lez p3, :cond_5

    move p3, v1

    goto :goto_0

    :cond_5
    move p3, v0

    :goto_0
    if-eqz p3, :cond_8

    aget-byte p2, p2, v2

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 p1, p2, 0x5

    and-int/2addr p1, v2

    .line 1159
    iget p0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_usedTemporalLayer:I

    if-le p1, p0, :cond_6

    move v0, v1

    .line 1162
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "frame temporal id:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NvAndroidVideoFileReader"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1164
    :cond_7
    iget p0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_usedTemporalLayer:I

    if-lez p0, :cond_8

    move v0, v1

    :cond_8
    :goto_1
    return v0
.end method

.method private canSkipFrameForCuePlayback(JZ)Z
    .locals 7

    .line 1174
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 1179
    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1180
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cdv/io/NvAndroidVideoFileReader$CueVideoFrameInfo;

    :cond_1
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 1181
    iget-wide v3, v0, Lcom/cdv/io/NvAndroidVideoFileReader$CueVideoFrameInfo;->cueVideoFrameTimeStamp:J

    cmp-long v5, v3, p1

    if-lez v5, :cond_3

    iget-boolean v5, v0, Lcom/cdv/io/NvAndroidVideoFileReader$CueVideoFrameInfo;->isKeyframe:Z

    if-eqz v5, :cond_3

    if-eqz p3, :cond_2

    const-wide/32 v5, 0xc350

    add-long/2addr v5, p1

    cmp-long p3, v5, v3

    if-ltz p3, :cond_2

    .line 1184
    iput-wide p1, v0, Lcom/cdv/io/NvAndroidVideoFileReader$CueVideoFrameInfo;->cueVideoFrameTimeStamp:J

    .line 1185
    iget-object p0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_2
    return v2

    .line 1192
    :cond_3
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_4

    if-nez p3, :cond_4

    .line 1193
    iget-object p3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cdv/io/NvAndroidVideoFileReader$CueVideoFrameInfo;

    .line 1194
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cdv/io/NvAndroidVideoFileReader$CueVideoFrameInfo;

    .line 1195
    iget-wide v3, p3, Lcom/cdv/io/NvAndroidVideoFileReader$CueVideoFrameInfo;->cueVideoFrameTimeStamp:J

    cmp-long v3, p1, v3

    if-lez v3, :cond_4

    iget-boolean p3, p3, Lcom/cdv/io/NvAndroidVideoFileReader$CueVideoFrameInfo;->isKeyframe:Z

    if-eqz p3, :cond_4

    iget-wide v3, v0, Lcom/cdv/io/NvAndroidVideoFileReader$CueVideoFrameInfo;->cueVideoFrameTimeStamp:J

    cmp-long p3, p1, v3

    if-gez p3, :cond_4

    iget-boolean p3, v0, Lcom/cdv/io/NvAndroidVideoFileReader$CueVideoFrameInfo;->isKeyframe:Z

    if-eqz p3, :cond_4

    .line 1197
    iget-object p0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v2

    .line 1202
    :cond_4
    :goto_0
    iget-object p3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    .line 1203
    iget-object p3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/cdv/io/NvAndroidVideoFileReader$CueVideoFrameInfo;

    .line 1204
    iget-wide v2, p3, Lcom/cdv/io/NvAndroidVideoFileReader$CueVideoFrameInfo;->cueVideoFrameTimeStamp:J

    cmp-long p3, v2, p1

    if-ltz p3, :cond_5

    return v1

    .line 1207
    :cond_5
    iget-object p3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

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

    .line 1217
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_1

    return p0

    :cond_1
    new-array v0, v1, [B

    .line 1221
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1222
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 p0, 0x11

    aget-byte p0, v0, p0

    .line 1223
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

    .line 1317
    iget-object p0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_interruptionChecker:Lcom/cdv/utils/NvAndroidInterruptionChecker;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1321
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

    .line 1115
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    return p0

    :cond_1
    new-array v0, v1, [B

    .line 1119
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 1120
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1121
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

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNonReferenceFrame:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NvAndroidVideoFileReader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    return v3

    :cond_2
    return p0
.end method

.method private preloadInternal(J)I
    .locals 9

    .line 578
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->IsValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x2

    return p0

    .line 581
    :cond_0
    iget-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_duration:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    .line 582
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    move-object v2, p0

    move-wide v3, p1

    .line 583
    invoke-direct/range {v2 .. v8}, Lcom/cdv/io/NvAndroidVideoFileReader;->SeekInternal(JJZI)I

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_1

    .line 585
    iget-wide v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfCurTexFrame:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_2

    .line 586
    iput-wide p1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_preloadedTimestamp:J

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-ne v0, p1, :cond_2

    .line 588
    iget-wide p1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfCurTexFrame:J

    cmp-long p1, p1, v1

    if-nez p1, :cond_2

    iget-wide p1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfLastDecodedFrame:J

    cmp-long v1, p1, v1

    if-eqz v1, :cond_2

    iget-wide v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_duration:J

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

    .line 601
    :try_start_0
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 602
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoFilePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/cdv/utils/NvAndroidUtils;->createMediaExtractorFromMediaFilePath(Landroid/content/Context;Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v1

    iput-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_0

    .line 606
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->clearCueVideoFrameForPlayback()V

    .line 608
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    iget v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoTrackIndex:I

    invoke-virtual {v1, v2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 609
    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractorInOriginalState:Z

    return v0

    .line 604
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Failed to re-create media extractor!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NvAndroidVideoFileReader"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    .line 614
    iput-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    const/4 v2, -0x1

    .line 615
    iput v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoTrackIndex:I

    .line 616
    iput-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_format:Landroid/media/MediaFormat;

    const-wide/16 v1, 0x0

    .line 617
    iput-wide v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_duration:J

    .line 618
    iput-wide v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_actualDuration:J

    .line 619
    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractorInOriginalState:Z

    .line 620
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->CloseFile()V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public CloseFile()V
    .locals 6

    .line 391
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->InvalidLastSeekTimestamp()V

    const/4 v0, 0x1

    .line 392
    invoke-direct {p0, v0}, Lcom/cdv/io/NvAndroidVideoFileReader;->CleanupDecoder(Z)V

    .line 394
    iget-object v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 395
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 396
    iput-object v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    .line 397
    iput v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoTrackIndex:I

    .line 398
    iput-object v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_format:Landroid/media/MediaFormat;

    const-wide/16 v4, 0x0

    .line 399
    iput-wide v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_duration:J

    .line 400
    iput-wide v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_actualDuration:J

    .line 401
    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractorInOriginalState:Z

    .line 404
    :cond_0
    iput v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_usedTemporalLayer:I

    const-wide/16 v0, -0x1

    .line 405
    iput-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_temporalLayerEndTime:J

    .line 407
    iput-object v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoFilePath:Ljava/lang/String;

    .line 408
    iput-object v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_context:Landroid/content/Context;

    return-void
.end method

.method public GetHDRMaxLuminance()I
    .locals 0

    .line 552
    iget p0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoHDRMaxLuminance:I

    return p0
.end method

.method public GetNextVideoFrameForPlayback()I
    .locals 10

    .line 502
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->IsValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 505
    :cond_0
    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_firstPlaybackTexFrameUnconsumed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 507
    iget v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_skipModeWhenPlayback:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    move v9, v0

    goto :goto_0

    :cond_1
    move v9, v1

    :goto_0
    const-wide/high16 v4, -0x8000000000000000L

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    .line 509
    invoke-direct/range {v3 .. v9}, Lcom/cdv/io/NvAndroidVideoFileReader;->DecodeToFrame(JJZI)I

    move-result v0

    .line 510
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->InvalidLastSeekTimestamp()V

    if-eqz v0, :cond_3

    return v0

    .line 514
    :cond_2
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_firstPlaybackTexFrameUnconsumed:Z

    :cond_3
    return v1
.end method

.method public GetTimestampOfCurrentTextureFrame()J
    .locals 2

    .line 522
    iget-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfCurTexFrame:J

    return-wide v0
.end method

.method public GetTransformMatrixOfSurfaceTexture([F)V
    .locals 0

    .line 527
    iget-object p0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p0, :cond_0

    .line 528
    invoke-virtual {p0, p1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    :cond_0
    return-void
.end method

.method public GetVideoColorTransfer()I
    .locals 0

    .line 547
    iget p0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoColorTransferCharacteristic:I

    return p0
.end method

.method public OpenFile(Ljava/lang/String;ILandroid/content/Context;IJ)Z
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "frame-rate"

    const-string v5, ""

    .line 151
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->IsValid()Z

    move-result v6

    const-string v7, "NvAndroidVideoFileReader"

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    const-string v0, "You can\'t call OpenFile() twice!"

    .line 152
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 157
    :cond_0
    invoke-static {v3, v0}, Lcom/cdv/utils/NvAndroidUtils;->createMediaExtractorFromMediaFilePath(Landroid/content/Context;Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v6

    iput-object v6, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    if-nez v6, :cond_1

    return v8

    :cond_1
    const/4 v9, 0x1

    .line 161
    iput-boolean v9, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractorInOriginalState:Z

    .line 162
    iput-object v0, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoFilePath:Ljava/lang/String;

    .line 163
    iput-object v3, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_context:Landroid/content/Context;

    .line 168
    :try_start_0
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move v6, v8

    :goto_0
    const-string v10, "): "

    const-string v11, "mime"

    if-ge v6, v3, :cond_3

    .line 170
    :try_start_1
    iget-object v12, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v12, v6}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v12

    .line 171
    invoke-virtual {v12, v11}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "video/"

    .line 172
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 174
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Extractor selected track "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " ("

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iput v6, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoTrackIndex:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 186
    :cond_3
    :goto_1
    iget v3, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoTrackIndex:I

    if-gez v3, :cond_4

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find a video track from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->CloseFile()V

    return v8

    .line 192
    :cond_4
    iget-object v0, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 193
    iget-object v0, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_extractor:Landroid/media/MediaExtractor;

    iget v3, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoTrackIndex:I

    invoke-virtual {v0, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_format:Landroid/media/MediaFormat;

    const/4 v3, 0x3

    .line 201
    iput v3, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoColorTransferCharacteristic:I

    const-string v3, "color-transfer"

    .line 202
    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 203
    iget-object v0, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_format:Landroid/media/MediaFormat;

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoColorTransferCharacteristic:I

    .line 206
    :cond_5
    iput v8, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoHDRMaxLuminance:I

    .line 207
    iget-object v0, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_format:Landroid/media/MediaFormat;

    const-string v3, "hdr-static-info"

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 208
    iget-object v0, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_format:Landroid/media/MediaFormat;

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cdv/io/NvAndroidVideoFileReader;->extractHDRMaxLuminance(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoHDRMaxLuminance:I

    .line 212
    :cond_6
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v3, "qcom"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "current cpu platform is Qualcomm."

    .line 215
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    goto :goto_2

    :cond_7
    move v0, v8

    :goto_2
    if-ltz p4, :cond_9

    .line 221
    iget-object v3, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_format:Landroid/media/MediaFormat;

    if-lez p4, :cond_8

    move/from16 v6, p4

    goto :goto_3

    :cond_8
    const/16 v6, 0x78

    :goto_3
    const-string v12, "operating-rate"

    invoke-virtual {v3, v12, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 226
    :cond_9
    :try_start_2
    iget-object v3, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_format:Landroid/media/MediaFormat;

    const-string v6, "durationUs"

    invoke-virtual {v3, v6}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_duration:J

    .line 227
    iget-object v3, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_format:Landroid/media/MediaFormat;

    invoke-virtual {v3, v11}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 229
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Selected video track "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_videoTrackIndex:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", ("

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_format:Landroid/media/MediaFormat;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", duration(us): "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_duration:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-wide v10, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_duration:J

    iput-wide v10, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_actualDuration:J

    if-eqz v0, :cond_a

    .line 238
    iget-object v0, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_format:Landroid/media/MediaFormat;

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 239
    iget-object v0, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_format:Landroid/media/MediaFormat;

    invoke-virtual {v0, v4, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 253
    :cond_a
    :try_start_3
    sget-object v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_setOnFrameAvailableListener2:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_b

    .line 254
    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Surface texture with texture (id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") has been created."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sget-object v0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_setOnFrameAvailableListener2:Ljava/lang/reflect/Method;

    iget-object v2, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v8

    iget-object v6, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_handler:Landroid/os/Handler;

    aput-object v6, v4, v9

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 265
    :cond_b
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v8}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTextureCreationSemaphore:Ljava/util/concurrent/Semaphore;

    .line 266
    iput v2, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_texId:I

    .line 267
    iget-object v0, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_handler:Landroid/os/Handler;

    new-instance v2, Lcom/cdv/io/NvAndroidVideoFileReader$1;

    invoke-direct {v2, p0}, Lcom/cdv/io/NvAndroidVideoFileReader$1;-><init>(Lcom/cdv/io/NvAndroidVideoFileReader;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    iget-object v0, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTextureCreationSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    const/4 v0, 0x0

    .line 284
    iput-object v0, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTextureCreationSemaphore:Ljava/util/concurrent/Semaphore;

    .line 285
    iput v8, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_texId:I

    .line 287
    iget-object v0, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_c

    .line 288
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->CloseFile()V

    return v8

    .line 292
    :cond_c
    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 295
    :goto_4
    new-instance v0, Landroid/view/Surface;

    iget-object v2, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surface:Landroid/view/Surface;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 303
    iput-boolean v8, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoderSetupFailed:Z

    .line 304
    invoke-direct {p0, v3}, Lcom/cdv/io/NvAndroidVideoFileReader;->SetupDecoder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 305
    iput-boolean v9, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoderSetupFailed:Z

    .line 306
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->CloseFile()V

    return v8

    .line 310
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    move-wide/from16 v2, p5

    .line 311
    iput-wide v2, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_contiuousDecodingThreshold:J

    const/4 v0, -0x1

    .line 312
    iput v0, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_usedTemporalLayer:I

    const-wide/16 v2, -0x1

    .line 313
    iput-wide v2, v1, Lcom/cdv/io/NvAndroidVideoFileReader;->m_temporalLayerEndTime:J

    return v9

    :catch_0
    move-exception v0

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 299
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->CloseFile()V

    return v8

    :catch_1
    move-exception v0

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->CloseFile()V

    return v8

    :catch_2
    move-exception v0

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->CloseFile()V

    return v8
.end method

.method public SeekVideoFrame(JJ)I
    .locals 8

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeekVideoFrame() called, timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", tolerance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NvAndroidVideoFileReader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->IsValid()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    .line 429
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 430
    iget-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_duration:J

    cmp-long v0, p1, v2

    if-ltz v0, :cond_2

    .line 433
    iget-wide v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_actualDuration:J

    const-wide/16 v6, 0x61a8

    add-long/2addr v4, v6

    cmp-long p1, p1, v4

    if-gez p1, :cond_1

    const-wide/16 p1, 0x1

    sub-long p1, v2, p1

    goto :goto_0

    :cond_1
    return v1

    .line 439
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfCurTexFrame:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    sub-long v0, p1, v0

    .line 440
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v0, p3

    if-gtz v0, :cond_3

    const/4 p0, 0x0

    return p0

    .line 443
    :cond_3
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->clearCueVideoFrameForPlayback()V

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 445
    invoke-direct/range {v0 .. v6}, Lcom/cdv/io/NvAndroidVideoFileReader;->SeekInternal(JJZI)I

    move-result p3

    if-nez p3, :cond_4

    .line 447
    iput-wide p1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_lastSeekTimestamp:J

    .line 448
    iget-wide p1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfCurTexFrame:J

    iput-wide p1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_lastSeekActualTimestamp:J

    goto :goto_1

    .line 450
    :cond_4
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->InvalidLastSeekTimestamp()V

    :goto_1
    return p3
.end method

.method public SetDecodeTemporalLayer(IJ)V
    .locals 1

    .line 413
    iget v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_usedTemporalLayer:I

    if-ne p1, v0, :cond_0

    return-void

    .line 416
    :cond_0
    iput-wide p2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_temporalLayerEndTime:J

    .line 417
    iput p1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_usedTemporalLayer:I

    return-void
.end method

.method public StartPlayback(JJ)I
    .locals 11

    .line 458
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

    const-string v1, "NvAndroidVideoFileReader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->IsValid()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    .line 463
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 464
    iget-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_actualDuration:J

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    return v1

    .line 466
    :cond_1
    iget-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_duration:J

    cmp-long v0, p1, v2

    if-ltz v0, :cond_2

    const-wide/16 p1, 0x1

    sub-long p1, v2, p1

    .line 469
    :cond_2
    iget-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_preloadedTimestamp:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    cmp-long v0, p1, v2

    if-ltz v0, :cond_3

    .line 471
    iget-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfCurTexFrame:J

    cmp-long v0, p1, v2

    if-gtz v0, :cond_3

    move-wide p1, v2

    .line 474
    :cond_3
    iput-wide v4, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_preloadedTimestamp:J

    goto :goto_0

    .line 477
    :cond_4
    iget-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_lastSeekTimestamp:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    cmp-long v0, p1, v2

    if-nez v0, :cond_5

    iget-wide v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_lastSeekActualTimestamp:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    move-wide v5, v2

    goto :goto_1

    :cond_5
    :goto_0
    move-wide v5, p1

    .line 481
    :goto_1
    iget-wide p1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfCurTexFrame:J

    cmp-long v0, v5, p1

    const/4 v2, 0x0

    if-nez v0, :cond_6

    iget-wide v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfLastDecodedFrame:J

    cmp-long p1, p1, v3

    if-nez p1, :cond_6

    .line 484
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_firstPlaybackTexFrameUnconsumed:Z

    return v2

    .line 488
    :cond_6
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->clearCueVideoFrameForPlayback()V

    const/4 v9, 0x0

    const/4 v10, 0x2

    move-object v4, p0

    move-wide v7, p3

    .line 490
    invoke-direct/range {v4 .. v10}, Lcom/cdv/io/NvAndroidVideoFileReader;->SeekInternal(JJZI)I

    move-result p1

    .line 491
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->InvalidLastSeekTimestamp()V

    if-eqz p1, :cond_7

    return p1

    .line 495
    :cond_7
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_firstPlaybackTexFrameUnconsumed:Z

    .line 496
    iput v2, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_skipModeWhenPlayback:I

    return v2
.end method

.method public clearCueVideoFrameForPlayback()V
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 365
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public cueVideoFrameForPlayback(JZ)V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cdv/io/NvAndroidVideoFileReader$CueVideoFrameInfo;

    if-eqz v0, :cond_0

    .line 352
    iget-wide v0, v0, Lcom/cdv/io/NvAndroidVideoFileReader$CueVideoFrameInfo;->cueVideoFrameTimeStamp:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    return-void

    .line 356
    :cond_0
    new-instance v0, Lcom/cdv/io/NvAndroidVideoFileReader$CueVideoFrameInfo;

    invoke-direct {v0}, Lcom/cdv/io/NvAndroidVideoFileReader$CueVideoFrameInfo;-><init>()V

    .line 357
    iput-wide p1, v0, Lcom/cdv/io/NvAndroidVideoFileReader$CueVideoFrameInfo;->cueVideoFrameTimeStamp:J

    .line 358
    iput-boolean p3, v0, Lcom/cdv/io/NvAndroidVideoFileReader$CueVideoFrameInfo;->isKeyframe:Z

    .line 359
    iget-object p0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_listPlaybackCueFrame:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public hasDecoderSetupFailed()Z
    .locals 0

    .line 370
    iget-boolean p0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_decoderSetupFailed:Z

    return p0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    const-string p1, "NvAndroidVideoFileReader"

    const-string v0, "new frame available"

    .line 560
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_frameSyncObject:Ljava/lang/Object;

    monitor-enter p1

    .line 563
    :try_start_0
    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_frameAvailable:Z

    if-eqz v0, :cond_0

    const-string v0, "NvAndroidVideoFileReader"

    const-string v1, "m_frameAvailable already set, frame could be dropped!"

    .line 564
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 566
    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_frameAvailable:Z

    .line 567
    iget-object p0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_frameSyncObject:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 568
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public preload(J)V
    .locals 9

    .line 320
    invoke-direct {p0, p1, p2}, Lcom/cdv/io/NvAndroidVideoFileReader;->preloadInternal(J)I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    const-string v2, "Failed to recreate MediaExtractor!"

    const-wide/high16 v3, -0x8000000000000000L

    const/4 v5, 0x4

    const-string v6, "NvAndroidVideoFileReader"

    if-ne v0, v5, :cond_2

    .line 326
    iput-wide v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfLastDecodedFrame:J

    const-string v0, "Try to recreate MediaExtractor!"

    .line 327
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->recreateMediaExtractor()Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/cdv/io/NvAndroidVideoFileReader;->preloadInternal(J)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    .line 333
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Try to preload! times="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    if-lt v1, v7, :cond_0

    :cond_2
    if-ne v0, v5, :cond_3

    const-string p1, "Try to recreate MediaExtractor after preload!"

    .line 340
    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iput-wide v3, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfLastDecodedFrame:J

    .line 342
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidVideoFileReader;->recreateMediaExtractor()Z

    move-result p0

    if-nez p0, :cond_3

    .line 343
    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public setActualDuration(J)V
    .locals 2

    .line 375
    iget-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_duration:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 376
    iput-wide p1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_actualDuration:J

    :cond_0
    return-void
.end method

.method public setInterruptionChecker(Lcom/cdv/utils/NvAndroidInterruptionChecker;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_interruptionChecker:Lcom/cdv/utils/NvAndroidInterruptionChecker;

    return-void
.end method

.method public setPlaybackSkipMode(I)V
    .locals 0

    .line 386
    iput p1, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_skipModeWhenPlayback:I

    return-void
.end method

.method public updateCurTexImage()V
    .locals 4

    .line 534
    :try_start_0
    iget-wide v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_timestampOfCurTexFrame:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_curTexImageUpdated:Z

    if-nez v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    :cond_0
    const/4 v0, 0x1

    .line 538
    iput-boolean v0, p0, Lcom/cdv/io/NvAndroidVideoFileReader;->m_curTexImageUpdated:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 541
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
