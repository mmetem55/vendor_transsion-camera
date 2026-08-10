.class Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$End;
.super Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "End"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)V
    .locals 1

    .line 579
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$End;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    const-string v0, "End"

    .line 580
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

    .line 585
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$End;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$602(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;Landroid/view/Surface;)Landroid/view/Surface;

    .line 586
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$End;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$1602(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;)Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;

    .line 587
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$End;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$1902(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;)Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;

    .line 588
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$End;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$700(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method
