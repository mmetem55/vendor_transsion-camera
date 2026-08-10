.class Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordFinishedState;
.super Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$HandleResetState;
.source "MovieRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordFinishedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)V
    .locals 1

    .line 615
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordFinishedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    const-string v0, "RecordFinishedState"

    .line 616
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$HandleResetState;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Ljava/lang/String;)V

    return-void
.end method

.method private recordFinished()Z
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordFinishedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordFinishedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->getSectionNum()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public deleteAllSections()V
    .locals 2

    .line 630
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordFinishedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1102(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;I)I

    .line 631
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordFinishedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordFinishedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->updateRecordedHistory(I)V

    return-void
.end method

.method public deleteLatestSection()I
    .locals 2

    .line 621
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordFinishedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result v0

    if-lez v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordFinishedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1110(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordFinishedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordFinishedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->updateRecordedHistory(I)V

    .line 625
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordFinishedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result p0

    return p0
.end method

.method public getMovieFeed()Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;
    .locals 2

    .line 636
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordFinishedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordFinishedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result p0

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->getPlayMovieFeed(II)Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;

    move-result-object p0

    return-object p0
.end method

.method public produceMovie()V
    .locals 1

    .line 650
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordFinishedState;->recordFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordFinishedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$3000(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->entry()V

    goto :goto_0

    .line 653
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordFinishedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$400(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$ProduceMovieCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$ProduceMovieCallback;->onProduceFailed()V

    :goto_0
    return-void
.end method

.method public startRecord()V
    .locals 2

    .line 641
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordFinishedState;->recordFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordFinishedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2600(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$MovieRecordCallback;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordFinishedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)I

    move-result p0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$MovieRecordCallback;->onRecordFailed(II)V

    return-void

    .line 645
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$RecordFinishedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2400(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->entry()V

    return-void
.end method
