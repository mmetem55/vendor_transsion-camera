.class public abstract Lapi/natsuite/natcorder/internal/HardwareRecorder;
.super Ljava/lang/Object;
.source "HardwareRecorder.java"

# interfaces
.implements Lapi/natsuite/natcorder/MediaRecorder;


# instance fields
.field private audioCodec:Landroid/media/MediaCodec;

.field private final audioCodecFlusher:Ljava/lang/Runnable;

.field private completionHandler:Lapi/natsuite/natcorder/MediaRecorder$Callback;

.field private mediaWriter:Lapi/natsuite/natcorder/internal/MediaWriter;

.field private videoCodec:Landroid/media/MediaCodec;

.field private final videoCodecFlusher:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lapi/natsuite/natcorder/internal/HardwareRecorder$1;

    invoke-direct {v0, p0}, Lapi/natsuite/natcorder/internal/HardwareRecorder$1;-><init>(Lapi/natsuite/natcorder/internal/HardwareRecorder;)V

    iput-object v0, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder;->videoCodecFlusher:Ljava/lang/Runnable;

    .line 156
    new-instance v0, Lapi/natsuite/natcorder/internal/HardwareRecorder$2;

    invoke-direct {v0, p0}, Lapi/natsuite/natcorder/internal/HardwareRecorder$2;-><init>(Lapi/natsuite/natcorder/internal/HardwareRecorder;)V

    iput-object v0, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder;->audioCodecFlusher:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lapi/natsuite/natcorder/internal/HardwareRecorder;)Landroid/media/MediaCodec;
    .locals 0

    .line 18
    iget-object p0, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder;->videoCodec:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$100(Lapi/natsuite/natcorder/internal/HardwareRecorder;)Lapi/natsuite/natcorder/internal/MediaWriter;
    .locals 0

    .line 18
    iget-object p0, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder;->mediaWriter:Lapi/natsuite/natcorder/internal/MediaWriter;

    return-object p0
.end method

.method static synthetic access$200(Lapi/natsuite/natcorder/internal/HardwareRecorder;)Lapi/natsuite/natcorder/MediaRecorder$Callback;
    .locals 0

    .line 18
    iget-object p0, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder;->completionHandler:Lapi/natsuite/natcorder/MediaRecorder$Callback;

    return-object p0
.end method

.method static synthetic access$300(Lapi/natsuite/natcorder/internal/HardwareRecorder;)Landroid/media/MediaCodec;
    .locals 0

    .line 18
    iget-object p0, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder;->audioCodec:Landroid/media/MediaCodec;

    return-object p0
.end method

.method private final native copyFrame(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIII)V
.end method


# virtual methods
.method public commitFrame(Ljava/nio/ByteBuffer;J)V
    .locals 16

    move-object/from16 v11, p0

    .line 44
    iget-object v0, v11, Lapi/natsuite/natcorder/internal/HardwareRecorder;->videoCodec:Landroid/media/MediaCodec;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v12

    .line 45
    iget-object v0, v11, Lapi/natsuite/natcorder/internal/HardwareRecorder;->videoCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v12}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v13

    .line 46
    iget-object v0, v11, Lapi/natsuite/natcorder/internal/HardwareRecorder;->videoCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v12}, Landroid/media/MediaCodec;->getInputImage(I)Landroid/media/Image;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v1

    const/4 v2, 0x0

    .line 48
    aget-object v2, v1, v2

    const/4 v3, 0x1

    .line 49
    aget-object v3, v1, v3

    const/4 v4, 0x2

    .line 50
    aget-object v1, v1, v4

    .line 53
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 54
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    .line 55
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 56
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    .line 57
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 58
    invoke-virtual {v1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    .line 59
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v10

    .line 60
    invoke-virtual {v0}, Landroid/media/Image;->getWidth()I

    move-result v14

    .line 61
    invoke-virtual {v0}, Landroid/media/Image;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move v3, v5

    move-object v4, v6

    move v5, v7

    move-object v6, v8

    move v7, v9

    move v8, v10

    move v9, v14

    move v10, v15

    .line 51
    invoke-direct/range {v0 .. v10}, Lapi/natsuite/natcorder/internal/HardwareRecorder;->copyFrame(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIII)V

    .line 63
    iget-object v3, v11, Lapi/natsuite/natcorder/internal/HardwareRecorder;->videoCodec:Landroid/media/MediaCodec;

    const-wide/16 v0, 0x3e8

    div-long v7, p2, v0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move v4, v12

    move v6, v13

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public commitSamples([FJ)V
    .locals 10

    .line 73
    iget-object v0, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder;->audioCodec:Landroid/media/MediaCodec;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    .line 74
    iget-object v0, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder;->audioCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0, v4}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 75
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p1, v2

    const v5, 0x46fffe00    # 32767.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    int-to-short v3, v3

    .line 76
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    iget-object v3, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder;->audioCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    array-length p0, p1

    mul-int/lit8 v6, p0, 0x2

    const-wide/16 p0, 0x3e8

    div-long v7, p2, p0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public finishWriting(Lapi/natsuite/natcorder/MediaRecorder$Callback;)V
    .locals 9

    .line 86
    iput-object p1, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder;->completionHandler:Lapi/natsuite/natcorder/MediaRecorder$Callback;

    .line 89
    iget-object p1, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder;->videoCodec:Landroid/media/MediaCodec;

    const-wide/16 v0, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 90
    iget-object v2, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder;->videoCodec:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 93
    iget-object p1, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder;->audioCodec:Landroid/media/MediaCodec;

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 95
    iget-object v2, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder;->audioCodec:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x4

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_0
    return-void
.end method

.method public frameHeight()I
    .locals 1

    .line 34
    iget-object p0, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder;->videoCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->getInputFormat()Landroid/media/MediaFormat;

    move-result-object p0

    const-string v0, "height"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public frameWidth()I
    .locals 1

    .line 26
    iget-object p0, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder;->videoCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->getInputFormat()Landroid/media/MediaFormat;

    move-result-object p0

    const-string v0, "width"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected final start(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Lapi/natsuite/natcorder/internal/MediaWriter;)V
    .locals 2

    .line 109
    iput-object p1, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder;->videoCodec:Landroid/media/MediaCodec;

    .line 110
    iput-object p2, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder;->audioCodec:Landroid/media/MediaCodec;

    .line 111
    iput-object p3, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder;->mediaWriter:Lapi/natsuite/natcorder/internal/MediaWriter;

    .line 113
    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 114
    new-instance p1, Ljava/lang/Thread;

    iget-object p3, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder;->videoCodecFlusher:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Video Encoding Thread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    if-eqz p2, :cond_0

    .line 117
    invoke-virtual {p2}, Landroid/media/MediaCodec;->start()V

    .line 118
    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lapi/natsuite/natcorder/internal/HardwareRecorder;->audioCodecFlusher:Ljava/lang/Runnable;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Audio Encoding Thread"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
