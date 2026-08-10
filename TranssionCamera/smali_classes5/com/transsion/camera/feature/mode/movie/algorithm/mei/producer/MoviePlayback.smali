.class public Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;
.super Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;
.source "MoviePlayback.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback$PlaybackListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;",
        "Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback<",
        "Lcom/meicam/sdk/NvsLiveWindow;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mLowerPreviewSize:Z

.field private final mPlaybackListener:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback$PlaybackListener;

.field private mPlayerListener:Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback$IPlayerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "MoviePlayback"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;-><init>(Landroid/content/Context;Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;)V

    .line 20
    new-instance p2, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback$PlaybackListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback$PlaybackListener;-><init>(Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback$1;)V

    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;->mPlaybackListener:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback$PlaybackListener;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/transsion/camera/feature/movie/R$bool;->movie_mode_lower_preview_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;->mLowerPreviewSize:Z

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 14
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;)Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback$IPlayerListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;->mPlayerListener:Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback$IPlayerListener;

    return-object p0
.end method

.method private playTimeline(JJ)Z
    .locals 10

    .line 67
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playTimeline,mLowerPreviewSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;->mLowerPreviewSize:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;->mLowerPreviewSize:Z

    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/16 v9, 0x28

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v9}, Lcom/meicam/sdk/NvsStreamingContext;->playbackTimeline(Lcom/meicam/sdk/NvsTimeline;JJIZI)Z

    move-result p0

    return p0

    .line 72
    :cond_0
    new-instance v6, Lcom/meicam/sdk/NvsRational;

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {v6, v0, v1}, Lcom/meicam/sdk/NvsRational;-><init>(II)V

    .line 73
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    const/4 v7, 0x1

    const/16 v8, 0x28

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v8}, Lcom/meicam/sdk/NvsStreamingContext;->playbackTimeline(Lcom/meicam/sdk/NvsTimeline;JJLcom/meicam/sdk/NvsRational;ZI)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic connectView(Landroid/view/SurfaceView;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/meicam/sdk/NvsLiveWindow;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;->connectView(Lcom/meicam/sdk/NvsLiveWindow;)V

    return-void
.end method

.method public connectView(Lcom/meicam/sdk/NvsLiveWindow;)V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v0, p0, p1}, Lcom/meicam/sdk/NvsStreamingContext;->connectTimelineWithLiveWindow(Lcom/meicam/sdk/NvsTimeline;Lcom/meicam/sdk/NvsLiveWindow;)Z

    move-result p0

    .line 63
    sget-object p1, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectView result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public init()V
    .locals 2

    .line 35
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard;->getInstance()Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard;->lock()V

    .line 36
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->init()V

    .line 37
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;->mPlaybackListener:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback$PlaybackListener;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setPlaybackCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;)V

    .line 38
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;->mPlaybackListener:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback$PlaybackListener;

    invoke-virtual {v0, p0}, Lcom/meicam/sdk/NvsStreamingContext;->setPlaybackCallback2(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;)V

    return-void
.end method

.method public setPlayerListener(Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback$IPlayerListener;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;->mPlayerListener:Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback$IPlayerListener;

    return-void
.end method

.method public startPlay()V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->getTimelineCurrentPosition(Lcom/meicam/sdk/NvsTimeline;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mTimeline:Lcom/meicam/sdk/NvsTimeline;

    invoke-virtual {v2}, Lcom/meicam/sdk/NvsTimeline;->getDuration()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;->playTimeline(JJ)Z

    move-result p0

    .line 57
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlay result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public stopPlay()V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {p0}, Lcom/meicam/sdk/NvsStreamingContext;->stop()V

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 43
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->unInit()V

    .line 44
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setPlaybackCallback(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;)V

    .line 45
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/TimeLine;->mStreamingContext:Lcom/meicam/sdk/NvsStreamingContext;

    invoke-virtual {p0, v1}, Lcom/meicam/sdk/NvsStreamingContext;->setPlaybackCallback2(Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;)V

    .line 46
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard;->getInstance()Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlaybackGuard;->unlock()V

    return-void
.end method
