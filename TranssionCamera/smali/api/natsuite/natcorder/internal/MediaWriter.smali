.class public Lapi/natsuite/natcorder/internal/MediaWriter;
.super Ljava/lang/Object;
.source "MediaWriter.java"


# instance fields
.field final muxer:Landroid/media/MediaMuxer;

.field private final recordingPath:Ljava/lang/String;

.field private track:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lapi/natsuite/natcorder/internal/MediaWriter;->track:I

    .line 28
    iput-object p1, p0, Lapi/natsuite/natcorder/internal/MediaWriter;->recordingPath:Ljava/lang/String;

    .line 29
    new-instance v0, Landroid/media/MediaMuxer;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lapi/natsuite/natcorder/internal/MediaWriter;->muxer:Landroid/media/MediaMuxer;

    return-void
.end method

.method private appendFrame(Landroid/media/MediaFormat;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .line 77
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    :try_start_0
    iget v0, p0, Lapi/natsuite/natcorder/internal/MediaWriter;->track:I

    if-gez v0, :cond_1

    .line 82
    iget-object v0, p0, Lapi/natsuite/natcorder/internal/MediaWriter;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    iput p1, p0, Lapi/natsuite/natcorder/internal/MediaWriter;->track:I

    .line 83
    iget-object p1, p0, Lapi/natsuite/natcorder/internal/MediaWriter;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->start()V

    .line 86
    :cond_1
    iget p1, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eq p1, v0, :cond_2

    .line 87
    iget-object p1, p0, Lapi/natsuite/natcorder/internal/MediaWriter;->muxer:Landroid/media/MediaMuxer;

    iget p0, p0, Lapi/natsuite/natcorder/internal/MediaWriter;->track:I

    invoke-virtual {p1, p0, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NatCorder Error: MediaWriter failed to write frame for time "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NatSuite"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public appendAudioFrame(Landroid/media/MediaFormat;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lapi/natsuite/natcorder/internal/MediaWriter;->appendFrame(Landroid/media/MediaFormat;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public appendVideoFrame(Landroid/media/MediaFormat;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lapi/natsuite/natcorder/internal/MediaWriter;->appendFrame(Landroid/media/MediaFormat;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public finishWriting(Lapi/natsuite/natcorder/MediaRecorder$Callback;)V
    .locals 2

    .line 58
    :try_start_0
    iget-object v0, p0, Lapi/natsuite/natcorder/internal/MediaWriter;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 59
    iget-object v0, p0, Lapi/natsuite/natcorder/internal/MediaWriter;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V

    .line 60
    iget-object p0, p0, Lapi/natsuite/natcorder/internal/MediaWriter;->recordingPath:Ljava/lang/String;

    invoke-interface {p1, p0}, Lapi/natsuite/natcorder/MediaRecorder$Callback;->onRecording(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "NatSuite"

    const-string v1, "NatCorder Error: MediaWriter failed to finish writing media"

    .line 62
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    .line 63
    invoke-interface {p1, p0}, Lapi/natsuite/natcorder/MediaRecorder$Callback;->onRecording(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
