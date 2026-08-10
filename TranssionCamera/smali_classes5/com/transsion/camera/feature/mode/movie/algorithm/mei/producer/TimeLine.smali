.class public Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;
.super Ljava/lang/Object;
.source "TimeLine.java"


# static fields
.field private static final BPP:F = 0.3f

.field private static final DEBUG:Z = false

.field private static final FRAME_RATE:I = 0x19

.field private static final LICENSE_TAIL:Ljava/lang/String; = ".lic"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private final mAudioEditRes:Lcom/meicam/sdk/NvsAudioResolution;

.field private mAudioTrack:Lcom/meicam/sdk/NvsAudioTrack;

.field private final mMovieFeed:Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;

.field private final mNvsVideoRational:Lcom/meicam/sdk/NvsRational;

.field protected mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

.field protected mTimeline:Lcom/meicam/sdk/NvsTimeline;

.field private final mVideoEditRes:Lcom/meicam/sdk/NvsVideoResolution;

.field private final mVideoFps:Lcom/meicam/sdk/NvsRational;

.field private mVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TimeLine"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;)V
    .locals 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/meicam/sdk/NvsRational;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mNvsVideoRational:Lcom/meicam/sdk/NvsRational;

    .line 30
    new-instance v2, Lcom/meicam/sdk/NvsVideoResolution;

    invoke-direct {v2}, Lcom/meicam/sdk/NvsVideoResolution;-><init>()V

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mVideoEditRes:Lcom/meicam/sdk/NvsVideoResolution;

    .line 31
    new-instance v3, Lcom/meicam/sdk/NvsAudioResolution;

    invoke-direct {v3}, Lcom/meicam/sdk/NvsAudioResolution;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mAudioEditRes:Lcom/meicam/sdk/NvsAudioResolution;

    .line 33
    iput-object v0, v2, Lcom/meicam/sdk/NvsVideoResolution;->imagePAR:Lcom/meicam/sdk/NvsRational;

    const v0, 0xac44

    .line 34
    iput v0, v3, Lcom/meicam/sdk/NvsAudioResolution;->sampleRate:I

    const/4 v0, 0x2

    .line 35
    iput v0, v3, Lcom/meicam/sdk/NvsAudioResolution;->channelCount:I

    .line 42
    new-instance v0, Lcom/meicam/sdk/NvsRational;

    const/16 v2, 0x19

    invoke-direct {v0, v2, v1}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mVideoFps:Lcom/meicam/sdk/NvsRational;

    .line 49
    invoke-static {}, Lcom/meicam/sdk/NvsStreamingContext;->getInstance()Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const-string v1, "assets:/meishesdk.lic"

    .line 51
    invoke-static {p1, v1, v0}, Lcom/meicam/sdk/NvsStreamingContext;->init(Landroid/content/Context;Ljava/lang/String;I)Lcom/meicam/sdk/NvsStreamingContext;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    .line 53
    :cond_0
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mMovieFeed:Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;

    return-void
.end method

.method private addTrans(ILjava/lang/String;)V
    .locals 4

    .line 175
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, " result:"

    if-nez v0, :cond_0

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    invoke-virtual {p0, p1, p2}, Lcom/meicam/sdk/NvsVideoTrack;->setPackagedTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object p0

    .line 177
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPackagedTransition index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " trans:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/meicam/sdk/NvsVideoTrack;->setBuiltinTransition(ILjava/lang/String;)Lcom/meicam/sdk/NvsVideoTransition;

    move-result-object p0

    .line 180
    sget-object p2, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBuiltinTransition index:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private addVideoClip()V
    .locals 6

    .line 105
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mMovieFeed:Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->getPartCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 107
    sget-object v3, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addVideoClip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mMovieFeed:Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->getPartFiles()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->addVideoClip(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_2

    .line 111
    sget-object v3, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addTrans"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 113
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mMovieFeed:Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;

    invoke-virtual {v4}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->getPartTrans()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 114
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 115
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v3}, Lcom/meicam/sdk/NvsStreamingContext;->getAssetPackageManager()Lcom/meicam/sdk/NvsAssetPackageManager;

    move-result-object v3

    invoke-static {v3, v4, v2}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->installEffect(Lcom/meicam/sdk/NvsAssetPackageManager;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 117
    :cond_1
    invoke-direct {p0, v1, v3}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->addTrans(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private addVideoClip(Ljava/lang/String;)V
    .locals 2

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    invoke-virtual {p0, p1}, Lcom/meicam/sdk/NvsVideoTrack;->appendClip(Ljava/lang/String;)Lcom/meicam/sdk/NvsVideoClip;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 133
    invoke-virtual {p0, p1, p1}, Lcom/meicam/sdk/NvsClip;->setVolumeGain(FF)V

    goto :goto_0

    .line 135
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addVideoClip clip is null, filePath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private calcBitRate()I
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mMovieFeed:Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x40f00001    # 7.5000005f

    mul-float/2addr v0, v1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mMovieFeed:Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->getHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    .line 94
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    int-to-float v2, p0

    const/high16 v3, 0x44800000    # 1024.0f

    div-float/2addr v2, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "bitrate=%5.2f[Mbps]"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private createTimeLine()V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mVideoEditRes:Lcom/meicam/sdk/NvsVideoResolution;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mVideoFps:Lcom/meicam/sdk/NvsRational;

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mAudioEditRes:Lcom/meicam/sdk/NvsAudioResolution;

    invoke-virtual {v0, v1, v2, v3}, Lcom/meicam/sdk/NvsStreamingContext;->createTimeline(Lcom/meicam/sdk/NvsVideoResolution;Lcom/meicam/sdk/NvsRational;Lcom/meicam/sdk/NvsAudioResolution;)Lcom/meicam/sdk/NvsTimeline;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    .line 88
    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTimeline;->appendVideoTrack()Lcom/meicam/sdk/NvsVideoTrack;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v0}, Lcom/meicam/sdk/NvsTimeline;->appendAudioTrack()Lcom/meicam/sdk/NvsAudioTrack;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mAudioTrack:Lcom/meicam/sdk/NvsAudioTrack;

    return-void
.end method

.method private static generateLicensePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "."

    .line 145
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1

    return-object v0

    :cond_1
    const/4 v3, 0x0

    .line 149
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 150
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_2

    return-object v0

    .line 154
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".lic"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static installEffect(Lcom/meicam/sdk/NvsAssetPackageManager;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    .line 158
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->generateLicensePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v7

    move v3, p2

    move-object v5, v6

    .line 160
    invoke-virtual/range {v0 .. v5}, Lcom/meicam/sdk/NvsAssetPackageManager;->installAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " installEffect failed:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    if-ne v0, v1, :cond_2

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v7

    move v3, p2

    move-object v5, v6

    .line 164
    invoke-virtual/range {v0 .. v5}, Lcom/meicam/sdk/NvsAssetPackageManager;->upgradeAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    .line 166
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected addAudio(Ljava/lang/String;)V
    .locals 9

    .line 185
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mMovieFeed:Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->getAudioTrimIn()J

    move-result-wide v5

    .line 186
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mMovieFeed:Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->getAudioTrimOut()J

    move-result-wide v7

    .line 187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    cmp-long v0, v7, v5

    if-lez v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mAudioTrack:Lcom/meicam/sdk/NvsAudioTrack;

    const-wide/16 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Lcom/meicam/sdk/NvsAudioTrack;->addClip(Ljava/lang/String;JJJ)Lcom/meicam/sdk/NvsAudioClip;

    :cond_0
    return-void
.end method

.method protected configStreaming()V
    .locals 3

    .line 99
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 100
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->calcBitRate()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bitrate"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {p0, v0}, Lcom/meicam/sdk/NvsStreamingContext;->setCompileConfigurations(Ljava/util/Hashtable;)V

    return-void
.end method

.method public init()V
    .locals 4

    .line 57
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "init begin"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v1}, Lcom/meicam/sdk/NvsStreamingContext;->stop()V

    .line 59
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meicam/sdk/NvsStreamingContext;->clearCachedResources(Z)V

    .line 60
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mMovieFeed:Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mMovieFeed:Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 61
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mVideoEditRes:Lcom/meicam/sdk/NvsVideoResolution;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mMovieFeed:Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mMovieFeed:Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->getWidth()I

    move-result v3

    rem-int/lit8 v3, v3, 0x10

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/meicam/sdk/NvsVideoResolution;->imageWidth:I

    .line 62
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mVideoEditRes:Lcom/meicam/sdk/NvsVideoResolution;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mMovieFeed:Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/meicam/sdk/NvsVideoResolution;->imageHeight:I

    goto :goto_0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mVideoEditRes:Lcom/meicam/sdk/NvsVideoResolution;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mMovieFeed:Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/meicam/sdk/NvsVideoResolution;->imageWidth:I

    .line 65
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mVideoEditRes:Lcom/meicam/sdk/NvsVideoResolution;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mMovieFeed:Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mMovieFeed:Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;

    invoke-virtual {v3}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->getHeight()I

    move-result v3

    rem-int/lit8 v3, v3, 0x10

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/meicam/sdk/NvsVideoResolution;->imageHeight:I

    :goto_0
    const-string v1, "start createTimeLine"

    .line 67
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->createTimeLine()V

    const-string v1, "start addVideoClip"

    .line 69
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->addVideoClip()V

    const-string v1, "start addAudio"

    .line 71
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mMovieFeed:Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;->getMusicFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->addAudio(Ljava/lang/String;)V

    const-string p0, "init end"

    .line 73
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public unInit()V
    .locals 3

    .line 77
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "unInit begin"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {v1}, Lcom/meicam/sdk/NvsStreamingContext;->stop()V

    .line 79
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mVideoTrack:Lcom/meicam/sdk/NvsVideoTrack;

    invoke-virtual {v1}, Lcom/meicam/sdk/NvsTrack;->removeAllClips()Z

    .line 80
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mAudioTrack:Lcom/meicam/sdk/NvsAudioTrack;

    invoke-virtual {v1}, Lcom/meicam/sdk/NvsTrack;->removeAllClips()Z

    .line 81
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v1, v2}, Lcom/meicam/sdk/NvsStreamingContext;->removeTimeline(Lcom/meicam/sdk/NvsTimeline;)Z

    .line 82
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->clearCachedResources(Z)V

    const-string p0, "unInit end"

    .line 83
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
