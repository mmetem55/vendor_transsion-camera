.class Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Initialized;
.super Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Initialized"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)V
    .locals 1

    .line 415
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Initialized;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    const-string v0, "Initialized"

    .line 416
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;-><init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public prepare()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Initialized;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$700(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 423
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Initialized;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$1300(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->enter()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 425
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Initialized;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$1402(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;I)I

    .line 426
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Initialized;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    const/16 v2, -0x3ec

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$1502(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;I)I

    .line 427
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Initialized;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$1100(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->enter()V

    .line 428
    throw v0
.end method
