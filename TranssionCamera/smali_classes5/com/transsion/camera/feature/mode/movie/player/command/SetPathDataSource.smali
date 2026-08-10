.class public Lcom/transsion/camera/feature/mode/movie/player/command/SetPathDataSource;
.super Lcom/transsion/camera/feature/mode/movie/player/command/SetDataSource;
.source "SetPathDataSource.java"


# instance fields
.field private mMoviePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;Ljava/lang/String;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/feature/mode/movie/player/command/SetDataSource;-><init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;)V

    .line 24
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/player/command/SetPathDataSource;->mMoviePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected performExecute(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;)V
    .locals 1

    const/4 v0, 0x1

    .line 29
    invoke-interface {p1, v0}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;->setLoop(Z)V

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/command/SetPathDataSource;->mMoviePath:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;->setDataSource(Ljava/lang/String;)V

    return-void
.end method
