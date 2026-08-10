.class final Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressUpdater;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProgressUpdater"
.end annotation


# instance fields
.field private volatile mUpdating:Z

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)V
    .locals 0

    .line 620
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressUpdater;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$1;)V
    .locals 0

    .line 620
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressUpdater;-><init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 639
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressUpdater;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$2400(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)V

    .line 640
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressUpdater;->mUpdating:Z

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressUpdater;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$2300(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method start()V
    .locals 1

    const/4 v0, 0x1

    .line 626
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressUpdater;->mUpdating:Z

    .line 627
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressUpdater;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$2300(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method stop()V
    .locals 1

    const/4 v0, 0x0

    .line 632
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressUpdater;->mUpdating:Z

    .line 633
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$ProgressUpdater;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$2300(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
