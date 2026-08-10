.class public Lcom/transsion/camera/utils/VideoSurfaceUtil;
.super Ljava/lang/Object;
.source "VideoSurfaceUtil.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static volatile mVideoSurface:Landroid/view/Surface;

.field private static sInstance:Lcom/transsion/camera/utils/VideoSurfaceUtil;


# instance fields
.field private mVideoHeight:I

.field private mVideoQuality:I

.field private mVideoSurfaceHandler:Landroid/os/Handler;

.field private mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "VideoSurfaceUtil"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoWidth:I

    .line 22
    iput v0, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoHeight:I

    .line 23
    iput v0, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoQuality:I

    .line 38
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VideoSurfaceUtil"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 40
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurfaceHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/transsion/camera/utils/VideoSurfaceUtil;I)I
    .locals 0

    .line 17
    iput p1, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoQuality:I

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/utils/VideoSurfaceUtil;ILjava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->prepareSurface(ILjava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/transsion/camera/utils/VideoSurfaceUtil;
    .locals 1

    .line 31
    sget-object v0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->sInstance:Lcom/transsion/camera/utils/VideoSurfaceUtil;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/VideoSurfaceUtil;

    invoke-direct {v0}, Lcom/transsion/camera/utils/VideoSurfaceUtil;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->sInstance:Lcom/transsion/camera/utils/VideoSurfaceUtil;

    .line 34
    :cond_0
    sget-object v0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->sInstance:Lcom/transsion/camera/utils/VideoSurfaceUtil;

    return-object v0
.end method

.method private prepareSurface(ILjava/io/File;Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_4

    .line 75
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 80
    :cond_0
    sget-object v0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[prepareSurface]("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",  cameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "prepareSurface profile is null !!!!"

    .line 83
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 86
    :cond_1
    sget-object p3, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    if-eqz p3, :cond_2

    sget-object p3, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    invoke-virtual {p3}, Landroid/view/Surface;->isValid()Z

    move-result p3

    if-nez p3, :cond_3

    :cond_2
    const-string p3, "prepareSurface MediaCodec.createPersistentInputSurface"

    .line 87
    invoke-static {v0, p3}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object p3

    sput-object p3, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    .line 90
    :cond_3
    new-instance p3, Landroid/media/MediaRecorder;

    invoke-direct {p3}, Landroid/media/MediaRecorder;-><init>()V

    const/4 v1, 0x2

    .line 92
    :try_start_0
    invoke-virtual {p3, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    const/4 v1, 0x5

    .line 93
    invoke-virtual {p3, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 94
    invoke-virtual {p3, p2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/File;)V

    .line 95
    invoke-virtual {p3, p1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 96
    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v1, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoWidth:I

    .line 97
    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput p1, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoHeight:I

    .line 98
    sget-object p1, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    invoke-virtual {p3, p1}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    .line 99
    invoke-virtual {p3}, Landroid/media/MediaRecorder;->prepare()V

    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[prepareSurface] success, video size:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoWidth:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoHeight:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 102
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 103
    sput-object p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :goto_0
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 106
    invoke-virtual {p3}, Landroid/media/MediaRecorder;->release()V

    return-void

    .line 105
    :goto_1
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 106
    invoke-virtual {p3}, Landroid/media/MediaRecorder;->release()V

    .line 107
    throw p0

    .line 76
    :cond_4
    :goto_2
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->prepareSurfaceWithoutFile(ILjava/lang/String;)V

    return-void
.end method

.method private prepareSurfaceWithoutFile(ILjava/lang/String;)V
    .locals 4

    .line 111
    sget-object v0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[prepareSurfaceWithNoFile]("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",  cameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2, p1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "prepareSurfaceWithNoFile profile is null !!!!"

    .line 114
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 117
    :cond_0
    iget p2, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput p2, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoWidth:I

    .line 118
    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput p1, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoHeight:I

    .line 119
    sget-object p1, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    const-string p1, "prepareSurfaceWithNoFile MediaCodec.createPersistentInputSurface"

    .line 120
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object p1

    sput-object p1, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    :cond_2
    const-string p1, "video/avc"

    .line 124
    iget p2, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoWidth:I

    iget v1, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoHeight:I

    invoke-static {p1, p2, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p2

    const v1, 0x7f000789

    const-string v2, "color-format"

    .line 125
    invoke-virtual {p2, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v1, 0x2

    const-string v2, "bitrate-mode"

    .line 126
    invoke-virtual {p2, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 127
    iget v1, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoWidth:I

    mul-int/lit8 v1, v1, 0xa

    iget p0, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoHeight:I

    mul-int/2addr v1, p0

    const-string p0, "bitrate"

    invoke-virtual {p2, p0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "frame-rate"

    const/16 v1, 0x1e

    .line 128
    invoke-virtual {p2, p0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "capture-rate"

    .line 129
    invoke-virtual {p2, p0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p0, "i-frame-interval"

    const/4 v1, 0x1

    .line 130
    invoke-virtual {p2, p0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 131
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareSurfaceWithNoFile configCodec format: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 135
    :try_start_0
    invoke-static {p1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    :try_start_1
    invoke-virtual {p1, p2, p0, p0, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 138
    sget-object p2, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setInputSurface(Landroid/view/Surface;)V

    .line 139
    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v3, p1

    move-object p1, p0

    move-object p0, v3

    goto :goto_2

    :catch_1
    move-exception p2

    move-object p1, p0

    .line 141
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    sput-object p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_3

    .line 145
    :goto_1
    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V

    :cond_3
    return-void

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/media/MediaCodec;->release()V

    .line 147
    :cond_4
    throw p0
.end method


# virtual methods
.method public createVideoSurface(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 2

    .line 53
    sget-object v0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "createVideoSurface for low platform."

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "_"

    .line 54
    invoke-static {p1, v0}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 55
    iget v0, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoQuality:I

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurfaceHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/transsion/camera/utils/VideoSurfaceUtil$1;-><init>(Lcom/transsion/camera/utils/VideoSurfaceUtil;ILjava/io/File;Ljava/lang/String;)V

    const-wide/16 p0, 0x64

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public getVideoSurface(Ljava/lang/String;Ljava/lang/String;IILjava/io/File;)Landroid/view/Surface;
    .locals 1

    .line 44
    iget v0, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoWidth:I

    if-ne v0, p3, :cond_0

    iget p3, p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoHeight:I

    if-ne p3, p4, :cond_0

    sget-object p3, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    if-eqz p3, :cond_0

    sget-object p3, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    invoke-virtual {p3}, Landroid/view/Surface;->isValid()Z

    move-result p3

    if-nez p3, :cond_1

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->releaseSurface()V

    const-string p3, "_"

    .line 46
    invoke-static {p1, p3}, Lcom/transsion/camera/utils/CameraUtil;->parseVideoQuality(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 47
    invoke-direct {p0, p1, p5, p2}, Lcom/transsion/camera/utils/VideoSurfaceUtil;->prepareSurface(ILjava/io/File;Ljava/lang/String;)V

    .line 49
    :cond_1
    sget-object p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public releaseSurface()V
    .locals 1

    .line 67
    sget-object p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "releaseSurface"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    sget-object p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    if-eqz p0, :cond_0

    .line 69
    sget-object p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    const/4 p0, 0x0

    .line 70
    sput-object p0, Lcom/transsion/camera/utils/VideoSurfaceUtil;->mVideoSurface:Landroid/view/Surface;

    :cond_0
    return-void
.end method
