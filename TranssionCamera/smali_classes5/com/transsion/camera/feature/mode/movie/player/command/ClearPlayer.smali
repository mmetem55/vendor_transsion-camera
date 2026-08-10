.class public Lcom/transsion/camera/feature/mode/movie/player/command/ClearPlayer;
.super Lcom/transsion/camera/feature/mode/movie/player/command/BaseCommand;
.source "ClearPlayer.java"


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
    invoke-interface {p1}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;->clearPlayer()V

    return-void
.end method

.method protected stateAfter()Lcom/transsion/camera/feature/mode/movie/player/PlayerState;
    .locals 0

    .line 36
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->PLAYER_CLEARED:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    return-object p0
.end method

.method protected stateBefore()Lcom/transsion/camera/feature/mode/movie/player/PlayerState;
    .locals 0

    .line 31
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->CLEARING_PLAYER:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    return-object p0
.end method
