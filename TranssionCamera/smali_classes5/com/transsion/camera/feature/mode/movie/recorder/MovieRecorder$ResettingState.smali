.class Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingState;
.super Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;
.source "MovieRecorder.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$TaskResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResettingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)V
    .locals 1

    .line 720
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    const-string v0, "ResettingState"

    .line 721
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/SurfaceTexture;III)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onEntry()V
    .locals 6

    .line 731
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$802(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Z)Z

    .line 732
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$900(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 733
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ResettingState entry time:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v4}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$900(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0, v2, v3}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$902(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;J)J

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$3100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/app/common/preview/IPreviewOperator;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingState$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingState;)V

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;->executeInGLThread(Ljava/lang/Runnable;)V

    .line 737
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1900(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingTask;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-direct {v1, v2, p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingTask;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$TaskResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 738
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2300(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/MovieHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->releaseAudioFocus(Landroid/content/Context;)V

    return-void
.end method

.method public onFailed()V
    .locals 0

    .line 748
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->entry()V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 743
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$ResettingState;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$2100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractState;->entry()V

    return-void
.end method

.method public resetTheme()V
    .locals 1

    .line 726
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "in resetting now,do not need reset again"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
