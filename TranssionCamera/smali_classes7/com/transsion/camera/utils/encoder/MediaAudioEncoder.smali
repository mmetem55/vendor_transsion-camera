.class public Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;
.super Lcom/transsion/camera/utils/encoder/MediaEncoder;
.source "MediaAudioEncoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;
    }
.end annotation


# static fields
.field private static final AUDIO_SOURCES:[I

.field private static final AUDIO_SOURCES_2:[I

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAudioSource:I

.field private mAudioThread:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 86
    fill-array-data v1, :array_0

    sput-object v1, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->AUDIO_SOURCES:[I

    new-array v0, v0, [I

    .line 94
    fill-array-data v0, :array_1

    sput-object v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->AUDIO_SOURCES_2:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x5
        0x7
        0x6
    .end array-data

    :array_1
    .array-data 4
        0x5
        0x0
        0x1
        0x7
        0x6
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;)V
    .locals 0

    .line 32
    invoke-direct {p0, p2, p3}, Lcom/transsion/camera/utils/encoder/MediaEncoder;-><init>(Lcom/transsion/camera/utils/encoder/MediaMuxerWrapper;Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;)V

    const/4 p2, 0x0

    .line 27
    iput p2, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioSource:I

    const/4 p2, 0x0

    .line 29
    iput-object p2, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioThread:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;

    const-string p2, "audio_source"

    .line 33
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioSource:I

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioSource:I

    return p0
.end method

.method static synthetic access$200()[I
    .locals 1

    .line 19
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->AUDIO_SOURCES:[I

    return-object v0
.end method

.method static synthetic access$300()[I
    .locals 1

    .line 19
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->AUDIO_SOURCES_2:[I

    return-object v0
.end method

.method static synthetic access$400()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 19
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method private static final selectAudioCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 9

    .line 190
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "selectAudioCodec:"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 194
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 197
    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    .line 198
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 201
    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    move v5, v1

    .line 202
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 203
    sget-object v6, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "supportedType:"

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

    .line 204
    aget-object v6, v4, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_3
    return-object v3
.end method


# virtual methods
.method protected prepare()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "prepare:"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v2, -0x1

    .line 39
    iput v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mTrackIndex:I

    const/4 v2, 0x0

    .line 40
    iput-boolean v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mIsEOS:Z

    iput-boolean v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMuxerStarted:Z

    const-string v2, "audio/mp4a-latm"

    .line 42
    invoke-static {v2}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->selectAudioCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v3

    if-nez v3, :cond_0

    const-string p0, "Unable to find an appropriate codec for audio/mp4a-latm"

    .line 44
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 47
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selected codec: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const v3, 0xac44

    const/4 v4, 0x1

    .line 49
    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    const/4 v5, 0x2

    const-string v6, "aac-profile"

    .line 50
    invoke-virtual {v3, v6, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v5, 0x10

    const-string v6, "channel-mask"

    .line 51
    invoke-virtual {v3, v6, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const v5, 0xfa00

    const-string v6, "bitrate"

    .line 52
    invoke-virtual {v3, v6, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v5, "channel-count"

    .line 53
    invoke-virtual {v3, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 57
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    .line 58
    invoke-virtual {v2, v3, v5, v5, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 59
    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    const-string v2, "prepare finishing"

    .line 60
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaEncoder;->mListener:Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;

    if-eqz v0, :cond_1

    .line 63
    :try_start_0
    invoke-interface {v0, p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder$MediaEncoderListener;->onPrepared(Lcom/transsion/camera/utils/encoder/MediaEncoder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 65
    sget-object v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v0, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected release()V
    .locals 1

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioThread:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;

    .line 83
    invoke-super {p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->release()V

    return-void
.end method

.method protected startRecording()V
    .locals 2

    .line 72
    invoke-super {p0}, Lcom/transsion/camera/utils/encoder/MediaEncoder;->startRecording()V

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioThread:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;-><init>(Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$1;)V

    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/MediaAudioEncoder;->mAudioThread:Lcom/transsion/camera/utils/encoder/MediaAudioEncoder$AudioThread;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
