.class public Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;
.super Ljava/lang/Object;
.source "MediaMuxerWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaMuxerWrapper"


# instance fields
.field private mAudioEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

.field private mAudioFileEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

.field private mEncoderCount:I

.field mEncoderLock:Ljava/lang/Object;

.field private mInited:Z

.field private volatile mIsStarted:Z

.field private final mMediaMuxer:Landroid/media/MediaMuxer;

.field private mStatredCount:I

.field private mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mInited:Z

    .line 22
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mEncoderLock:Ljava/lang/Object;

    .line 30
    new-instance v1, Landroid/media/MediaMuxer;

    invoke-direct {v1, p1, v0}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 31
    iput v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mStatredCount:I

    iput v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mEncoderCount:I

    .line 32
    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mIsStarted:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mInited:Z

    .line 22
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mEncoderLock:Ljava/lang/Object;

    .line 36
    new-instance v1, Landroid/media/MediaMuxer;

    invoke-direct {v1, p1, v0}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    .line 37
    iput v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mStatredCount:I

    iput v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mEncoderCount:I

    .line 38
    iput-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mIsStarted:Z

    return-void
.end method

.method private unLock()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mEncoderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mEncoderLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 206
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method addEncoder(Lcom/transsion/camera/utils/encoder/MediaEncoder;)V
    .locals 3

    .line 99
    instance-of v0, p1, Lcom/transsion/camera/utils/encoder/MediaVideoEncoder;

    const-string v1, "Video encoder already added."

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-nez v0, :cond_0

    .line 102
    iput-object p1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    goto :goto_0

    .line 101
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 103
    :cond_1
    instance-of v0, p1, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    if-eqz v0, :cond_6

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-nez v0, :cond_5

    .line 106
    iput-object p1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    .line 113
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    move p1, v0

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    add-int/2addr p1, v2

    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioFileEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    add-int/2addr p1, v0

    iput p1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mEncoderCount:I

    return-void

    .line 105
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unsupported encoder"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method declared-synchronized addTrack(Landroid/media/MediaFormat;)I
    .locals 4

    monitor-enter p0

    .line 172
    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v0

    .line 176
    sget-object v1, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTrack:trackNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mEncoderCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",trackIx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return v0

    .line 173
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "muxer already started"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method enCoderLock()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mEncoderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mEncoderLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 198
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 200
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public declared-synchronized isStarted()Z
    .locals 1

    monitor-enter p0

    .line 90
    :try_start_0
    iget-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mIsStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pauseRecording()V
    .locals 1

    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->pauseRecording()V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->pauseRecording()V

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioFileEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v0, :cond_2

    .line 65
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->pauseRecording()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->prepare()V

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->prepare()V

    .line 46
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioFileEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz p0, :cond_2

    .line 47
    invoke-virtual {p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->prepare()V

    :cond_2
    return-void
.end method

.method public declared-synchronized resumeRecording()V
    .locals 1

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->resumeRecording()V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->resumeRecording()V

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioFileEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v0, :cond_2

    .line 74
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->resumeRecording()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOrientationHint(I)V
    .locals 1

    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized start()Z
    .locals 4

    monitor-enter p0

    .line 129
    :try_start_0
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "start:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget v1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mStatredCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mStatredCount:I

    .line 131
    iget v3, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mEncoderCount:I

    if-lez v3, :cond_0

    if-ne v1, v3, :cond_0

    .line 132
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V

    .line 133
    iput-boolean v2, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mIsStarted:Z

    .line 134
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->unLock()V

    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    const-string v1, "MediaMuxer started:"

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    iput-boolean v2, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mInited:Z

    .line 139
    iget-boolean v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mIsStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startRecording()V
    .locals 1

    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->startRecording()V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->startRecording()V

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioFileEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v0, :cond_2

    .line 56
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->startRecording()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized stop()V
    .locals 5

    monitor-enter p0

    .line 147
    :try_start_0
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop:mStatredCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mStatredCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget v1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mStatredCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mStatredCount:I

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEncoderCount > 0 : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mEncoderCount:I

    const/4 v4, 0x0

    if-lez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "mStatredCount <= 0 : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mStatredCount:I

    if-gtz v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "mInited : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget v1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mEncoderCount:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mStatredCount:I

    if-gtz v1, :cond_3

    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mInited:Z

    if-eqz v1, :cond_3

    .line 153
    iput-boolean v4, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mInited:Z

    .line 154
    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mIsStarted:Z

    if-eqz v1, :cond_2

    .line 155
    iput-boolean v4, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mIsStarted:Z

    .line 156
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    .line 159
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->unLock()V

    const-string v1, "MediaMuxer stopped:"

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopRecording()V
    .locals 2

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->stopRecording()V

    :cond_0
    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mVideoEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    .line 81
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v1, :cond_1

    .line 82
    invoke-virtual {v1}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->stopRecording()V

    .line 83
    :cond_1
    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    .line 84
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioFileEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;

    if-eqz v1, :cond_2

    .line 85
    invoke-virtual {v1}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->stopRecording()V

    .line 86
    :cond_2
    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mAudioFileEncoder:Lcom/transsion/camera/utils/encoder/MediaEncoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    monitor-enter p0

    .line 189
    :try_start_0
    iget v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mStatredCount:I

    if-lez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;->mMediaMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
