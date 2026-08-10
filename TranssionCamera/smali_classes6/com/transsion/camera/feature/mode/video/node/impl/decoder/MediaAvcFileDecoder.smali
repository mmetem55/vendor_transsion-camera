.class public Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;
.super Ljava/lang/Object;
.source "MediaAvcFileDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder$IMediaAvcDataCallBack;
    }
.end annotation


# static fields
.field private static final CACHE_CAPACITY:I = 0xc

.field private static final DEFAULT_SAMPLE_TIME_PER_FRAME:J = 0x20c5L

.field private static final DEFAULT_TIMEOUT_US:J = 0x2710L

.field private static final DEQUEUE_BUFFER_MAX_RETRY_TIMES:I = 0x1e

.field private static final EXPECTED_VIDEO_DURATION:I = 0x9

.field private static final MAX_DIFFERENCE_BETWEEN_INPUT_AND_OUTPUT:I = 0xa

.field private static final PIXEL_STRIDE_1:I = 0x1

.field private static final SKIP_FRAMES_ONE_TIME_960:I = 0x8

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAvcDataCallBack:Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder$IMediaAvcDataCallBack;

.field private mDecodeColorFormat:I

.field private mDecoder:Landroid/media/MediaCodec;

.field private mDecoderThread:Ljava/lang/Thread;

.field private mDropOutputFrame:I

.field private mExtractor:Landroid/media/MediaExtractor;

.field private mFrameRate:I

.field private mHasKeepFrames:Z

.field private mHasReBack:Z

.field private mImageFormat:I

.field private mInputEOS:Z

.field private mInputFrameCount:I

.field private mKeepFrameCount:I

.field private mKeepFrameFrom:I

.field private mKeepFrameTo:I

.field private mMediaFormat:Landroid/media/MediaFormat;

.field private mMotionDetectInputFrameNum:I

.field private mMotionDetectOutputFrameNum:I

.field private mMotionDetected:Z

.field private mOutputEOS:Z

.field private mOutputFrameCount:I

.field private mRatio:I

.field private mRetryTime:I

.field private mSampleTimeCache:Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipFrames:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f420888

    .line 56
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecodeColorFormat:I

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoderThread:Ljava/lang/Thread;

    .line 61
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    .line 62
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    .line 63
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mExtractor:Landroid/media/MediaExtractor;

    .line 65
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mAvcDataCallBack:Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder$IMediaAvcDataCallBack;

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mRetryTime:I

    const/4 v0, 0x4

    .line 76
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mRatio:I

    const/16 v1, 0x1e

    .line 77
    iput v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mFrameRate:I

    .line 79
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mSkipFrames:I

    const/16 v0, 0x1f

    .line 80
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameFrom:I

    const/16 v0, 0x5b

    .line 81
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameTo:I

    const/16 v0, 0x3c

    .line 82
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameCount:I

    .line 95
    new-instance v0, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mSampleTimeCache:Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;

    return-void
.end method

.method private correctKeepFrameRange(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    .line 157
    :try_start_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->getTotalFrameCount(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 159
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    move p1, v0

    :goto_0
    if-gtz p1, :cond_0

    .line 162
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "invalid video!!!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 166
    :cond_0
    iget v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mFrameRate:I

    mul-int/lit8 v1, v1, 0x9

    .line 167
    iget v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mRatio:I

    div-int v3, v1, v2

    if-gt p1, v3, :cond_1

    .line 168
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameFrom:I

    .line 169
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameTo:I

    .line 170
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameCount:I

    goto :goto_2

    .line 171
    :cond_1
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameCount:I

    iget v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mSkipFrames:I

    mul-int v4, v2, v0

    sub-int v4, v1, v4

    mul-int/2addr v4, v3

    add-int/2addr v0, v4

    if-ge p1, v0, :cond_3

    mul-int/2addr v1, v3

    sub-int/2addr v1, p1

    int-to-double v0, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v4

    mul-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    int-to-double v2, v3

    div-double/2addr v0, v2

    .line 172
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameCount:I

    sub-int/2addr p1, v0

    .line 173
    iget v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mSkipFrames:I

    div-int/2addr p1, v1

    int-to-double v2, p1

    const/16 p1, 0x8

    if-ne p1, v1, :cond_2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    goto :goto_1

    :cond_2
    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    :goto_1
    mul-double/2addr v2, v4

    double-to-int p1, v2

    .line 174
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameFrom:I

    add-int/2addr p1, v0

    .line 175
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameTo:I

    .line 178
    :cond_3
    :goto_2
    sget-object p1, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "correctKeepFrameRange, from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameFrom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameTo:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;II)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 345
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-gt v2, v4, :cond_1

    .line 347
    iget v1, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mRetryTime:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mRetryTime:I

    .line 348
    iget v4, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mOutputFrameCount:I

    if-lez v4, :cond_0

    const/16 v4, 0x1e

    if-le v1, v4, :cond_0

    .line 349
    iput-boolean v3, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mOutputEOS:Z

    .line 351
    :cond_0
    sget-object v1, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no video decoder output buffer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRetryTime: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mRetryTime:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v4, 0x0

    .line 356
    iput v4, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mRetryTime:I

    .line 358
    iget v5, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    .line 359
    iput-boolean v3, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mOutputEOS:Z

    .line 361
    :cond_2
    iget v5, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDropOutputFrame:I

    if-lez v5, :cond_3

    sub-int/2addr v5, v3

    .line 362
    iput v5, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDropOutputFrame:I

    .line 363
    sget-object v1, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dequeueOutputBuffer dropOutputFrame: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDropOutputFrame:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mOutputFrameCount: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mOutputFrameCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 365
    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void

    .line 368
    :cond_3
    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v1, :cond_8

    .line 369
    iget-object v1, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1, v2}, Landroid/media/MediaCodec;->getOutputImage(I)Landroid/media/Image;

    move-result-object v1

    if-nez v1, :cond_4

    .line 371
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "image is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 375
    :cond_4
    invoke-virtual {v1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v5

    if-ne v3, v5, :cond_5

    const/16 v6, 0x2008

    .line 377
    iput v6, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mImageFormat:I

    .line 378
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->parseYU12(Landroid/media/Image;)[B

    move-result-object v6

    goto :goto_0

    :cond_5
    const/16 v6, 0x11

    .line 380
    iput v6, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mImageFormat:I

    .line 381
    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->parseNV21(Landroid/media/Image;)[B

    move-result-object v6

    :goto_0
    move-object v9, v6

    .line 384
    iget v6, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mOutputFrameCount:I

    add-int/2addr v6, v3

    iput v6, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mOutputFrameCount:I

    .line 385
    iget-boolean v7, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetected:Z

    if-nez v7, :cond_6

    iget v7, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameFrom:I

    if-ge v6, v7, :cond_6

    move v13, v3

    goto :goto_1

    :cond_6
    move v13, v4

    .line 386
    :goto_1
    iget v3, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetectOutputFrameNum:I

    invoke-direct {p0, v6, v3}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->shouldKeepFrames(II)Z

    move-result v14

    .line 387
    sget-object v3, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "input FrameNum:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputFrameCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", output FrameNum:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mOutputFrameCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", PixelStride:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", motionDetect: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", keepFrame: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 393
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mAvcDataCallBack:Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder$IMediaAvcDataCallBack;

    if-eqz v7, :cond_7

    .line 394
    iget v8, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mOutputFrameCount:I

    iget v12, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mImageFormat:I

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-interface/range {v7 .. v14}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder$IMediaAvcDataCallBack;->decodedAvcData(I[BIIIZZ)V

    .line 398
    :cond_7
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 399
    iget-object v0, v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v2, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_8
    return-void
.end method

.method private getTotalFrameCount(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    new-instance p0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v0, 0x0

    .line 136
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v1, 0x20

    .line 138
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 139
    sget-object v2, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total frame count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 141
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    return p1

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 145
    :try_start_1
    sget-object v2, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTotalFrameCount exception videoFilePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", e: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-static {v2, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    return v0

    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 150
    throw p1
.end method

.method private isColorFormatSupported(ILandroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 3

    .line 435
    iget-object p0, p2, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length p2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    aget v2, p0, v1

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private parseNV21(Landroid/media/Image;)[B
    .locals 4

    .line 481
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    .line 482
    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 483
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 486
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    const/4 v2, 0x2

    aget-object p1, p1, v2

    .line 487
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 488
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    .line 490
    new-array v3, v3, [B

    .line 491
    invoke-virtual {p0, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 492
    invoke-virtual {p1, v3, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object v3
.end method

.method private parseYU12(Landroid/media/Image;)[B
    .locals 7

    .line 458
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    .line 459
    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 460
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 463
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    .line 464
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 465
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 468
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p1

    const/4 v4, 0x2

    aget-object p1, p1, v4

    .line 469
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 470
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    add-int v5, v1, v3

    add-int v6, v5, v4

    .line 472
    new-array v6, v6, [B

    .line 473
    invoke-virtual {p0, v6, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 474
    invoke-virtual {v2, v6, v1, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 475
    invoke-virtual {p1, v6, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object v6
.end method

.method private queueInputBuffer()V
    .locals 11

    .line 249
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    const/4 v0, -0x1

    if-gt v4, v0, :cond_0

    .line 251
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no video decoder input buffer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, v4}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 256
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "get InputBuffer failed"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mExtractor:Landroid/media/MediaExtractor;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v1

    const/4 v10, 0x1

    if-gtz v1, :cond_2

    .line 261
    iput-boolean v10, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputEOS:Z

    .line 262
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_2

    .line 266
    :cond_2
    iget v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputFrameCount:I

    if-eqz v3, :cond_4

    .line 267
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->reBackIfNeeded()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 269
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v0

    move v6, v0

    goto :goto_0

    .line 271
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->skipFramesIfNeeded()V

    move v6, v1

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_4
    move v6, v1

    .line 275
    :goto_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v0

    .line 276
    sget-object v3, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "queueInputBuffer sampleTime: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 277
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-wide v7, v0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    if-nez v2, :cond_5

    .line 279
    iget v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputFrameCount:I

    add-int/2addr v2, v10

    iput v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputFrameCount:I

    .line 281
    :cond_5
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mHasReBack:Z

    if-nez v2, :cond_6

    .line 282
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mSampleTimeCache:Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;

    iget p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputFrameCount:I

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p0, v0}, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    return-void
.end method

.method private reBackIfNeeded()Z
    .locals 9

    .line 288
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetected:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mHasReBack:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 289
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mHasReBack:Z

    .line 290
    iget v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetectInputFrameNum:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetectOutputFrameNum:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDropOutputFrame:I

    add-int/lit8 v1, v1, 0x3

    sub-int/2addr v1, v0

    .line 293
    sget-object v2, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reBackIfNeeded start: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 295
    iget v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputFrameCount:I

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputFrameCount:I

    .line 296
    iput v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetectInputFrameNum:I

    add-int/lit8 v4, v3, -0x1

    .line 297
    iput v4, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mOutputFrameCount:I

    .line 298
    iput v4, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetectOutputFrameNum:I

    .line 301
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mSampleTimeCache:Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;

    invoke-virtual {v4, v3}, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 302
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mSampleTimeCache:Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;

    iget v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputFrameCount:I

    invoke-virtual {v1, v3}, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-string v3, "reBack sample time is not cached"

    .line 304
    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 305
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v3

    .line 306
    iget v5, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mSkipFrames:I

    mul-int/2addr v1, v5

    int-to-long v5, v1

    const-wide/16 v7, 0x20c5

    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    .line 308
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mSampleTimeCache:Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/video/node/impl/cache/TemporaryCache;->clear()V

    .line 310
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mExtractor:Landroid/media/MediaExtractor;

    const/4 v5, 0x2

    invoke-virtual {v1, v3, v4, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reBackIfNeeded end mInputFrameCount: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputFrameCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mOutputFrameCount: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mOutputFrameCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private resetState()V
    .locals 1

    const/4 v0, 0x0

    .line 215
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputEOS:Z

    .line 216
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mOutputEOS:Z

    .line 217
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mHasReBack:Z

    .line 218
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mHasKeepFrames:Z

    .line 219
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetected:Z

    .line 220
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mRetryTime:I

    .line 221
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDropOutputFrame:I

    .line 222
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputFrameCount:I

    .line 223
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mOutputFrameCount:I

    .line 224
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetectInputFrameNum:I

    .line 225
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetectOutputFrameNum:I

    return-void
.end method

.method private selectTrack(Landroid/media/MediaExtractor;)I
    .locals 4

    .line 444
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 446
    invoke-virtual {p1, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "mime"

    .line 447
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "video/"

    .line 448
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 449
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mExtractor selected track "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private shouldKeepFrames(II)Z
    .locals 3

    .line 332
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mHasKeepFrames:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameFrom:I

    if-lt p1, v0, :cond_1

    .line 333
    iget p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameTo:I

    if-ge p1, p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 335
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetected:Z

    if-eqz v0, :cond_2

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameCount:I

    if-gt p1, p2, :cond_2

    move v1, v2

    :cond_2
    if-eqz v1, :cond_3

    .line 338
    iput-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mHasKeepFrames:Z

    :cond_3
    return v1
.end method

.method private signalEOS()V
    .locals 8

    .line 404
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mAvcDataCallBack:Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder$IMediaAvcDataCallBack;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 405
    iget v5, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mImageFormat:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder$IMediaAvcDataCallBack;->decodedAvcData(I[BIIIZZ)V

    :cond_0
    return-void
.end method

.method private skipFramesIfNeeded()V
    .locals 3

    .line 321
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputFrameCount:I

    iget v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetectInputFrameNum:I

    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->shouldKeepFrames(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 324
    :cond_0
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mSkipFrames:I

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 327
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public deInitDecoder()V
    .locals 2

    .line 229
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "deInitDecoder"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->resetState()V

    .line 231
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 233
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 234
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 238
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mExtractor:Landroid/media/MediaExtractor;

    :cond_1
    return-void
.end method

.method public decodeMediaData()V
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoderThread:Ljava/lang/Thread;

    if-eqz p0, :cond_0

    .line 244
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public initDecoder(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDecoder file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->resetState()V

    .line 103
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->correctKeepFrameRange(Ljava/lang/String;)V

    .line 105
    new-instance v1, Landroid/media/MediaExtractor;

    invoke-direct {v1}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mExtractor:Landroid/media/MediaExtractor;

    .line 106
    invoke-virtual {v1, p1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-direct {p0, v1}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->selectTrack(Landroid/media/MediaExtractor;)I

    move-result v1

    if-gez v1, :cond_0

    .line 109
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No video track found in:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 113
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    const-string v1, "mime"

    .line 114
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDecoder mMediaFormat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    invoke-static {p1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createDecoder name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v1, 0x13

    .line 119
    iput v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecodeColorFormat:I

    .line 121
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->isColorFormatSupported(ILandroid/media/MediaCodecInfo$CodecCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 122
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    iget v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecodeColorFormat:I

    const-string v2, "color-format"

    invoke-virtual {p1, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set decode color format to type "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecodeColorFormat:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unable to set decode color format, color format type "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecodeColorFormat:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not supported"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 128
    :goto_0
    new-instance p1, Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoderThread:Ljava/lang/Thread;

    const/4 p0, 0x1

    return p0
.end method

.method public onMotionDetected(I)V
    .locals 2

    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetected:Z

    .line 208
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputFrameCount:I

    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetectInputFrameNum:I

    .line 209
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetectOutputFrameNum:I

    .line 210
    sget-object p1, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMotionDetected mMotionDetectInputFrameNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetectInputFrameNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMotionDetectOutputFrameNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMotionDetectOutputFrameNum:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 7

    .line 412
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "decodeMediaData run start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 414
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 416
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    const-string v2, "width"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 417
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    const-string v3, "height"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 419
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mMediaFormat:Landroid/media/MediaFormat;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v5, v6}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 420
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V

    .line 422
    :goto_0
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mOutputEOS:Z

    if-nez v3, :cond_1

    .line 423
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mInputEOS:Z

    if-nez v3, :cond_0

    .line 424
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->queueInputBuffer()V

    .line 426
    :cond_0
    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;II)V

    goto :goto_0

    .line 428
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->signalEOS()V

    .line 430
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "decodeMediaData run end"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setDecoderDataCallBack(Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder$IMediaAvcDataCallBack;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mAvcDataCallBack:Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder$IMediaAvcDataCallBack;

    return-void
.end method

.method public setFrameRate(I)V
    .locals 3

    .line 186
    sget-object v0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFrameRate rate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 187
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mFrameRate:I

    return-void
.end method

.method public setInterpolateRatio(I)V
    .locals 0

    .line 191
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mRatio:I

    return-void
.end method

.method public setKeepFrameRange(II)V
    .locals 2

    .line 200
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameFrom:I

    .line 201
    iput p2, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameTo:I

    sub-int v0, p2, p1

    .line 202
    iput v0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mKeepFrameCount:I

    .line 203
    sget-object p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setKeepFrameRange, from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", to:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setSkipFramesOnce(I)V
    .locals 2

    .line 195
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mSkipFrames:I

    .line 196
    sget-object p1, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSkipFramesOnce, skip frames:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/mode/video/node/impl/decoder/MediaAvcFileDecoder;->mSkipFrames:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
