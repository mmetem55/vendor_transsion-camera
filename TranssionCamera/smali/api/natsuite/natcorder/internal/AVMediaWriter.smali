.class public final Lapi/natsuite/natcorder/internal/AVMediaWriter;
.super Lapi/natsuite/natcorder/internal/MediaWriter;
.source "AVMediaWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapi/natsuite/natcorder/internal/AVMediaWriter$Predicate;
    }
.end annotation


# instance fields
.field private volatile audioFormat:Landroid/media/MediaFormat;

.field private volatile audioTrack:I

.field private volatile muxerStarted:Z

.field private tracks:I

.field private volatile videoTrack:I


# direct methods
.method public static synthetic $r8$lambda$-co3XoVPCrktb5xtZXuKCC87wec(Lapi/natsuite/natcorder/internal/AVMediaWriter;)Z
    .locals 0

    invoke-direct {p0}, Lapi/natsuite/natcorder/internal/AVMediaWriter;->lambda$appendVideoFrame$0()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lapi/natsuite/natcorder/internal/MediaWriter;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 99
    iput p1, p0, Lapi/natsuite/natcorder/internal/AVMediaWriter;->videoTrack:I

    iput p1, p0, Lapi/natsuite/natcorder/internal/AVMediaWriter;->audioTrack:I

    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Lapi/natsuite/natcorder/internal/AVMediaWriter;->muxerStarted:Z

    const/4 p1, 0x2

    .line 101
    iput p1, p0, Lapi/natsuite/natcorder/internal/AVMediaWriter;->tracks:I

    return-void
.end method

.method private synthetic lambda$appendVideoFrame$0()Z
    .locals 0

    .line 45
    iget-object p0, p0, Lapi/natsuite/natcorder/internal/AVMediaWriter;->audioFormat:Landroid/media/MediaFormat;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static waitUntil(Lapi/natsuite/natcorder/internal/AVMediaWriter$Predicate;)V
    .locals 2

    .line 109
    :goto_0
    :try_start_0
    invoke-interface {p0}, Lapi/natsuite/natcorder/internal/AVMediaWriter$Predicate;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0xa

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public appendAudioFrame(Landroid/media/MediaFormat;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .line 68
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    iput-object p1, p0, Lapi/natsuite/natcorder/internal/AVMediaWriter;->audioFormat:Landroid/media/MediaFormat;

    .line 72
    iget p1, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    return-void

    .line 74
    :cond_1
    iget-boolean p1, p0, Lapi/natsuite/natcorder/internal/AVMediaWriter;->muxerStarted:Z

    if-nez p1, :cond_2

    return-void

    .line 78
    :cond_2
    :try_start_0
    iget-object p1, p0, Lapi/natsuite/natcorder/internal/MediaWriter;->muxer:Landroid/media/MediaMuxer;

    iget p0, p0, Lapi/natsuite/natcorder/internal/AVMediaWriter;->audioTrack:I

    invoke-virtual {p1, p0, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NatCorder Error: MediaWriter failed to write audio frame for time "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NatSuite"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public appendVideoFrame(Landroid/media/MediaFormat;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    .line 40
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lapi/natsuite/natcorder/internal/AVMediaWriter;->muxerStarted:Z

    if-nez v0, :cond_1

    .line 45
    new-instance v0, Lapi/natsuite/natcorder/internal/AVMediaWriter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lapi/natsuite/natcorder/internal/AVMediaWriter$$ExternalSyntheticLambda0;-><init>(Lapi/natsuite/natcorder/internal/AVMediaWriter;)V

    invoke-static {v0}, Lapi/natsuite/natcorder/internal/AVMediaWriter;->waitUntil(Lapi/natsuite/natcorder/internal/AVMediaWriter$Predicate;)V

    .line 46
    iget-object v0, p0, Lapi/natsuite/natcorder/internal/MediaWriter;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    iput p1, p0, Lapi/natsuite/natcorder/internal/AVMediaWriter;->videoTrack:I

    .line 47
    iget-object p1, p0, Lapi/natsuite/natcorder/internal/MediaWriter;->muxer:Landroid/media/MediaMuxer;

    iget-object v0, p0, Lapi/natsuite/natcorder/internal/AVMediaWriter;->audioFormat:Landroid/media/MediaFormat;

    invoke-virtual {p1, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result p1

    iput p1, p0, Lapi/natsuite/natcorder/internal/AVMediaWriter;->audioTrack:I

    .line 48
    iget-object p1, p0, Lapi/natsuite/natcorder/internal/MediaWriter;->muxer:Landroid/media/MediaMuxer;

    invoke-virtual {p1}, Landroid/media/MediaMuxer;->start()V

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lapi/natsuite/natcorder/internal/AVMediaWriter;->muxerStarted:Z

    .line 52
    :cond_1
    iget p1, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v0, 0x2

    and-int/2addr p1, v0

    if-eq p1, v0, :cond_2

    .line 53
    iget-object p1, p0, Lapi/natsuite/natcorder/internal/MediaWriter;->muxer:Landroid/media/MediaMuxer;

    iget p0, p0, Lapi/natsuite/natcorder/internal/AVMediaWriter;->videoTrack:I

    invoke-virtual {p1, p0, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NatCorder Error: MediaWriter failed to write video frame for time "

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

.method public declared-synchronized finishWriting(Lapi/natsuite/natcorder/MediaRecorder$Callback;)V
    .locals 1

    monitor-enter p0

    .line 90
    :try_start_0
    iget v0, p0, Lapi/natsuite/natcorder/internal/AVMediaWriter;->tracks:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lapi/natsuite/natcorder/internal/AVMediaWriter;->tracks:I

    if-gtz v0, :cond_0

    .line 91
    invoke-super {p0, p1}, Lapi/natsuite/natcorder/internal/MediaWriter;->finishWriting(Lapi/natsuite/natcorder/MediaRecorder$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
