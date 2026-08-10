.class Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback$PlaybackListener;
.super Ljava/lang/Object;
.source "MoviePlayback.java"

# interfaces
.implements Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback;
.implements Lcom/meicam/sdk/NvsStreamingContext$PlaybackCallback2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaybackListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback$PlaybackListener;->this$0:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback$1;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback$PlaybackListener;-><init>(Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;)V

    return-void
.end method


# virtual methods
.method public onPlaybackEOF(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 1

    .line 92
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "onPlaybackEOF"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback$PlaybackListener;->this$0:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;->access$200(Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;)Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback$IPlayerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback$PlaybackListener;->this$0:Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;->access$200(Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;)Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback$IPlayerListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback$IPlayerListener;->onCompleted()V

    :cond_0
    return-void
.end method

.method public onPlaybackPreloadingCompletion(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 0

    .line 82
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onPlaybackPreloadingCompletion"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onPlaybackStopped(Lcom/meicam/sdk/NvsTimeline;)V
    .locals 0

    .line 87
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/algorithm/mei/producer/MoviePlayback;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onPlaybackStopped"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onPlaybackTimelinePosition(Lcom/meicam/sdk/NvsTimeline;J)V
    .locals 0

    return-void
.end method
