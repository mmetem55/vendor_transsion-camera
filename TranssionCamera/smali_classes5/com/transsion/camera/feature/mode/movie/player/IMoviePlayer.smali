.class public interface abstract Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer;
.super Ljava/lang/Object;
.source "IMoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;,
        Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;
    }
.end annotation


# virtual methods
.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setDataSource(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setLooping(Z)V
.end method

.method public abstract setPlayerListener(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;)V
.end method

.method public abstract setProgressListener(Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMovieProgressListener;)V
.end method

.method public abstract setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
