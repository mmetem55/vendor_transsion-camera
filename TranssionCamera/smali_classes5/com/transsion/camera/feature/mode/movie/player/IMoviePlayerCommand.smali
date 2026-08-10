.class public interface abstract Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayerCommand;
.super Ljava/lang/Object;
.source "IMoviePlayerCommand.java"


# virtual methods
.method public abstract clearPlayer()V
.end method

.method public abstract createPlayer()V
.end method

.method public abstract prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract setDataSource(Landroid/content/res/AssetFileDescriptor;)V
.end method

.method public abstract setDataSource(Ljava/lang/String;)V
.end method

.method public abstract setLoop(Z)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
