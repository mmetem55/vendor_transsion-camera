.class public Lcom/cdv/io/NvAndroidAudioFileReader;
.super Ljava/lang/Object;
.source "NvAndroidAudioFileReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;
    }
.end annotation


# static fields
.field private static final ERROR_EOF:I = 0x1

.field private static final ERROR_FAIL:I = 0x2

.field private static final ERROR_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NvAndroidAudioFileReader"

.field private static final m_verbose:Z = true


# instance fields
.field private m_audioTrackIndex:I

.field private m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private m_channelCount:I

.field private m_decoder:Landroid/media/MediaCodec;

.field m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

.field m_decoderOutputBuffers:[Ljava/nio/ByteBuffer;

.field private m_decoderSetupFailed:Z

.field private m_decoderStarted:Z

.field private m_duration:J

.field private m_extractor:Landroid/media/MediaExtractor;

.field private m_format:Landroid/media/MediaFormat;

.field private m_inputBufferQueued:Z

.field private m_pcmEncoding:I

.field private m_pendingInputFrameCount:I

.field private m_sampleRate:I

.field private m_sawInputEOS:Z

.field private m_sawOutputEOS:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    const/4 v1, -0x1

    .line 45
    iput v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_audioTrackIndex:I

    .line 46
    iput-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_format:Landroid/media/MediaFormat;

    const-wide/16 v1, 0x0

    .line 47
    iput-wide v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_duration:J

    const/4 v1, 0x1

    .line 48
    iput v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_channelCount:I

    const v1, 0xac44

    .line 49
    iput v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sampleRate:I

    const/4 v1, 0x2

    .line 50
    iput v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_pcmEncoding:I

    .line 52
    iput-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 54
    iput-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    .line 55
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderSetupFailed:Z

    .line 56
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderStarted:Z

    .line 57
    iput-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 58
    iput-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 60
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_inputBufferQueued:Z

    .line 61
    iput v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_pendingInputFrameCount:I

    .line 62
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sawInputEOS:Z

    .line 63
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sawOutputEOS:Z

    .line 67
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    return-void
.end method

.method private cleanupDecoder()V
    .locals 5

    .line 268
    iget-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 269
    iget-boolean v2, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderStarted:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 271
    :try_start_0
    iget-boolean v2, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_inputBufferQueued:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 273
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 278
    :catch_0
    :try_start_2
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_inputBufferQueued:Z

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "NvAndroidAudioFileReader"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    :goto_0
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderStarted:Z

    .line 287
    iput-object v3, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 290
    iput-object v3, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    .line 293
    :cond_2
    iput v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_pendingInputFrameCount:I

    .line 294
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sawInputEOS:Z

    .line 295
    iput-boolean v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sawOutputEOS:Z

    return-void
.end method

.method private decodeNextFrame()Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;
    .locals 19

    move-object/from16 v1, p0

    .line 300
    iget-object v0, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    array-length v0, v0

    const/4 v2, 0x3

    .line 301
    div-int/2addr v0, v2

    const/4 v3, 0x2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 305
    new-instance v5, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;

    invoke-direct {v5}, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;-><init>()V

    const/4 v6, 0x0

    move v0, v6

    .line 307
    :goto_0
    iget-boolean v7, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sawOutputEOS:Z

    const/4 v8, 0x1

    if-nez v7, :cond_11

    .line 308
    iget-boolean v7, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sawInputEOS:Z

    const-string v9, "NvAndroidAudioFileReader"

    if-nez v7, :cond_3

    .line 310
    iget-object v7, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x1f4

    invoke-virtual {v7, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v7

    if-ltz v7, :cond_2

    .line 312
    iget-object v10, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v10, v10, v7

    .line 314
    iget-object v11, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v11, v10, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v10

    if-gez v10, :cond_0

    .line 317
    iget-object v12, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x4

    move v13, v7

    invoke-virtual/range {v12 .. v18}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 318
    iput-boolean v8, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sawInputEOS:Z

    const-string v7, "Sent input EOS"

    .line 320
    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 322
    :cond_0
    iget-object v11, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v11

    iget v12, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_audioTrackIndex:I

    if-eq v11, v12, :cond_1

    .line 323
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WEIRD: got sample from track "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    .line 324
    invoke-virtual {v12}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", expected "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_audioTrackIndex:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 323
    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_1
    iget-object v11, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v11}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v16

    .line 328
    iget-object v12, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    const/4 v14, 0x0

    const/16 v18, 0x0

    move v13, v7

    move v15, v10

    invoke-virtual/range {v12 .. v18}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 330
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Submitted frame to decoder input buffer "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", size="

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iput-boolean v8, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_inputBufferQueued:Z

    .line 333
    iget v7, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_pendingInputFrameCount:I

    add-int/2addr v7, v8

    iput v7, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_pendingInputFrameCount:I

    .line 335
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Pending input frame count increased: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_pendingInputFrameCount:I

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v7, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_1

    :cond_2
    const-string v7, "Input buffer not available"

    .line 341
    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_3
    :goto_1
    iget v7, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_pendingInputFrameCount:I

    if-gt v7, v4, :cond_5

    iget-boolean v7, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sawInputEOS:Z

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    move v7, v6

    goto :goto_3

    :cond_5
    :goto_2
    const/16 v7, 0x1f4

    .line 356
    :goto_3
    iget-object v10, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    iget-object v11, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    int-to-long v12, v7

    invoke-virtual {v10, v11, v12, v13}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v7

    add-int/lit8 v10, v0, 0x1

    const/4 v0, -0x1

    const/4 v11, 0x0

    if-ne v7, v0, :cond_6

    const-string v0, "No output from decoder available"

    .line 361
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_6
    const/4 v0, -0x3

    if-ne v7, v0, :cond_7

    const-string v0, "Decoder output buffers changed"

    .line 364
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderOutputBuffers:[Ljava/nio/ByteBuffer;

    goto/16 :goto_8

    :cond_7
    const/4 v0, -0x2

    if-ne v7, v0, :cond_8

    .line 367
    iget-object v0, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 369
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Decoder output format changed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-direct {v1, v0}, Lcom/cdv/io/NvAndroidAudioFileReader;->parseMediaFormat(Landroid/media/MediaFormat;)V

    goto/16 :goto_8

    :cond_8
    if-gez v7, :cond_9

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    .line 376
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Decoder given buffer "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " (size="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ")  (pts="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v12, v12, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ") "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v12, 0x4

    and-int/2addr v0, v12

    if-eqz v0, :cond_a

    const-string v0, "Output EOS"

    .line 382
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iput-boolean v8, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sawOutputEOS:Z

    goto :goto_4

    .line 385
    :cond_a
    iget v0, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_pendingInputFrameCount:I

    sub-int/2addr v0, v8

    iput v0, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_pendingInputFrameCount:I

    .line 388
    :goto_4
    iget-object v0, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    move v8, v6

    :goto_5
    if-eqz v8, :cond_e

    .line 390
    iget v13, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_channelCount:I

    iput v13, v5, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;->channelCount:I

    .line 391
    iget v14, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sampleRate:I

    iput v14, v5, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;->sampleRate:I

    const/16 v14, 0x10

    .line 392
    iput v14, v5, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;->sampleSize:I

    .line 393
    iget v14, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_pcmEncoding:I

    const/16 v15, 0x8

    if-ne v14, v2, :cond_c

    .line 394
    iput v15, v5, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;->sampleSize:I

    goto :goto_6

    :cond_c
    if-ne v14, v12, :cond_d

    const/16 v12, 0x20

    .line 396
    iput v12, v5, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;->sampleSize:I

    .line 398
    :cond_d
    :goto_6
    iget v12, v5, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;->sampleSize:I

    div-int/2addr v12, v15

    mul-int/2addr v12, v13

    .line 399
    div-int/2addr v0, v12

    iput v0, v5, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;->sampleCount:I

    .line 401
    :try_start_0
    iget-object v0, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderOutputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v7

    .line 402
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 403
    iget-object v12, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 404
    iget-object v12, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v12, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 405
    invoke-virtual {v12, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 406
    iput-object v12, v5, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;->audioFrame:Ljava/nio/ByteBuffer;

    .line 407
    iget-object v0, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_bufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v12, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v12, v5, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;->pts:J

    .line 408
    iput v6, v5, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;->retCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 410
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 412
    iput v3, v5, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;->retCode:I

    move v8, v6

    .line 416
    :cond_e
    :goto_7
    iget-object v0, v1, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v7, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-eqz v8, :cond_f

    return-object v5

    :cond_f
    :goto_8
    const/16 v0, 0x64

    if-le v10, v0, :cond_10

    const-string v0, "We have tried too many times and can\'t decode a frame!"

    .line 422
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_10
    move v0, v10

    goto/16 :goto_0

    .line 427
    :cond_11
    iput v8, v5, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;->retCode:I

    return-object v5
.end method

.method private isValid()Z
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private parseMediaFormat(Landroid/media/MediaFormat;)V
    .locals 2

    const-string v0, "channel-count"

    .line 433
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_channelCount:I

    :cond_0
    const-string v0, "sample-rate"

    .line 435
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 436
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sampleRate:I

    :cond_1
    const-string v0, "pcm-encoding"

    .line 437
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 438
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_pcmEncoding:I

    :cond_2
    return-void
.end method

.method private setupDecoder(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "NvAndroidAudioFileReader"

    const/4 v1, 0x0

    .line 244
    :try_start_0
    invoke-static {p1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    iput-object p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    .line 245
    iget-object v2, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_format:Landroid/media/MediaFormat;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v3, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 246
    iget-object p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    const/4 p1, 0x1

    .line 247
    iput-boolean p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderStarted:Z

    .line 250
    iget-object v2, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    .line 251
    iget-object v2, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderOutputBuffers:[Ljava/nio/ByteBuffer;

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input buffer count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderInputBuffers:[Ljava/nio/ByteBuffer;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Output buffer count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderOutputBuffers:[Ljava/nio/ByteBuffer;

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

    .line 257
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

    .line 258
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 259
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidAudioFileReader;->cleanupDecoder()V

    return v1
.end method


# virtual methods
.method public closeFile()V
    .locals 2

    .line 140
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidAudioFileReader;->cleanupDecoder()V

    .line 142
    iget-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    const/4 v1, -0x1

    .line 145
    iput v1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_audioTrackIndex:I

    .line 146
    iput-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_format:Landroid/media/MediaFormat;

    const-wide/16 v0, 0x0

    .line 147
    iput-wide v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_duration:J

    :cond_0
    return-void
.end method

.method public getNextAudioFrameForPlayback()Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;
    .locals 3

    .line 216
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidAudioFileReader;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    new-instance p0, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;

    invoke-direct {p0}, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;-><init>()V

    const/4 v0, 0x1

    .line 218
    iput v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;->retCode:I

    return-object p0

    .line 223
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidAudioFileReader;->decodeNextFrame()Lcom/cdv/io/NvAndroidAudioFileReader$AudioFrame;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NvAndroidAudioFileReader"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidAudioFileReader;->cleanupDecoder()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasDecoderSetupFailed()Z
    .locals 0

    .line 135
    iget-boolean p0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderSetupFailed:Z

    return p0
.end method

.method public openFile(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 8

    .line 72
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidAudioFileReader;->isValid()Z

    move-result v0

    const-string v1, "NvAndroidAudioFileReader"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "You can\'t call OpenFile() twice!"

    .line 73
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 78
    :cond_0
    invoke-static {p2, p1}, Lcom/cdv/utils/NvAndroidUtils;->createMediaExtractorFromMediaFilePath(Landroid/content/Context;Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object p2

    iput-object p2, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    if-nez p2, :cond_1

    return v2

    .line 84
    :cond_1
    invoke-virtual {p2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p2

    move v0, v2

    :goto_0
    const-string v3, "): "

    const-string v4, "mime"

    if-ge v0, p2, :cond_3

    .line 86
    iget-object v5, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {v5, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v5

    .line 87
    invoke-virtual {v5, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "audio/"

    .line 88
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Extractor selected track "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_audioTrackIndex:I

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_3
    :goto_1
    iget p2, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_audioTrackIndex:I

    if-gez p2, :cond_4

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to find a audio track from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidAudioFileReader;->closeFile()V

    return v2

    .line 102
    :cond_4
    iget-object p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1, p2}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 103
    iget-object p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    iget p2, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_audioTrackIndex:I

    invoke-virtual {p1, p2}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_format:Landroid/media/MediaFormat;

    :try_start_0
    const-string p2, "durationUs"

    .line 112
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_duration:J

    .line 113
    iget-object p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_format:Landroid/media/MediaFormat;

    invoke-virtual {p1, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Selected audio track "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_audioTrackIndex:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_format:Landroid/media/MediaFormat;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", duration(us): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_duration:J

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    iput-boolean v2, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderSetupFailed:Z

    .line 124
    invoke-direct {p0, p1}, Lcom/cdv/io/NvAndroidAudioFileReader;->setupDecoder(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_5

    .line 125
    iput-boolean p2, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoderSetupFailed:Z

    .line 126
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidAudioFileReader;->closeFile()V

    return v2

    :cond_5
    return p2

    :catch_0
    move-exception p1

    .line 117
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    invoke-virtual {p0}, Lcom/cdv/io/NvAndroidAudioFileReader;->closeFile()V

    return v2
.end method

.method public startPlayback(J)I
    .locals 5

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartPlayback() called, timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NvAndroidAudioFileReader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidAudioFileReader;->isValid()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    return v2

    :cond_0
    const-wide/16 v3, 0x0

    .line 159
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 160
    iget-wide v3, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_duration:J

    cmp-long v0, p1, v3

    if-ltz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x2

    .line 165
    :try_start_0
    iget-object v2, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_extractor:Landroid/media/MediaExtractor;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Seek to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-boolean p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sawInputEOS:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_sawOutputEOS:Z

    if-eqz p1, :cond_2

    goto :goto_0

    .line 181
    :cond_2
    iget-boolean p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_inputBufferQueued:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_5

    .line 183
    :try_start_1
    iget-object p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_decoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    :catch_0
    :try_start_2
    iput-boolean v3, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_inputBufferQueued:Z

    .line 189
    iput v3, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_pendingInputFrameCount:I

    const-string p0, "Audio decoder has been flushed."

    .line 191
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 173
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/cdv/io/NvAndroidAudioFileReader;->cleanupDecoder()V

    .line 174
    iget-object p1, p0, Lcom/cdv/io/NvAndroidAudioFileReader;->m_format:Landroid/media/MediaFormat;

    const-string p2, "mime"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 175
    invoke-direct {p0, p1}, Lcom/cdv/io/NvAndroidAudioFileReader;->setupDecoder(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const-string p0, "Decoder has been resetuped."

    .line 179
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_5
    :goto_1
    return v3

    :catch_1
    move-exception p0

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method
