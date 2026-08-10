.class Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Paused;
.super Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Paused"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)V
    .locals 1

    .line 509
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Paused;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    const-string v0, "Paused"

    .line 510
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;-><init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 0

    .line 515
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Paused;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$700(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public start()V
    .locals 0

    .line 520
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Paused;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$1700(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->enter()V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 525
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Paused;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$2100(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->enter()V

    return-void
.end method
