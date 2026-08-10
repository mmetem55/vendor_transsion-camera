.class final Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProgressListenerWrapper"
.end annotation


# instance fields
.field private final mDelegate:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mUpdateRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;)V
    .locals 1

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;->mProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 730
    new-instance v0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper$1;-><init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 740
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;->mMainHandler:Landroid/os/Handler;

    .line 741
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$1;)V
    .locals 0

    .line 722
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;-><init>(Landroid/os/Handler;Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 722
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;->mProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;)Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;
    .locals 0

    .line 722
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;

    return-object p0
.end method

.method private checkMainThread()Z
    .locals 1

    .line 755
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


# virtual methods
.method public onProgressUpdate(I)V
    .locals 1

    .line 746
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;->mDelegate:Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;->onProgressUpdate(I)V

    goto :goto_0

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;->mProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 750
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
