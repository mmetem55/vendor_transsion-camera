.class Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingTask;
.super Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask;
.source "MovieRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartingTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$TaskResult;)V
    .locals 0

    .line 812
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingTask;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    .line 813
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$TaskResult;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 818
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingTask;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingTask;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->startRecording(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 820
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingTask;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v2, v0, v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1202(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;J)J

    .line 821
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingTask;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1600(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingTask;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingTask;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->getDuration(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaPlayer;->seekTo(JI)V

    .line 822
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingTask;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1600(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 823
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask;->handleSuccess()V

    goto :goto_0

    .line 825
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask;->handleFailed()V

    :goto_0
    return-void
.end method
