.class Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Error;
.super Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Error"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)V
    .locals 1

    .line 600
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Error;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    const-string v0, "Error"

    .line 601
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;-><init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isPlaying()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onEnter()V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Error;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$2200(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)V

    .line 607
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Error;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$1600(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Error;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$1600(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Error;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    .line 609
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$1400(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)I

    move-result v1

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Error;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$1500(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)I

    move-result p0

    .line 608
    invoke-interface {v0, v1, p0}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;->onError(II)V

    :cond_0
    return-void
.end method
