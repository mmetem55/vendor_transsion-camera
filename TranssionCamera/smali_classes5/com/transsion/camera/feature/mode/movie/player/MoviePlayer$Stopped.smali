.class Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Stopped;
.super Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stopped"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)V
    .locals 1

    .line 532
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Stopped;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    const-string v0, "Stopped"

    .line 533
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;-><init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Stopped;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$2200(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)V

    .line 539
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Stopped;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$700(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 540
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Stopped;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$1600(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 541
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Stopped;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$1600(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;->onStopped()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 0

    .line 547
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Stopped;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$1700(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->enter()V

    return-void
.end method
