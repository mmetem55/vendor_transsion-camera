.class public Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;
.super Ljava/lang/Object;
.source "MoviePlayerCommandWrap.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;


# instance fields
.field private final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private final mSource:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/utils/debug/Log$Tag;Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 30
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->mSource:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;

    return-void
.end method

.method private static checkThread()V
    .locals 2

    .line 38
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "cannot be in thread with looper"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clearPlayer()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, ">> clearPlayer"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->checkThread()V

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->mSource:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;->clearPlayer()V

    .line 120
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "<< clearPlayer"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public createPlayer()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, ">> createPlayer"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->checkThread()V

    .line 47
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->mSource:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;->createPlayer()V

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "<< createPlayer"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public prepare()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, ">> prepare"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->checkThread()V

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->mSource:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;->prepare()V

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "<< prepare"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, ">> release"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->checkThread()V

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->mSource:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;->release()V

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "<< release"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, ">> reset"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->checkThread()V

    .line 103
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->mSource:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;->reset()V

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "<< reset"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, ">> setDataSource"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->checkThread()V

    .line 71
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->mSource:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;

    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "<< setDataSource"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, ">> setDataSource"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->checkThread()V

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->mSource:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;

    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;->setDataSource(Ljava/lang/String;)V

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "<< setDataSource"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public setLoop(Z)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, ">> setLoop"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->checkThread()V

    .line 55
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->mSource:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;

    invoke-interface {v0, p1}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;->setLoop(Z)V

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "<< setLoop"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, ">> start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->checkThread()V

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->mSource:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;->start()V

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "<< start"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, ">> stop"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->checkThread()V

    .line 95
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->mSource:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;->stop()V

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayerCommandWrap;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "<< stop"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->v(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
