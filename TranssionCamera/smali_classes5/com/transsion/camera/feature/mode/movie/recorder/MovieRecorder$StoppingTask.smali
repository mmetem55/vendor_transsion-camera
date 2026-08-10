.class Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StoppingTask;
.super Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask;
.source "MovieRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoppingTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$TaskResult;)V
    .locals 0

    .line 831
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StoppingTask;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    .line 832
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$TaskResult;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 837
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StoppingTask;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StoppingTask;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->updateRecordedHistory(I)V

    .line 839
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StoppingTask;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->stopRecording()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 841
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 843
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StoppingTask;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1600(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StoppingTask;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1600(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StoppingTask;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1600(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 846
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask;->handleSuccess()V

    return-void
.end method
