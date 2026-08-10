.class public Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;
.super Ljava/lang/Object;
.source "MediaAvcVideoEncoder.java"


# static fields
.field private static final DEFAULT_VIDEO_FRAME_RATE:I = 0x1e

.field private static final ONE_MILLISECOND:J = 0x3e8L

.field private static final ONE_SECOND:J = 0xf4240L

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TIMEOUT_US:J = 0x2710L

.field private static final VIDEO_BIT_RATE_COEFFICIENT:F = 0.5f

.field private static final VIDEO_COLOR_FORMAT:I = 0x13

.field private static final VIDEO_I_FRAME_INTERVAL:F = 0.5f

.field private static final VIDEO_MIME_TYPE:Ljava/lang/String; = "video/avc"


# instance fields
.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mCaptureRate:I

.field private mFrameRate:I

.field private mInputEnd:Z

.field private mMediaMuxer:Landroid/media/MediaMuxer;

.field private mOrientation:I

.field private mOutputEnd:Z

.field private mStarted:Z

.field private mVideoCodecInfo:Landroid/media/MediaCodecInfo;

.field private mVideoEncoder:Landroid/media/MediaCodec;

.field private mVideoTrack:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 56
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mFrameRate:I

    return-void
.end method

.method private caculateBitRate(II)I
    .locals 2

    mul-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p1, p2

    .line 227
    iget p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mFrameRate:I

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    .line 229
    sget-object p1, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    int-to-float v0, p0

    const/high16 v1, 0x44800000    # 1024.0f

    div-float/2addr v0, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, "bitRate = %5.2f[Mbps]"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private calculatePTU(I)J
    .locals 4

    int-to-long v0, p1

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    .line 193
    iget p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mFrameRate:I

    int-to-long p0, p0

    div-long/2addr v0, p0

    return-wide v0
.end method

.method private createMuxer(Ljava/io/FileDescriptor;)Landroid/media/MediaMuxer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMuxer fd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    new-instance v0, Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    .line 90
    iget p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mOrientation:I

    invoke-virtual {v0, p0}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    return-object v0
.end method

.method private createMuxer(Ljava/lang/String;)Landroid/media/MediaMuxer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createMuxer path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 73
    new-instance v0, Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    .line 75
    iget p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mOrientation:I

    invoke-virtual {v0, p0}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    return-object v0
.end method

.method private encodeInternal([BJ)Z
    .locals 10

    .line 235
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    const/4 v0, -0x1

    if-gt v4, v0, :cond_0

    .line 237
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "no video encoder input buffer"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v4}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 242
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "get InputBuffer failed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 247
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mInputEnd:Z

    .line 248
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 250
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x4

    move-wide v7, p2

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1

    .line 253
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 254
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 256
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    array-length v6, p1

    const/4 v9, 0x0

    move-wide v7, p2

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :goto_1
    return v1
.end method

.method private muxerInternal(I)Z
    .locals 7

    .line 264
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mOutputEnd:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 265
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 267
    sget-object v1, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no video encoder output buffer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, -0x2

    if-ne v0, v2, :cond_1

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 273
    sget-object v1, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "muxer mediaFormat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mVideoTrack:I

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    goto :goto_0

    :cond_1
    const/4 v2, -0x3

    if-ne v0, v2, :cond_2

    .line 279
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "video encoder output buffers changed "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_2
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-nez v2, :cond_3

    .line 284
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "get OutputBuffer failed"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_3
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v3, :cond_4

    .line 288
    sget-object v3, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeSampleData frameNum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", presentationTimeUs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v5, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 290
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    iget v4, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mVideoTrack:I

    iget-object v5, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v3, v4, v2, v5}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 293
    :cond_4
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_5

    .line 294
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mOutputEnd:Z

    .line 295
    sget-object v2, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "video encoder: EOS"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 298
    :cond_5
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 300
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mInputEnd:Z

    if-eqz v0, :cond_6

    goto/16 :goto_0

    :cond_6
    return v1
.end method

.method private selectCodecInfo(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 9

    .line 95
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 96
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 97
    array-length v3, v0

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    goto :goto_3

    .line 103
    :cond_0
    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_4

    .line 104
    aget-object v5, v0, v4

    .line 105
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 108
    :cond_1
    invoke-virtual {v5}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    move v7, v1

    .line 109
    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_3

    .line 110
    aget-object v8, v6, v7

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v2, v5

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 116
    :cond_4
    invoke-direct {p0, v2}, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->showSupportedColorFormat(Landroid/media/MediaCodecInfo;)V

    return-object v2

    .line 98
    :cond_5
    :goto_3
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Codec Info empty"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v2
.end method

.method private showSupportedColorFormat(Landroid/media/MediaCodecInfo;)V
    .locals 5

    if-nez p1, :cond_0

    .line 122
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mediaCodecInfo is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "video/avc"

    .line 126
    invoke-virtual {p1, p0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p0

    .line 127
    iget-object p0, p0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length p1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget v1, p0, v0

    .line 128
    sget-object v2, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "supported color format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private startEncoder(II)Z
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mVideoCodecInfo:Landroid/media/MediaCodecInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 198
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mVideoCodecInfo is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 202
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->startEncoderImpl(II)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 204
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v1
.end method

.method private startEncoderImpl(II)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "video/avc"

    .line 210
    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "color-format"

    const/16 v3, 0x13

    .line 211
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 212
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->caculateBitRate(II)I

    move-result p1

    const-string p2, "bitrate"

    invoke-virtual {v1, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 213
    iget p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mFrameRate:I

    const-string p2, "frame-rate"

    invoke-virtual {v1, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "i-frame-interval"

    const/high16 p2, 0x3f000000    # 0.5f

    .line 214
    invoke-virtual {v1, p1, p2}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 215
    sget-object p1, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoder mediaFormat: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 217
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    .line 218
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createEncoder name: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 220
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, v1, p2, p2, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 221
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->start()V

    return v0
.end method


# virtual methods
.method public encode([BIII)Z
    .locals 2

    .line 179
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mStarted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 180
    invoke-direct {p0, p3, p4}, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->startEncoder(II)Z

    move-result p3

    iput-boolean p3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mStarted:Z

    if-nez p3, :cond_0

    .line 182
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "start Encoder And Muxer failed"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 187
    :cond_0
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->calculatePTU(I)J

    move-result-wide p3

    .line 189
    invoke-direct {p0, p1, p3, p4}, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->encodeInternal([BJ)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->muxerInternal(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public initEncoder(Ljava/io/FileDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initEncoder"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 82
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->createMuxer(Ljava/io/FileDescriptor;)Landroid/media/MediaMuxer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    const-string p1, "video/avc"

    .line 83
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->selectCodecInfo(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mVideoCodecInfo:Landroid/media/MediaCodecInfo;

    return-void
.end method

.method public initEncoder(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "initEncoder"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 66
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 67
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->createMuxer(Ljava/lang/String;)Landroid/media/MediaMuxer;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    const-string p1, "video/avc"

    .line 68
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->selectCodecInfo(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mVideoCodecInfo:Landroid/media/MediaCodecInfo;

    return-void
.end method

.method public setCaptureRate(I)V
    .locals 0

    .line 175
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mCaptureRate:I

    return-void
.end method

.method public setFrameRate(I)V
    .locals 0

    .line 171
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mFrameRate:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 162
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mOrientation:I

    .line 163
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    if-nez p0, :cond_0

    .line 164
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMediaMuxer is null | orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 167
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    return-void
.end method

.method public unInitEncoder()V
    .locals 3

    .line 133
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInitEncoder"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 134
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mStarted:Z

    .line 135
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mInputEnd:Z

    .line 136
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mOutputEnd:Z

    const/4 v1, 0x0

    .line 138
    :try_start_0
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    if-eqz v2, :cond_0

    const-string v2, "stop VideoEncoder start"

    .line 139
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 140
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    .line 141
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 142
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mVideoEncoder:Landroid/media/MediaCodec;

    const-string v2, "stop VideoEncoder end"

    .line 143
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_1

    .line 150
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "stop MediaMuxer start"

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->stop()V

    .line 152
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->release()V

    .line 153
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/encoder/MediaAvcVideoEncoder;->mMediaMuxer:Landroid/media/MediaMuxer;

    const-string p0, "stop MediaMuxer end"

    .line 154
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 157
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
