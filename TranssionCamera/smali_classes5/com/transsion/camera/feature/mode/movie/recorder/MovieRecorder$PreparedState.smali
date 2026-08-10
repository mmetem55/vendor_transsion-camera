.class Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PreparedState;
.super Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$HandleResetState;
.source "MovieRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreparedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)V
    .locals 1

    .line 441
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PreparedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    const-string v0, "PreparedState"

    .line 442
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$HandleResetState;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onSubEntry()V
    .locals 3

    .line 447
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PreparedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory;->readHistory(Landroid/content/Context;)Lcom/transsion/camera/feature/mode/movie/data/RecordHistory;

    move-result-object v0

    .line 448
    iget v1, v0, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory;->count:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PreparedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1300(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory;->themeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PreparedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    iget v2, v0, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory;->count:I

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1102(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;I)I

    .line 450
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PreparedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    move-result-object v1

    iget v0, v0, Lcom/transsion/camera/feature/mode/movie/data/RecordHistory;->orientation:I

    invoke-virtual {v1, v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->setRecordOrientation(I)V

    .line 451
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PreparedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2200(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->entry()V

    .line 452
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PreparedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2300(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/MovieHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PreparedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->releaseAudioFocus(Landroid/content/Context;)V

    goto :goto_0

    .line 454
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PreparedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1102(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;I)I

    :goto_0
    return-void
.end method

.method public startRecord()V
    .locals 0

    .line 460
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PreparedState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2400(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->entry()V

    return-void
.end method
