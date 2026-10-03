.class public Lcom/transsion/motionphoto/PreviewFrameEncoder;
.super Ljava/lang/Object;
.source "PreviewFrameEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/motionphoto/PreviewFrameEncoder$RawFrame;
    }
.end annotation


# static fields
.field private static final I_FRAME_INTERVAL:I = 0x1

.field private static final MAX_FAILURES:I = 0x5

.field private static final MAX_PIXELS:I = 0x1fe000

.field private static final MIME:Ljava/lang/String; = "video/avc"

.field private static final TAG:Ljava/lang/String; = "PreviewFrameEncoder"


# instance fields
.field private final bitRate:I

.field private final circularBuffer:Lcom/transsion/motionphoto/CircularSampleRecorder;

.field private encHeight:I

.field private encWidth:I

.field private volatile encoder:Landroid/media/MediaCodec;

.field private final frameQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/transsion/motionphoto/PreviewFrameEncoder$RawFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final frameRateHz:I

.field private volatile gaveUp:Z

.field private final running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile videoFormat:Landroid/media/MediaFormat;

.field private volatile warnedBadSize:Z

.field private worker:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(JJII)V
    .registers 9

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->encWidth:I

    .line 52
    iput v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->encHeight:I

    .line 53
    iput-boolean v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->warnedBadSize:Z

    .line 54
    iput-boolean v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->gaveUp:Z

    .line 56
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->frameQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 61
    iput p5, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->frameRateHz:I

    .line 62
    iput p6, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->bitRate:I

    .line 63
    new-instance p5, Lcom/transsion/motionphoto/CircularSampleRecorder;

    add-long/2addr p1, p3

    const-wide/16 p3, 0xfa0

    add-long/2addr p1, p3

    invoke-direct {p5, p1, p2}, Lcom/transsion/motionphoto/CircularSampleRecorder;-><init>(J)V

    iput-object p5, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->circularBuffer:Lcom/transsion/motionphoto/CircularSampleRecorder;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/transsion/motionphoto/PreviewFrameEncoder;)V
    .registers 1

    .line 24
    invoke-direct {p0}, Lcom/transsion/motionphoto/PreviewFrameEncoder;->workerLoop()V

    return-void
.end method

.method private drainEncoder()V
    .registers 8

    .line 211
    iget-object v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->encoder:Landroid/media/MediaCodec;

    .line 212
    if-nez v0, :cond_5

    return-void

    .line 213
    :cond_5
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 215
    :goto_a
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    .line 216
    const/4 v3, -0x2

    if-ne v2, v3, :cond_1a

    .line 217
    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->videoFormat:Landroid/media/MediaFormat;

    goto :goto_3e

    .line 218
    :cond_1a
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1e

    .line 219
    return-void

    .line 220
    :cond_1e
    if-ltz v2, :cond_3e

    .line 221
    invoke-virtual {v0, v2}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 222
    iget v4, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    if-eqz v4, :cond_2d

    const/4 v4, 0x1

    goto :goto_2e

    :cond_2d
    move v4, v5

    .line 223
    :goto_2e
    if-eqz v3, :cond_3b

    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-lez v6, :cond_3b

    if-nez v4, :cond_3b

    .line 224
    iget-object v4, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->circularBuffer:Lcom/transsion/motionphoto/CircularSampleRecorder;

    invoke-virtual {v4, v3, v1}, Lcom/transsion/motionphoto/CircularSampleRecorder;->addSample(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 226
    :cond_3b
    invoke-virtual {v0, v2, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 228
    :cond_3e
    :goto_3e
    goto :goto_a
.end method

.method private ensureEncoder(II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->encoder:Landroid/media/MediaCodec;

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->encWidth:I

    if-ne p1, v0, :cond_d

    iget v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->encHeight:I

    if-ne p2, v0, :cond_d

    return-void

    .line 175
    :cond_d
    invoke-direct {p0}, Lcom/transsion/motionphoto/PreviewFrameEncoder;->releaseEncoder()V

    .line 177
    const-string v0, "video/avc"

    invoke-static {v0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    .line 178
    const-string v2, "color-format"

    const/16 v3, 0x15

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 180
    const-string v2, "bitrate"

    iget v3, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->bitRate:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 181
    const-string v2, "frame-rate"

    iget v3, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->frameRateHz:I

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 182
    const-string v2, "i-frame-interval"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 184
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    .line 185
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 186
    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 187
    iput-object v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->encoder:Landroid/media/MediaCodec;

    .line 188
    iput p1, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->encWidth:I

    .line 189
    iput p2, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->encHeight:I

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "encoder (re)initialised for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PreviewFrameEncoder"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method private feedEncoder(Lcom/transsion/motionphoto/PreviewFrameEncoder$RawFrame;)V
    .registers 9

    .line 194
    iget-object v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->encoder:Landroid/media/MediaCodec;

    .line 195
    if-nez v0, :cond_5

    return-void

    .line 196
    :cond_5
    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 197
    if-gez v1, :cond_e

    return-void

    .line 198
    :cond_e
    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 199
    if-nez v2, :cond_15

    return-void

    .line 200
    :cond_15
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 201
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    iget-object v4, p1, Lcom/transsion/motionphoto/PreviewFrameEncoder$RawFrame;->nv12:[B

    array-length v4, v4

    if-ge v3, v4, :cond_59

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "codec input buffer too small ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/transsion/motionphoto/PreviewFrameEncoder$RawFrame;->nv12:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PreviewFrameEncoder"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-wide v4, p1, Lcom/transsion/motionphoto/PreviewFrameEncoder$RawFrame;->timestampUs:J

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 204
    return-void

    .line 206
    :cond_59
    iget-object v3, p1, Lcom/transsion/motionphoto/PreviewFrameEncoder$RawFrame;->nv12:[B

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 207
    iget-object v2, p1, Lcom/transsion/motionphoto/PreviewFrameEncoder$RawFrame;->nv12:[B

    array-length v3, v2

    iget-wide v4, p1, Lcom/transsion/motionphoto/PreviewFrameEncoder$RawFrame;->timestampUs:J

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 208
    return-void
.end method

.method private releaseEncoder()V
    .registers 3

    .line 232
    iget-object v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->encoder:Landroid/media/MediaCodec;

    .line 233
    if-eqz v0, :cond_e

    .line 234
    :try_start_4
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception v1

    .line 235
    :goto_9
    :try_start_9
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_d

    goto :goto_e

    :catchall_d
    move-exception v0

    .line 237
    :cond_e
    :goto_e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->encoder:Landroid/media/MediaCodec;

    .line 238
    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->encWidth:I

    .line 239
    iput v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->encHeight:I

    .line 240
    return-void
.end method

.method private workerLoop()V
    .registers 7

    .line 142
    const/4 v0, 0x0

    move v1, v0

    .line 143
    :goto_2
    iget-object v2, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_55

    .line 146
    :try_start_a
    iget-object v2, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->frameQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/motionphoto/PreviewFrameEncoder$RawFrame;
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_16} :catch_53

    .line 149
    nop

    .line 150
    if-nez v2, :cond_1a

    goto :goto_2

    .line 152
    :cond_1a
    :try_start_1a
    iget v3, v2, Lcom/transsion/motionphoto/PreviewFrameEncoder$RawFrame;->width:I

    iget v4, v2, Lcom/transsion/motionphoto/PreviewFrameEncoder$RawFrame;->height:I

    invoke-direct {p0, v3, v4}, Lcom/transsion/motionphoto/PreviewFrameEncoder;->ensureEncoder(II)V

    .line 153
    invoke-direct {p0, v2}, Lcom/transsion/motionphoto/PreviewFrameEncoder;->feedEncoder(Lcom/transsion/motionphoto/PreviewFrameEncoder$RawFrame;)V

    .line 154
    invoke-direct {p0}, Lcom/transsion/motionphoto/PreviewFrameEncoder;->drainEncoder()V
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_2a

    .line 155
    nop

    .line 168
    move v1, v0

    goto :goto_52

    .line 156
    :catchall_2a
    move-exception v2

    .line 157
    const-string v3, "encode loop error"

    const-string v4, "PreviewFrameEncoder"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    invoke-direct {p0}, Lcom/transsion/motionphoto/PreviewFrameEncoder;->releaseEncoder()V

    .line 159
    add-int/lit8 v1, v1, 0x1

    .line 160
    const/4 v2, 0x5

    if-lt v1, v2, :cond_52

    .line 161
    const-string v1, "too many consecutive failures, Motion Photo encoder disabled"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->gaveUp:Z

    .line 163
    iget-object v1, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 164
    iget-object v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->circularBuffer:Lcom/transsion/motionphoto/CircularSampleRecorder;

    invoke-virtual {v0}, Lcom/transsion/motionphoto/CircularSampleRecorder;->stopRecording()V

    .line 165
    iget-object v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->frameQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 166
    goto :goto_55

    .line 169
    :cond_52
    :goto_52
    goto :goto_2

    .line 147
    :catch_53
    move-exception v0

    .line 148
    nop

    .line 170
    :cond_55
    :goto_55
    return-void
.end method

.method private static yuv420888ToNv12(Landroid/media/Image;)[B
    .registers 18

    .line 243
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getWidth()I

    move-result v0

    .line 244
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getHeight()I

    move-result v1

    .line 245
    mul-int v2, v0, v1

    mul-int/lit8 v2, v2, 0x3

    const/4 v3, 0x2

    div-int/2addr v2, v3

    new-array v2, v2, [B

    .line 247
    invoke-virtual/range {p0 .. p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    .line 248
    const/4 v5, 0x0

    aget-object v6, v4, v5

    .line 249
    const/4 v7, 0x1

    aget-object v8, v4, v7

    .line 250
    aget-object v4, v4, v3

    .line 252
    nop

    .line 253
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 254
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v10

    .line 255
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v6

    .line 256
    move v11, v5

    move v12, v11

    :goto_2f
    if-ge v11, v1, :cond_50

    .line 257
    mul-int v13, v11, v10

    .line 258
    if-ne v6, v7, :cond_3d

    .line 259
    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 260
    invoke-virtual {v9, v2, v12, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 261
    add-int/2addr v12, v0

    goto :goto_4d

    .line 263
    :cond_3d
    move v14, v5

    :goto_3e
    if-ge v14, v0, :cond_4d

    .line 264
    add-int/lit8 v15, v12, 0x1

    invoke-virtual {v9, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v16

    aput-byte v16, v2, v12

    .line 265
    add-int/2addr v13, v6

    .line 263
    add-int/lit8 v14, v14, 0x1

    move v12, v15

    goto :goto_3e

    .line 256
    :cond_4d
    :goto_4d
    add-int/lit8 v11, v11, 0x1

    goto :goto_2f

    .line 270
    :cond_50
    div-int/2addr v1, v3

    .line 271
    div-int/2addr v0, v3

    .line 272
    invoke-virtual {v8}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 273
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 274
    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    .line 275
    invoke-virtual {v8}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v8

    .line 276
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    .line 277
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v4

    .line 279
    move v10, v5

    :goto_73
    if-ge v10, v1, :cond_94

    .line 280
    mul-int v11, v10, v7

    .line 281
    mul-int v13, v10, v9

    .line 282
    move v14, v5

    :goto_7a
    if-ge v14, v0, :cond_91

    .line 283
    add-int/lit8 v15, v12, 0x1

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v16

    aput-byte v16, v2, v12

    .line 284
    add-int/lit8 v12, v15, 0x1

    invoke-virtual {v6, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v16

    aput-byte v16, v2, v15

    .line 285
    add-int/2addr v11, v8

    .line 286
    add-int/2addr v13, v4

    .line 282
    add-int/lit8 v14, v14, 0x1

    goto :goto_7a

    .line 279
    :cond_91
    add-int/lit8 v10, v10, 0x1

    goto :goto_73

    .line 289
    :cond_94
    return-object v2
.end method


# virtual methods
.method public allSamples()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/motionphoto/CircularSampleRecorder$Sample;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->circularBuffer:Lcom/transsion/motionphoto/CircularSampleRecorder;

    invoke-virtual {v0}, Lcom/transsion/motionphoto/CircularSampleRecorder;->snapshot()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEncHeight()I
    .registers 2

    .line 71
    iget v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->encHeight:I

    return v0
.end method

.method public getEncWidth()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->encWidth:I

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onImage(Landroid/media/Image;)V
    .registers 12

    .line 104
    const-string v1, "PreviewFrameEncoder"

    iget-object v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 106
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v4

    .line 107
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v5

    .line 108
    mul-int v0, v4, v5

    const v2, 0x1fe000

    if-gt v0, v2, :cond_41

    and-int/lit8 v0, v4, 0x1

    if-nez v0, :cond_41

    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_23

    goto :goto_41

    .line 115
    :cond_23
    invoke-static {p1}, Lcom/transsion/motionphoto/PreviewFrameEncoder;->yuv420888ToNv12(Landroid/media/Image;)[B

    move-result-object v3

    .line 116
    new-instance v2, Lcom/transsion/motionphoto/PreviewFrameEncoder$RawFrame;

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/transsion/motionphoto/PreviewFrameEncoder$RawFrame;-><init>([BIIJ)V

    .line 117
    iget-object p1, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->frameQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_40

    .line 118
    const-string p1, "frame queue full, dropping frame"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_40
    goto :goto_76

    .line 109
    :cond_41
    :goto_41
    iget-boolean p1, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->warnedBadSize:Z

    if-nez p1, :cond_6e

    .line 110
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->warnedBadSize:Z

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "preview "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " not suitable for Motion Photo encoding, skipping frames"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_b .. :try_end_6e} :catchall_6f

    .line 113
    :cond_6e
    return-void

    .line 120
    :catchall_6f
    move-exception v0

    move-object p1, v0

    .line 121
    const-string v0, "onImage failed"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    :goto_76
    return-void
.end method

.method public releaseRetention(J)V
    .registers 4

    .line 138
    iget-object v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->circularBuffer:Lcom/transsion/motionphoto/CircularSampleRecorder;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/motionphoto/CircularSampleRecorder;->releaseRetention(J)V

    .line 139
    return-void
.end method

.method public retainFrom(J)V
    .registers 4

    .line 134
    iget-object v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->circularBuffer:Lcom/transsion/motionphoto/CircularSampleRecorder;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/motionphoto/CircularSampleRecorder;->retainFrom(J)V

    .line 135
    return-void
.end method

.method public declared-synchronized start()V
    .registers 5

    monitor-enter p0

    .line 75
    :try_start_1
    iget-boolean v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->gaveUp:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_38

    if-eqz v0, :cond_7

    monitor-exit p0

    return-void

    .line 76
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_38

    if-eqz v0, :cond_12

    monitor-exit p0

    return-void

    .line 77
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->circularBuffer:Lcom/transsion/motionphoto/CircularSampleRecorder;

    invoke-virtual {v0}, Lcom/transsion/motionphoto/CircularSampleRecorder;->startRecording()V

    .line 78
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/transsion/motionphoto/PreviewFrameEncoder$1;

    invoke-direct {v2, p0}, Lcom/transsion/motionphoto/PreviewFrameEncoder$1;-><init>(Lcom/transsion/motionphoto/PreviewFrameEncoder;)V

    const-string v3, "MotionPhotoEncoder"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->worker:Ljava/lang/Thread;

    .line 84
    iget-object v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->worker:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 85
    iget-object v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 86
    const-string v0, "PreviewFrameEncoder"

    const-string v1, "started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_12 .. :try_end_36} :catchall_38

    .line 87
    monitor-exit p0

    return-void

    .line 74
    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 3

    monitor-enter p0

    .line 90
    :try_start_1
    iget-object v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_2e

    if-nez v0, :cond_c

    monitor-exit p0

    return-void

    .line 91
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->circularBuffer:Lcom/transsion/motionphoto/CircularSampleRecorder;

    invoke-virtual {v0}, Lcom/transsion/motionphoto/CircularSampleRecorder;->stopRecording()V

    .line 92
    iget-object v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->frameQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 93
    iget-object v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->worker:Ljava/lang/Thread;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 94
    :cond_1f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->worker:Ljava/lang/Thread;

    .line 95
    invoke-direct {p0}, Lcom/transsion/motionphoto/PreviewFrameEncoder;->releaseEncoder()V

    .line 96
    const-string v0, "PreviewFrameEncoder"

    const-string v1, "stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_2e

    .line 97
    monitor-exit p0

    return-void

    .line 89
    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public videoFormatOrNull()Landroid/media/MediaFormat;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/transsion/motionphoto/PreviewFrameEncoder;->videoFormat:Landroid/media/MediaFormat;

    return-object v0
.end method
