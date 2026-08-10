.class Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingRecordState;
.super Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PendingResetState;
.source "MovieRecorder.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$TaskResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartingRecordState"
.end annotation


# instance fields
.field private mStopRequest:Z

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)V
    .locals 1

    .line 465
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingRecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    const-string v0, "StartingRecordState"

    .line 466
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PendingResetState;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onEntry()V
    .locals 3

    const/4 v0, 0x0

    .line 472
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingRecordState;->mStopRequest:Z

    .line 473
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingRecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result v0

    if-nez v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingRecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingRecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2500(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->setRecordOrientation(I)V

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingRecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingRecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->updateFilterEffect(I)V

    .line 477
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingRecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1900(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingTask;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingRecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-direct {v1, v2, p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingTask;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$TaskResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 478
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingRecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2300(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/MovieHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingRecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->pauseAudioPlayBack(Landroid/content/Context;)Z

    return-void
.end method

.method public onFailed()V
    .locals 3

    .line 497
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingRecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2600(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$MovieRecordCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingRecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$MovieRecordCallback;->onRecordFailed(II)V

    .line 498
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingRecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2000(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->entry()V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 483
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingRecordState;->mStopRequest:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingRecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$800(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 487
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingRecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2800(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->entry()V

    goto :goto_1

    .line 484
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingRecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2600(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$MovieRecordCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingRecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$MovieRecordCallback;->onRecordFailed(II)V

    .line 485
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingRecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->entry()V

    :goto_1
    return-void
.end method

.method public stopRecord()V
    .locals 1

    const/4 v0, 0x1

    .line 503
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$StartingRecordState;->mStopRequest:Z

    return-void
.end method
