.class final Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PlayerListenerWrapper"
.end annotation


# instance fields
.field private final mDelegate:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;

.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$-N6fTyaYZshHU5GPmMg3S3d_fmM(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->lambda$onError$0(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$DRY3-j9PBfHgsF-qsagJdDWTeWA(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->lambda$onMovieSizeChanged$1(II)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;)V
    .locals 0

    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->mMainHandler:Landroid/os/Handler;

    .line 657
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$1;)V
    .locals 0

    .line 648
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;-><init>(Landroid/os/Handler;Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;)V

    return-void
.end method

.method private checkMainThread()Z
    .locals 1

    .line 661
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onError$0(II)V
    .locals 0

    .line 706
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;->onError(II)V

    return-void
.end method

.method private synthetic lambda$onMovieSizeChanged$1(II)V
    .locals 0

    .line 716
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;->onMovieSizeChanged(II)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 693
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;->onCompleted()V

    goto :goto_0

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onError(II)V
    .locals 2

    .line 702
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;->onError(II)V

    goto :goto_0

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper$$ExternalSyntheticLambda5;-><init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onMovieSizeChanged(II)V
    .locals 2

    .line 712
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;->onMovieSizeChanged(II)V

    goto :goto_0

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper$$ExternalSyntheticLambda3;-><init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onPrepared()V
    .locals 2

    .line 666
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;->onPrepared()V

    goto :goto_0

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper$$ExternalSyntheticLambda4;-><init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onStarted()V
    .locals 2

    .line 675
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;->onStarted()V

    goto :goto_0

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public onStopped()V
    .locals 2

    .line 684
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;->onStopped()V

    goto :goto_0

    .line 687
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$PlayerListenerWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
