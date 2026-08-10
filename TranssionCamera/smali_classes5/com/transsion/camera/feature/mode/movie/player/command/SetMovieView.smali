.class public Lcom/transsion/camera/feature/mode/movie/player/command/SetMovieView;
.super Lcom/transsion/camera/feature/mode/movie/player/command/BaseCommand;
.source "SetMovieView.java"


# instance fields
.field private final mCallback:Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;

.field private final mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/feature/mode/movie/player/command/BaseCommand;-><init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;)V

    .line 29
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/player/command/SetMovieView;->mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    .line 30
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/movie/player/command/SetMovieView;->mCallback:Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;

    return-void
.end method


# virtual methods
.method protected performExecute(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;)V
    .locals 0

    .line 42
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/player/command/SetMovieView;->mCallback:Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/command/SetMovieView;->mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    invoke-interface {p1, p0}, Lcom/transsion/camera/feature/mode/movie/player/IPlayerManager$IPlayerManagerCallBack;->setMovieView(Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;)V

    return-void
.end method

.method protected stateAfter()Lcom/transsion/camera/feature/mode/movie/player/PlayerState;
    .locals 0

    .line 52
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->IDLE:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    return-object p0
.end method

.method protected stateBefore()Lcom/transsion/camera/feature/mode/movie/player/PlayerState;
    .locals 0

    .line 47
    sget-object p0, Lcom/transsion/camera/feature/mode/movie/player/PlayerState;->SETTING_NEW_VIEW:Lcom/transsion/camera/feature/mode/movie/player/PlayerState;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/transsion/camera/feature/mode/movie/player/command/SetMovieView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMovieView "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/command/SetMovieView;->mMovieView:Lcom/transsion/camera/feature/mode/movie/ui/widget/MovieView;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
