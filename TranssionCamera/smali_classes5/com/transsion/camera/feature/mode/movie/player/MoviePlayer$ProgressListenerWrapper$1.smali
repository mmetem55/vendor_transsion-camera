.class Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper$1;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;)V
    .locals 0

    .line 730
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 733
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;->access$2600(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;)Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper$1;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;->access$2500(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressListenerWrapper;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;->onProgressUpdate(I)V

    return-void
.end method
