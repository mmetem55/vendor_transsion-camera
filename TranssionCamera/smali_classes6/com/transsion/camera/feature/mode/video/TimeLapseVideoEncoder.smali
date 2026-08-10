.class public Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;
.super Ljava/lang/Object;
.source "TimeLapseVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;,
        Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;,
        Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;,
        Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferWriterHandler;,
        Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$MainHandler;,
        Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferData;,
        Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;
    }
.end annotation


# static fields
.field private static final CAPTURE_RATE:I = 0x2

.field private static final DEBUG:Z = true

.field private static final FRAME_RATE:I = 0x1e

.field private static final KEY_PENDING_LIMIT:Ljava/lang/String; = "pending-limit"

.field private static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final MIN_FRAME_LIMIT:I = 0x4

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field public static final TIME_LAPSE_RATE_FOR_LOOP:I = 0x186a0

.field private static final TIME_OUT_DURATION:I = 0xbb8

.field private static final VIDEO_WIDTH_4K:I = 0xf00


# instance fields
.field private mBufferWriterHandler:Landroid/os/Handler;

.field private mBufferWriterThread:Landroid/os/HandlerThread;

.field private final mCallback:Landroid/media/MediaCodec$Callback;

.field private mCodecCallbackHandler:Landroid/os/Handler;

.field private mCodecCallbackThread:Landroid/os/HandlerThread;

.field private final mEncoderParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mErrorListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;

.field private final mFrameLock:Ljava/lang/Object;

.field private final mHeight:I

.field private mIsAutoTimeLapseRate:Z

.field private mIsMediaCodecReady:Z

.field private mIsVideoDurationValid:Z

.field private final mLock:Ljava/lang/Object;

.field private mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$MainHandler;

.field private final mMaxDurationLimitMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private final mMinDurationLimitMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMuxerPaused:Z

.field private mMuxerStarted:Z

.field private mNeedDropFrame:Z

.field private mOnPaused:Z

.field private mStopCalled:Z

.field private mTempEOSBuffer:Ljava/nio/ByteBuffer;

.field private final mTimeLapseMuxerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoOrientation:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TimeLapseVideoEncoder"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(IILcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;)V
    .locals 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mNeedDropFrame:Z

    .line 43
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerStarted:Z

    .line 44
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerPaused:Z

    .line 45
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsAutoTimeLapseRate:Z

    .line 47
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsMediaCodecReady:Z

    .line 49
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mOnPaused:Z

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mEncoderParams:Ljava/util/ArrayList;

    .line 52
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    .line 53
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mFrameLock:Ljava/lang/Object;

    .line 54
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mStopCalled:Z

    .line 56
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMinDurationLimitMap:Ljava/util/HashMap;

    .line 57
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMaxDurationLimitMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    .line 58
    iput-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mBufferWriterThread:Landroid/os/HandlerThread;

    .line 59
    iput-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mBufferWriterHandler:Landroid/os/Handler;

    .line 60
    iput-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mCodecCallbackThread:Landroid/os/HandlerThread;

    .line 61
    iput-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mCodecCallbackHandler:Landroid/os/Handler;

    .line 62
    iput-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$MainHandler;

    .line 64
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsVideoDurationValid:Z

    .line 125
    new-instance v3, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$1;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)V

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mCallback:Landroid/media/MediaCodec$Callback;

    .line 72
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mWidth:I

    .line 73
    iput p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mHeight:I

    .line 74
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mErrorListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;

    const/16 p1, 0xf

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0xa

    .line 76
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x1e

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0x14

    .line 78
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x3c

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0x28

    .line 80
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x78

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0x50

    .line 82
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x12c

    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, -0x1

    .line 84
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "BufferWriterThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mBufferWriterThread:Landroid/os/HandlerThread;

    .line 87
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 88
    new-instance p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferWriterHandler;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mBufferWriterThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$BufferWriterHandler;-><init>(Landroid/os/Looper;Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mBufferWriterHandler:Landroid/os/Handler;

    .line 89
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "mCodecCallbackThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mCodecCallbackThread:Landroid/os/HandlerThread;

    .line 90
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 91
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mCodecCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mCodecCallbackHandler:Landroid/os/Handler;

    .line 92
    new-instance p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$MainHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$MainHandler;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$MainHandler;

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 26
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$MainHandler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$MainHandler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Ljava/lang/Object;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsMediaCodecReady:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Ljava/util/ArrayList;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mEncoderParams:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Z
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->initMuxers()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerPaused:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Ljava/util/HashMap;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMaxDurationLimitMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsAutoTimeLapseRate:Z

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Ljava/lang/Object;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mFrameLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mNeedDropFrame:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Ljava/util/HashMap;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMinDurationLimitMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mStopCalled:Z

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTempEOSBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTempEOSBuffer:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Landroid/os/HandlerThread;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mBufferWriterThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Landroid/os/Handler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mBufferWriterHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->writeBuffer(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->release()V

    return-void
.end method

.method static synthetic access$900(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;)Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mErrorListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;

    return-object p0
.end method

.method private calcBitRate(I)I
    .locals 4

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    .line 224
    :goto_0
    iget v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mWidth:I

    mul-int/2addr p1, v0

    iget p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mHeight:I

    mul-int/2addr p1, p0

    .line 225
    sget-object p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    int-to-float v2, p1

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "bitrate=%5.2f[Mbps]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p1
.end method

.method private checkVideoDurationValid()V
    .locals 5

    const/4 v0, 0x0

    .line 321
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;

    .line 323
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->access$1200(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;)J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsVideoDurationValid:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private configCodec(Landroid/view/Surface;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsMediaCodecReady:Z

    .line 101
    iget v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mWidth:I

    iget v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mHeight:I

    const-string v3, "video/avc"

    invoke-static {v3, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "color-format"

    const v4, 0x7f000789

    .line 102
    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "bitrate-mode"

    const/4 v4, 0x2

    .line 103
    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 104
    invoke-direct {p0, p2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->calcBitRate(I)I

    move-result p2

    const-string v2, "bitrate"

    invoke-virtual {v1, v2, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "frame-rate"

    const/16 v2, 0x1e

    .line 105
    invoke-virtual {v1, p2, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "capture-rate"

    .line 106
    invoke-virtual {v1, p2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "i-frame-interval"

    .line 107
    invoke-virtual {v1, p2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p2, "pending-limit"

    const/4 v0, 0x1

    .line 108
    invoke-virtual {v1, p2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 109
    sget-object p2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "configCodec format: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 111
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 113
    :try_start_0
    invoke-virtual {p2}, Landroid/media/MediaCodec;->release()V

    .line 114
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :catch_0
    :cond_0
    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 118
    invoke-virtual {p2, v1, v2, v2, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 120
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p2, p1}, Landroid/media/MediaCodec;->setInputSurface(Landroid/view/Surface;)V

    .line 121
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mCallback:Landroid/media/MediaCodec$Callback;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mCodecCallbackHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 122
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {p0}, Landroid/media/MediaCodec;->start()V

    return-void
.end method

.method private createTimeLapseMuxers()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 284
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createTimeLapseMuxers +"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 286
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mEncoderParams:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 287
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mOnPaused:Z

    if-eqz v3, :cond_0

    goto :goto_1

    .line 288
    :cond_0
    new-instance v3, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mEncoderParams:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;

    invoke-direct {v3, p0, v4}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;-><init>(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;)V

    .line 289
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->addTrack(Landroid/media/MediaFormat;)V

    .line 290
    iget v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mVideoOrientation:I

    invoke-virtual {v3, v4}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->setOrientationHint(I)V

    .line 291
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 293
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 294
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->prepared()V

    .line 296
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    sget-object p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "createTimeLapseMuxers -"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 296
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private initMuxers()Z
    .locals 4

    const/4 v0, 0x0

    .line 249
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->createTimeLapseMuxers()V

    .line 250
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerPaused:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v1

    .line 253
    sget-object v2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "createTimeLapseMuxers Exception : "

    invoke-static {v2, v3, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v0

    .line 254
    :goto_0
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mEncoderParams:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 255
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mEncoderParams:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;

    invoke-interface {v3}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$StatusListener;->onDurationOutLimit()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mErrorListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;

    invoke-interface {v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;->onMediaCodecException()V

    .line 258
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 259
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->release()V

    return v0
.end method

.method private release()V
    .locals 4

    .line 360
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_0
    sget-object v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "release:"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 362
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsMediaCodecReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    .line 364
    :try_start_1
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v3, :cond_0

    .line 365
    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v3, :cond_2

    .line 370
    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 371
    :goto_0
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 369
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v3, :cond_1

    .line 370
    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    .line 371
    iput-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    .line 373
    :cond_1
    throw v1

    .line 369
    :catch_0
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v3, :cond_2

    .line 370
    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V

    goto :goto_0

    .line 374
    :cond_2
    :goto_1
    iget-boolean v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerStarted:Z

    if-eqz v3, :cond_3

    .line 375
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerStarted:Z

    .line 376
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerPaused:Z

    .line 377
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->stopMuxers()V

    .line 379
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mEncoderParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 380
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 381
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 382
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mBufferWriterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 383
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 384
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mBufferWriterHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 386
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mCodecCallbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    .line 387
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 388
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mCodecCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 390
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMainHandler:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$MainHandler;

    if-eqz p0, :cond_6

    .line 391
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_6
    return-void

    :catchall_1
    move-exception p0

    .line 381
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private signalEndOfInputStream()V
    .locals 3

    .line 332
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "sending EOS to encoder"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 338
    sget-object v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "sending EOS onError"

    invoke-static {v1, v2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 340
    :try_start_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->reset()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 342
    :catch_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->release()V

    .line 343
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mErrorListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;->onMediaCodecException()V

    :cond_0
    :goto_0
    return-void
.end method

.method private stopMuxers()V
    .locals 3

    .line 396
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 397
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 398
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;

    .line 399
    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->stop()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 401
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private writeBuffer(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V
    .locals 4

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    :try_start_0
    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerStarted:Z

    if-eqz v2, :cond_3

    .line 193
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 197
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 198
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 199
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 200
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->access$1000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;

    invoke-virtual {v3, p1, p2, p3}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->onFrameData(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V

    .line 202
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->access$1100(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 205
    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->access$1000(Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 208
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_2

    .line 209
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 218
    :try_start_1
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 219
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 220
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 195
    :cond_3
    :try_start_2
    monitor-exit v1

    return-void

    :catchall_1
    move-exception p0

    .line 197
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method


# virtual methods
.method public isVideoDurationValid()Z
    .locals 0

    .line 328
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsVideoDurationValid:Z

    return p0
.end method

.method public onPause()V
    .locals 3

    .line 348
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause mIsMediaCodecReady :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsMediaCodecReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 349
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mOnPaused:Z

    .line 350
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsMediaCodecReady:Z

    if-eqz v0, :cond_0

    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 352
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsMediaCodecReady:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_1

    .line 353
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->release()V

    .line 354
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mErrorListener:Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$IMediaCodecErrorListener;->onMediaCodecException()V

    .line 356
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public pauseResumeRecording()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerStarted:Z

    if-eqz v0, :cond_0

    .line 266
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerPaused:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerPaused:Z

    .line 268
    :cond_0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerPaused:Z

    return p0
.end method

.method public setInputSurface(Landroid/view/Surface;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->configCodec(Landroid/view/Surface;I)V

    return-void
.end method

.method public setRecordParams(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$EncoderParams;",
            ">;)V"
        }
    .end annotation

    .line 272
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordParams : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mEncoderParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 275
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mEncoderParams:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 276
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsAutoTimeLapseRate:Z

    .line 277
    iget-boolean p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsMediaCodecReady:Z

    if-eqz p1, :cond_1

    .line 278
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->initMuxers()Z

    .line 280
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setVideoOrientation(I)V
    .locals 0

    .line 230
    iput p1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mVideoOrientation:I

    return-void
.end method

.method public startRecording()V
    .locals 4

    .line 234
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "startRecording +"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 236
    :try_start_0
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mNeedDropFrame:Z

    .line 237
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTimeLapseMuxerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;

    .line 238
    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder$TimeLapseMuxer;->start()V

    goto :goto_0

    .line 240
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 241
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerStarted:Z

    .line 242
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerPaused:Z

    .line 243
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mIsVideoDurationValid:Z

    .line 244
    sget-object p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "startRecording -"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 240
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public stopRecording()V
    .locals 4

    .line 301
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecording mMuxerStarted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mMuxerStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mFrameLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 303
    :try_start_0
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mStopCalled:Z

    .line 304
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 305
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 306
    :try_start_1
    iput-boolean v1, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mNeedDropFrame:Z

    .line 308
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTempEOSBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 310
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v3, 0x4

    .line 311
    iput v3, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 312
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTempEOSBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v3, v0, v1}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->writeBuffer(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)V

    const/4 v0, 0x0

    .line 313
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->mTempEOSBuffer:Ljava/nio/ByteBuffer;

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->checkVideoDurationValid()V

    .line 316
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoEncoder;->release()V

    .line 317
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 304
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
