.class public interface abstract Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer$IMoviePlayerListener;
.super Ljava/lang/Object;
.source "IMoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/player/IMoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMoviePlayerListener"
.end annotation


# virtual methods
.method public abstract onCompleted()V
.end method

.method public abstract onError(II)V
.end method

.method public abstract onMovieSizeChanged(II)V
.end method

.method public abstract onPrepared()V
.end method

.method public abstract onStarted()V
.end method

.method public abstract onStopped()V
.end method
