.class abstract Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$Command;
.implements Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$InnerCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractState"
.end annotation


# instance fields
.field protected final mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;Ljava/lang/String;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method final enter()V
    .locals 3

    .line 276
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$300()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " State changed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$400(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$400(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    move-result-object v2

    iget-object v2, v2, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->mName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$402(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    .line 279
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->onEnter()V

    return-void
.end method

.method public isPlaying()Z
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$700(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0

    return p0
.end method

.method public mediaPlayerComplete()V
    .locals 0

    .line 350
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$1000(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->enter()V

    return-void
.end method

.method public mediaPlayerError()V
    .locals 0

    .line 355
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$1100(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->enter()V

    return-void
.end method

.method protected onEnter()V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 3

    .line 320
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot pause at state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepare()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot prepare at state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 0

    .line 336
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$900(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->enter()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$700(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 331
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$800(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->enter()V

    return-void
.end method

.method public setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot setDataSource at state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot setDataSource at state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLooping(Z)V
    .locals 0

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$500(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;)Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;

    move-result-object v0

    sget-object v1, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;->VIDEO:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$MediaType;

    if-ne v0, v1, :cond_0

    .line 299
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->this$0:Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;->access$602(Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer;Landroid/view/Surface;)Landroid/view/Surface;

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 315
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot start at state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .locals 3

    .line 325
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot stop at state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/player/MoviePlayer$AbstractState;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateProgress()V
    .locals 0

    return-void
.end method
