.class Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PreparingTask;
.super Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask;
.source "MovieRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreparingTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$TaskResult;)V
    .locals 0

    .line 790
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PreparingTask;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    .line 791
    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask;-><init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$TaskResult;Landroid/os/Handler;)V

    return-void
.end method

.method private prepareMusic()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 805
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PreparingTask;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1600(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PreparingTask;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$700(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->getMusicAssetFD()Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    .line 806
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PreparingTask;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;->access$1600(Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepare()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 797
    :try_start_0
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$PreparingTask;->prepareMusic()V

    .line 798
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask;->handleSuccess()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 800
    :catch_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieRecorder$AbstractTask;->handleFailed()V

    :goto_0
    return-void
.end method
