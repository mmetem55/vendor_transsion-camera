.class Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;
.super Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PendingResetState;
.source "MovieRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordState"
.end annotation


# instance fields
.field private mAutoFinished:Z

.field private mFirstBack:Z

.field private mHandler:Landroid/os/Handler;

.field private mRenderFirstFrame:Z

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;


# direct methods
.method public static synthetic $r8$lambda$MLB4_ybGnXQGwU5vuKKf_6TYUYE(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->lambda$handleRenderResult$2(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$SGrdtk-JGH9zkCuLKlN-zQqnjmg(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->lambda$onLeave$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$YB2jXZnH_Ht8WaZ5gIDq1ekmN5s(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->lambda$onLeave$1(I)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)V
    .locals 1

    .line 515
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    const-string v0, "RecordState"

    .line 516
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PendingResetState;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Ljava/lang/String;)V

    return-void
.end method

.method private handleRenderResult(IJ)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, -0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, -0x3

    if-ne p1, p2, :cond_1

    .line 577
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1108(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    const/4 p1, 0x1

    .line 578
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->mAutoFinished:Z

    .line 579
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->entry()V

    goto :goto_1

    .line 581
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->entry()V

    goto :goto_1

    .line 574
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p3}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;J)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method private synthetic lambda$handleRenderResult$2(J)V
    .locals 7

    .line 574
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2600(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$MovieRecordCallback;

    move-result-object v1

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result v2

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1200(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)J

    move-result-wide v5

    move-wide v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$MovieRecordCallback;->onRecordProgressUpdate(IJJ)V

    return-void
.end method

.method private synthetic lambda$onLeave$0(I)V
    .locals 0

    .line 535
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2600(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$MovieRecordCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$MovieRecordCallback;->onRecordStopped(I)V

    return-void
.end method

.method private synthetic lambda$onLeave$1(I)V
    .locals 1

    .line 537
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2600(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$MovieRecordCallback;

    move-result-object p0

    const/4 v0, 0x2

    invoke-interface {p0, p1, v0}, Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$MovieRecordCallback;->onRecordFailed(II)V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .line 549
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->mFirstBack:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 550
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->mFirstBack:Z

    .line 551
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2900(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/ui/recorder/IRecorderUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/movie/ui/recorder/IRecorderUI;->showStopToast()V

    goto :goto_0

    .line 553
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->entry()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onDraw(IIII)Z
    .locals 8

    .line 561
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$200(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 562
    :try_start_0
    iget-boolean v6, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->mRenderFirstFrame:Z

    const/4 v7, 0x0

    .line 563
    iput-boolean v7, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->mRenderFirstFrame:Z

    .line 564
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->render(IIIIZ)I

    move-result p1

    .line 566
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->getDrawTime()J

    move-result-wide p2

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->handleRenderResult(IJ)V

    if-eqz p1, :cond_0

    const/4 p0, -0x3

    if-ne p1, p0, :cond_1

    :cond_0
    const/4 v7, 0x1

    :cond_1
    return v7

    :catchall_0
    move-exception p0

    .line 564
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected onEntry()V
    .locals 4

    const/4 v0, 0x1

    .line 521
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->mRenderFirstFrame:Z

    .line 522
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->mFirstBack:Z

    .line 523
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2600(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$MovieRecordCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1200(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$MovieRecordCallback;->onRecordStarted(IJ)V

    .line 524
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 526
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->mAutoFinished:Z

    .line 527
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2300(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/MovieHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->pauseAudioPlayBack(Landroid/content/Context;)Z

    return-void
.end method

.method protected onLeave()V
    .locals 3

    .line 532
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->mAutoFinished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result v0

    .line 533
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 534
    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->mAutoFinished:Z

    if-eqz v1, :cond_1

    .line 535
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 537
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    const/4 v0, 0x0

    .line 539
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->mRenderFirstFrame:Z

    return-void
.end method

.method public resetTheme()V
    .locals 0

    .line 587
    invoke-super {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PendingResetState;->resetTheme()V

    .line 588
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->entry()V

    return-void
.end method

.method public stopRecord()V
    .locals 0

    .line 544
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->entry()V

    return-void
.end method
