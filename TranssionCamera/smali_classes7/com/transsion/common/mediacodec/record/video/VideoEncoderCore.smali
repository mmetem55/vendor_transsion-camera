.class public Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;
.super Ljava/lang/Object;
.source "VideoEncoderCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioHandler;,
        Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;
    }
.end annotation


# instance fields
.field private final TIME_OUT:J

.field private final audioRecorder:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;

.field private final audioThread:Ljava/lang/Thread;

.field private bufferSize:I

.field private lock:Ljava/lang/Object;

.field private final mAudioEnc:Landroid/media/MediaCodec;

.field private mAudioTrackIndex:I

.field private mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private mInputSurface:Landroid/view/Surface;

.field private final mIsMuteRecoder:Z

.field private final mMuxer:Landroid/media/MediaMuxer;

.field private mMuxerStarted:Z

.field private final mPresentationTimeInterface:Lcom/transsion/common/mediacodec/record/video/PresentationTimeInterface;

.field private final mRecorder:Landroid/media/AudioRecord;

.field private final mVideoEncoder:Landroid/media/MediaCodec;

.field private final mVideoFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

.field private mVideoTrackIndex:I

.field private final runnable:Ljava/lang/Runnable;

.field public final stateWait:Lcom/transsion/camera/utils/StateWait;


# direct methods
.method public constructor <init>(IIILcom/transsion/camera/app/common/mode/VideoFileSpec;IZLcom/transsion/common/mediacodec/record/video/PresentationTimeInterface;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->lock:Ljava/lang/Object;

    const-wide/16 v1, 0x1f4

    .line 538
    iput-wide v1, v0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->TIME_OUT:J

    .line 539
    new-instance v1, Lcom/transsion/camera/utils/StateWait;

    invoke-direct {v1}, Lcom/transsion/camera/utils/StateWait;-><init>()V

    iput-object v1, v0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->stateWait:Lcom/transsion/camera/utils/StateWait;

    .line 540
    new-instance v1, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$1;

    invoke-direct {v1, p0}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$1;-><init>(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)V

    iput-object v1, v0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->runnable:Ljava/lang/Runnable;

    move/from16 v1, p6

    .line 92
    iput-boolean v1, v0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mIsMuteRecoder:Z

    move-object/from16 v1, p7

    .line 93
    iput-object v1, v0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mPresentationTimeInterface:Lcom/transsion/common/mediacodec/record/video/PresentationTimeInterface;

    move-object/from16 v1, p4

    .line 94
    iput-object v1, v0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mVideoFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    const-string v2, "audio/mp4a-latm"

    const v3, 0xbb80

    const/4 v4, 0x2

    .line 96
    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v5

    const-string v6, "aac-profile"

    .line 97
    invoke-virtual {v5, v6, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v6, "bitrate"

    const v7, 0x1f400

    .line 98
    invoke-virtual {v5, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 99
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mAudioEnc:Landroid/media/MediaCodec;

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 100
    invoke-virtual {v2, v5, v7, v7, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    const/16 v5, 0xc

    .line 101
    invoke-static {v3, v5, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v3

    iput v3, v0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->bufferSize:I

    .line 102
    new-instance v3, Landroid/media/AudioRecord;

    iget v14, v0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->bufferSize:I

    const/4 v10, 0x5

    const v11, 0xbb80

    const/16 v12, 0xc

    const/4 v13, 0x2

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v3, v0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mRecorder:Landroid/media/AudioRecord;

    .line 104
    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 105
    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    .line 108
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v2, v0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-string v2, "video/avc"

    move/from16 v3, p1

    move/from16 v4, p2

    .line 109
    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "color-format"

    const v5, 0x7f000789

    .line 113
    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    move/from16 v4, p3

    .line 115
    invoke-virtual {v3, v6, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "frame-rate"

    const/16 v5, 0x1e

    .line 116
    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "i-frame-interval"

    .line 117
    invoke-virtual {v3, v4, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 121
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, v0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mVideoEncoder:Landroid/media/MediaCodec;

    .line 122
    invoke-virtual {v2, v3, v7, v7, v8}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 123
    invoke-virtual {v2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v3

    iput-object v3, v0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mInputSurface:Landroid/view/Surface;

    .line 124
    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 132
    invoke-virtual/range {p4 .. p4}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual/range {p4 .. p4}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    new-instance v2, Landroid/media/MediaMuxer;

    invoke-virtual/range {p4 .. p4}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v2, v1, v3}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object v2, v0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mMuxer:Landroid/media/MediaMuxer;

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 135
    new-instance v2, Landroid/media/MediaMuxer;

    invoke-virtual/range {p4 .. p4}, Lcom/transsion/camera/app/common/mode/VideoFileSpec;->getFileTempPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v3}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v2, v0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mMuxer:Landroid/media/MediaMuxer;

    goto :goto_0

    .line 137
    :cond_1
    new-instance v1, Landroid/media/MediaMuxer;

    sget-object v2, Ljava/io/FileDescriptor;->err:Ljava/io/FileDescriptor;

    invoke-direct {v1, v2, v3}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object v1, v0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mMuxer:Landroid/media/MediaMuxer;

    .line 139
    :goto_0
    iget-object v1, v0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mMuxer:Landroid/media/MediaMuxer;

    move/from16 v2, p5

    invoke-virtual {v1, v2}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    const/4 v1, -0x1

    .line 140
    iput v1, v0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mVideoTrackIndex:I

    .line 141
    iput v1, v0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mAudioTrackIndex:I

    .line 142
    iput-boolean v3, v0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mMuxerStarted:Z

    .line 144
    new-instance v1, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;

    invoke-direct {v1, p0}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;-><init>(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)V

    iput-object v1, v0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->audioRecorder:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;

    .line 145
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, v0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->audioThread:Ljava/lang/Thread;

    .line 146
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Landroid/media/MediaCodec;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mAudioEnc:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->bufferSize:I

    return p0
.end method

.method static synthetic access$1000(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mVideoTrackIndex:I

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Landroid/media/AudioRecord;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mRecorder:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Lcom/transsion/camera/app/common/mode/VideoFileSpec;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mVideoFileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Lcom/transsion/common/mediacodec/record/video/PresentationTimeInterface;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mPresentationTimeInterface:Lcom/transsion/common/mediacodec/record/video/PresentationTimeInterface;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mIsMuteRecoder:Z

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mMuxerStarted:Z

    return p0
.end method

.method static synthetic access$602(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mMuxerStarted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mAudioTrackIndex:I

    return p0
.end method

.method static synthetic access$702(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;I)I
    .locals 0

    .line 51
    iput p1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mAudioTrackIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Landroid/media/MediaMuxer;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mMuxer:Landroid/media/MediaMuxer;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;)Ljava/lang/Object;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->lock:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public drainEncoder(Z)V
    .locals 7

    const-string v0, "VideoEncoderCore"

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drainEncoder("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "),mMuxerStarted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mMuxerStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v0, "VideoEncoderCore"

    const-string v1, "sending EOS to encoder"

    .line 196
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 201
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 207
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mVideoEncoder:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    if-nez p1, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string v1, "VideoEncoderCore"

    const-string v2, "no output available, spinning to await EOS"

    .line 213
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v2, -0x3

    if-ne v1, v2, :cond_4

    .line 217
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v2, -0x2

    if-ne v1, v2, :cond_7

    .line 220
    iget-object v2, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 221
    :try_start_1
    iget-boolean v1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mMuxerStarted:Z

    if-nez v1, :cond_6

    .line 224
    iget-object v1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    const-string v3, "VideoEncoderCore"

    .line 225
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "encoder output format changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v3, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3, v1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v1

    iput v1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mVideoTrackIndex:I

    const-string v1, "VideoEncoderCore"

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hanmeimei drainEncoder mVideoTrackIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mVideoTrackIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mAudioTrackIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mAudioTrackIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget v1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mVideoTrackIndex:I

    if-ltz v1, :cond_5

    iget v1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mAudioTrackIndex:I

    if-ltz v1, :cond_5

    const-string v1, "VideoEncoderCore"

    const-string v3, "hanmeimei muxer start"

    .line 231
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->start()V

    const/4 v1, 0x1

    .line 233
    iput-boolean v1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mMuxerStarted:Z

    .line 235
    :cond_5
    monitor-exit v2

    goto/16 :goto_0

    .line 222
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "format changed twice"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 235
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_7
    if-gez v1, :cond_8

    const-string v2, "VideoEncoderCore"

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 241
    :cond_8
    aget-object v2, v0, v1

    if-eqz v2, :cond_c

    .line 247
    iget-object v3, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    const-string v3, "VideoEncoderCore"

    const-string v5, "ignoring BUFFER_FLAG_CODEC_CONFIG"

    .line 250
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v3, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iput v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 254
    :cond_9
    iget-object v3, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v5, :cond_a

    .line 262
    iget-boolean v5, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mMuxerStarted:Z

    if-eqz v5, :cond_a

    .line 264
    :try_start_2
    iget-object v5, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mMuxer:Landroid/media/MediaMuxer;

    iget v6, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mVideoTrackIndex:I

    invoke-virtual {v5, v6, v2, v3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 266
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const-string v2, "VideoEncoderCore"

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sent "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v5, v5, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes to muxer, ts="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v5, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_a
    iget-object v2, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 277
    iget-object v1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    if-nez p1, :cond_b

    const-string p0, "VideoEncoderCore"

    const-string p1, "reached end of stream unexpectedly"

    .line 279
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_b
    const-string p0, "VideoEncoderCore"

    const-string p1, "end of stream reached"

    .line 281
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    .line 243
    :cond_c
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "encoderOutputBuffer "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " was null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    const-string p1, "VideoEncoderCore"

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drainEncoder e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mInputSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public isAudioBufferRead()Z
    .locals 0

    .line 567
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->audioRecorder:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;

    invoke-virtual {p0}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->isAudioBufferRead()Z

    move-result p0

    return p0
.end method

.method public pauseRecording()V
    .locals 0

    .line 559
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->audioRecorder:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;

    invoke-virtual {p0}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->pause()V

    return-void
.end method

.method public release()V
    .locals 4

    const-string v0, "VideoEncoderCore"

    const-string v1, "releasing encoder objects"

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 162
    iget-object v1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 163
    iget-object v1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mAudioEnc:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 164
    iget-object v1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mAudioEnc:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 165
    iget-object v1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 166
    iget-object v1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    .line 167
    iget-boolean v1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mMuxerStarted:Z

    if-eqz v1, :cond_0

    .line 171
    :try_start_0
    iget-object v1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V

    .line 172
    iget-object v1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release muxer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->mMuxerStarted:Z

    :cond_0
    return-void
.end method

.method public resumeRecording()V
    .locals 0

    .line 563
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->audioRecorder:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;

    invoke-virtual {p0}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->resume()V

    return-void
.end method

.method public startRecord()V
    .locals 2

    .line 548
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->stateWait:Lcom/transsion/camera/utils/StateWait;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/StateWait;->resetState()V

    .line 549
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->audioRecorder:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;

    invoke-virtual {v0}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->startRecord()V

    .line 550
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->audioRecorder:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;

    iget-object v0, v0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->mHandler:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioHandler;

    iget-object v1, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 552
    :try_start_0
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->stateWait:Lcom/transsion/camera/utils/StateWait;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/utils/StateWait;->waitState(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 554
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopAudRecord()V
    .locals 2

    .line 528
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->audioRecorder:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;

    invoke-virtual {v0}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore$AudioEncoder;->stopRecord()V

    .line 529
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->audioThread:Ljava/lang/Thread;

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1f4

    .line 531
    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 533
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
