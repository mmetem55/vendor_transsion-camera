.class public Lcom/transsion/camera/feature/mode/movie/player/command/CreatePlayer;
.super Lcom/transsion/camera/feature/mode/movie/player/command/BaseCommand;
.source "CreatePlayer.java"


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
    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;->createPlayer()V

    return-void
.end method

.method protected stateAfter()Lcom/transsion/camera/feature/mode/movie/player/PlayerState;
    .locals 0

    .line 36
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->PLAYER_CREATED:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    return-object p0
.end method

.method protected stateBefore()Lcom/transsion/camera/feature/mode/movie/player/PlayerState;
    .locals 0

    .line 31
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->CREATING_PLAYER:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    return-object p0
.end method
