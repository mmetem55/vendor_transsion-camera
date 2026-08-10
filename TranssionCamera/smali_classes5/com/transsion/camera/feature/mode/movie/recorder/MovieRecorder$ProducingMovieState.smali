.class Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;
.super Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;
.source "MovieRecorder.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer$ExportListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProducingMovieState"
.end annotation


# instance fields
.field private mCancel:Z

.field private mMovieInfo:Lcom/transsion/camera/feature/mode/movie/MovieInfo;

.field private mMovieProducer:Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)V
    .locals 1

    .line 666
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    const-string v0, "ProducingMovieState"

    .line 667
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x1

    .line 701
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;->mCancel:Z

    .line 702
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2200(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->entry()V

    return v0
.end method

.method protected onEntry()V
    .locals 4

    const/4 v0, 0x0

    .line 672
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;->mCancel:Z

    .line 673
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$400(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$ProduceMovieCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$ProduceMovieCallback;->onProduceStarted()V

    .line 674
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    .line 675
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result v2

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->getPlayMovieFeed(II)Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;

    move-result-object v1

    .line 674
    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/movie/algorithm/ProducerFactory;->create(Landroid/content/Context;Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;)Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;->mMovieProducer:Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer;

    .line 676
    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer;->init()V

    .line 677
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;->mMovieProducer:Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1500(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer;->setMovieHeight(I)V

    .line 678
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->getMovieInfo()Lcom/transsion/camera/feature/mode/movie/MovieInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;->mMovieInfo:Lcom/transsion/camera/feature/mode/movie/MovieInfo;

    .line 679
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;->mMovieProducer:Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/MovieInfo;->getTempPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer;->produceMovie(Ljava/lang/String;Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer$ExportListener;)V

    return-void
.end method

.method public onExportFailed()V
    .locals 1

    const/4 v0, 0x1

    .line 714
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;->mCancel:Z

    .line 715
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2200(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->entry()V

    return-void
.end method

.method public onExportFinished()V
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory;->deleteHistory(Landroid/content/Context;)V

    .line 709
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;->resetTheme()V

    return-void
.end method

.method protected onLeave()V
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;->mMovieProducer:Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer;

    invoke-interface {v0}, Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer;->unInit()V

    const/4 v0, 0x0

    .line 685
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;->mMovieProducer:Lcom/transsion/camera/feature/mode/movie/algorithm/IMovieProducer;

    .line 686
    iget-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;->mCancel:Z

    if-eqz v0, :cond_0

    .line 687
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$400(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$ProduceMovieCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$ProduceMovieCallback;->onProduceFailed()V

    goto :goto_0

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$400(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$ProduceMovieCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;->mMovieInfo:Lcom/transsion/camera/feature/mode/movie/MovieInfo;

    invoke-interface {v0, p0}, Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$ProduceMovieCallback;->onProduceFinished(Lcom/transsion/camera/feature/mode/movie/MovieInfo;)V

    :goto_0
    return-void
.end method

.method public resetTheme()V
    .locals 3

    .line 695
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$902(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;J)J

    .line 696
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ProducingMovieState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1000(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->entry()V

    return-void
.end method
