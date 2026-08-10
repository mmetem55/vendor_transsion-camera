.class public Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;
.super Lcom/transsion/camera/utils/encoder/MediaEncoder;
.source "MediaVideoEncoder.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field protected static recognizedFormats:[I


# instance fields
.field private final mHeight:I

.field private mRenderHandler:Lcom/transsion/camera/utils/encoder/RenderHandler;

.field private mSurface:Landroid/view/Surface;

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f000789

    aput v2, v0, v1

    .line 222
    sput-object v0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->recognizedFormats:[I

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;III)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 29
    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;-><init>(Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaFrameTimeStamp;III)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaFrameTimeStamp;III)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/utils/encoder/MediaEncoder;-><init>(Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaFrameTimeStamp;)V

    .line 34
    sget-object p1, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "MediaVideoEncoder: "

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 35
    iput p4, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mWidth:I

    .line 36
    iput p5, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mHeight:I

    .line 37
    const-class p1, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p6}, Lcom/transsion/camera/utils/encoder/RenderHandler;->createHandler(Ljava/lang/String;I)Lcom/transsion/camera/utils/encoder/RenderHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mRenderHandler:Lcom/transsion/camera/utils/encoder/RenderHandler;

    return-void
.end method

.method private calcBitRate()I
    .locals 4

    .line 150
    iget v0, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40c80000    # 6.25f

    mul-float/2addr v0, v1

    iget p0, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mHeight:I

    int-to-float p0, p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    .line 151
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    int-to-float v2, p0

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "bitrate=%5.2f[Mbps]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private static final isRecognizedViewoFormat(I)Z
    .locals 4

    .line 231
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecognizedViewoFormat:colorFormat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 232
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->recognizedFormats:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    .line 234
    sget-object v3, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->recognizedFormats:[I

    aget v3, v3, v2

    if-ne v3, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return v1
.end method

.method protected static final selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I
    .locals 5

    .line 193
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "selectColorFormat: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 197
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 198
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setPriority(I)V

    const/4 v0, 0x0

    move v2, v0

    .line 203
    :goto_0
    iget-object v3, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 204
    aget v3, v3, v2

    .line 205
    invoke-static {v3}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->isRecognizedViewoFormat(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 212
    sget-object v1, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t find a good color format for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " / "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_2
    return v0

    :catchall_0
    move-exception p0

    .line 200
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 201
    throw p0
.end method

.method protected static final selectVideoCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 9

    .line 162
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "selectVideoCodec:"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 167
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 169
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 173
    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    move v5, v1

    .line 174
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 175
    aget-object v6, v4, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 176
    sget-object v6, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "codec:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",MIME="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 177
    invoke-static {v3, p0}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public frameAvailableSoon(I[F)Z
    .locals 8

    .line 41
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mRenderHandler:Lcom/transsion/camera/utils/encoder/RenderHandler;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/RenderHandler;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 43
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->frameAvailableSoon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    iget-wide v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mFirstFrameTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const-wide/16 v2, 0x3e8

    if-nez v1, :cond_1

    .line 45
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mFirstFrameTime:J

    .line 47
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    div-long/2addr v4, v2

    .line 48
    iget-wide v6, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mFirstFrameTime:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mTotalPauseTime:J

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mPresentationTime:J

    .line 51
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mRenderHandler:Lcom/transsion/camera/utils/encoder/RenderHandler;

    iget-wide v4, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mPresentationTime:J

    mul-long/2addr v4, v2

    invoke-virtual {v1, p1, p2, v4, v5}, Lcom/transsion/camera/utils/encoder/RenderHandler;->draw(I[FJ)V

    :cond_2
    return v0
.end method

.method protected prepare()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "prepare: "

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 84
    iput v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mTrackIndex:I

    const/4 v1, 0x0

    .line 85
    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsEOS:Z

    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMuxerStarted:Z

    const-string v1, "video/avc"

    .line 87
    invoke-static {v1}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->selectVideoCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "Unable to find an appropriate codec for video/avc"

    .line 89
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 92
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selected codec: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 94
    iget v2, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mWidth:I

    iget v3, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mHeight:I

    invoke-static {v1, v2, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    const v3, 0x7f000789

    const-string v4, "color-format"

    .line 95
    invoke-virtual {v2, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 96
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->calcBitRate()I

    move-result v3

    const-string v4, "bitrate"

    invoke-virtual {v2, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v3, 0x19

    const-string v4, "frame-rate"

    .line 97
    invoke-virtual {v2, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v3, "i-frame-interval"

    const/4 v4, 0x1

    .line 98
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "format: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    .line 102
    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 105
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mSurface:Landroid/view/Surface;

    .line 106
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    const-string v1, "prepare finishing"

    .line 107
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    if-eqz v0, :cond_1

    .line 110
    :try_start_0
    invoke-interface {v0, p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;->onPrepared(Lcom/transsion/camera/utils/encoder/MediaEncoder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 112
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "prepare:"

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected release()V
    .locals 4

    .line 123
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "release start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 124
    invoke-super {p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->release()V

    .line 125
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mWeakMuxer:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->enCoderLock()V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    if-eqz v0, :cond_2

    const/4 v2, -0x1

    .line 133
    :try_start_0
    invoke-interface {v0, p0, v2}, Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;->onStopped(Lcom/transsion/camera/utils/encoder/MediaEncoder;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 135
    sget-object v2, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "failed onStopped"

    invoke-static {v2, v3, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    .line 139
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 140
    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mSurface:Landroid/view/Surface;

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mRenderHandler:Lcom/transsion/camera/utils/encoder/RenderHandler;

    if-eqz v0, :cond_4

    .line 143
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/RenderHandler;->release()V

    .line 144
    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mRenderHandler:Lcom/transsion/camera/utils/encoder/RenderHandler;

    .line 146
    :cond_4
    sget-object p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "release end"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setEglContext(Landroid/opengl/EGLContext;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mRenderHandler:Lcom/transsion/camera/utils/encoder/RenderHandler;

    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->mSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lcom/transsion/camera/utils/encoder/RenderHandler;->setEglContext(Landroid/opengl/EGLContext;Landroid/view/Surface;Z)V

    return-void
.end method

.method protected signalEndOfInputStream()V
    .locals 3

    .line 243
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "sending EOS to encoder"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 249
    sget-object v1, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "sending EOS onError"

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->reset()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 253
    :catch_1
    invoke-virtual {p0}, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;->release()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 255
    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsEOS:Z

    return-void
.end method
