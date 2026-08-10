.class Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Started;
.super Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Started"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)V
    .locals 1

    .line 456
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    const-string v0, "Started"

    .line 457
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;-><init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;Ljava/lang/String;)V

    return-void
.end method

.method private applySurface()V
    .locals 2

    .line 489
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$500(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;->VIDEO:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;

    if-ne v0, v1, :cond_1

    .line 490
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$600(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$700(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$600(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 491
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "mSurface is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    .line 462
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Started;->applySurface()V

    .line 463
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$700(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 464
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$1800(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)V

    .line 465
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$1600(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 466
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$1600(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;->onStarted()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    .line 480
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$2000(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->enter()V

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 500
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSurfaceTexture at state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 502
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$1100(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->enter()V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 485
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$2100(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->enter()V

    return-void
.end method

.method public updateProgress()V
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$1900(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$1900(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Started;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    .line 474
    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$700(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p0

    .line 473
    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;->onProgressUpdate(I)V

    :cond_0
    return-void
.end method
