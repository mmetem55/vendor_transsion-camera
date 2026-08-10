.class Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Idle;
.super Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Idle"
.end annotation


# instance fields
.field private mHasDataSource:Z

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)V
    .locals 1

    .line 364
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Idle;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    const-string v0, "Idle"

    .line 365
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;-><init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;Ljava/lang/String;)V

    return-void
.end method

.method private canLeave()Z
    .locals 0

    .line 375
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Idle;->mHasDataSource:Z

    return p0
.end method

.method private tryLeave()V
    .locals 1

    .line 379
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Idle;->canLeave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Idle;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$1200(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->enter()V

    :cond_0
    return-void
.end method


# virtual methods
.method public isPlaying()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onEnter()V
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Idle;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$602(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;Landroid/view/Surface;)Landroid/view/Surface;

    const/4 v0, 0x0

    .line 371
    iput-boolean v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Idle;->mHasDataSource:Z

    return-void
.end method

.method public setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Idle;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$700(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    .line 394
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 395
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    .line 396
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    .line 393
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    const/4 p1, 0x1

    .line 397
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Idle;->mHasDataSource:Z

    .line 398
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Idle;->tryLeave()V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Idle;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$700(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 387
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Idle;->mHasDataSource:Z

    .line 388
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Idle;->tryLeave()V

    return-void
.end method

.method public setLooping(Z)V
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Idle;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$700(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method
