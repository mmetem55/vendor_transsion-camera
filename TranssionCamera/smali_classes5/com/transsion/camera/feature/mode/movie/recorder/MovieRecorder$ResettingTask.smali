.class Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingTask;
.super Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask;
.source "MovieRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResettingTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$TaskResult;)V
    .locals 0

    .line 851
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingTask;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    .line 852
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$TaskResult;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingTask;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1600(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 858
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingTask;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1600(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 859
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask;->handleSuccess()V

    return-void
.end method
