.class abstract Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask;
.super Ljava/lang/Object;
.source "MovieRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractTask"
.end annotation


# instance fields
.field protected final mResult:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$TaskResult;

.field protected final mResultHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$TaskResult;Landroid/os/Handler;)V
    .locals 0

    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 768
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask;->mResult:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$TaskResult;

    .line 769
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask;->mResultHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected handleFailed()V
    .locals 2

    .line 781
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask;->mResultHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 782
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask;->mResult:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$TaskResult;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$TaskResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 784
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask;->mResult:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$TaskResult;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$TaskResult;->onFailed()V

    :goto_0
    return-void
.end method

.method protected handleSuccess()V
    .locals 2

    .line 773
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask;->mResultHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 774
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask;->mResult:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$TaskResult;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$TaskResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 776
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask;->mResult:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$TaskResult;

    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$TaskResult;->onSuccess()V

    :goto_0
    return-void
.end method
