.class public abstract Lcom/transsion/camera/feature/mode/movie/player/command/SetDataSource;
.super Lcom/transsion/camera/feature/mode/movie/player/command/BaseCommand;
.source "SetDataSource.java"


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/player/command/BaseCommand;-><init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;)V

    return-void
.end method


# virtual methods
.method protected stateAfter()Lcom/transsion/camera/feature/mode/movie/player/PlayerState;
    .locals 0

    .line 31
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->DATA_SOURCE_SET:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    return-object p0
.end method

.method protected stateBefore()Lcom/transsion/camera/feature/mode/movie/player/PlayerState;
    .locals 0

    .line 26
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->SETTING_DATA_SOURCE:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    return-object p0
.end method
