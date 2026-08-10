.class public Lcom/transsion/camera/feature/mode/movie/player/command/Stop;
.super Lcom/transsion/camera/feature/mode/movie/player/command/BaseCommand;
.source "Stop.java"


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/player/command/BaseCommand;-><init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;)V

    return-void
.end method


# virtual methods
.method protected performExecute(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;)V
    .locals 0

    .line 26
    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;->stop()V

    return-void
.end method

.method protected stateAfter()Lcom/transsion/camera/feature/mode/movie/player/PlayerState;
    .locals 0

    .line 36
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->STOPPED:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    return-object p0
.end method

.method protected stateBefore()Lcom/transsion/camera/feature/mode/movie/player/PlayerState;
    .locals 0

    .line 31
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->STOPPING:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    return-object p0
.end method
