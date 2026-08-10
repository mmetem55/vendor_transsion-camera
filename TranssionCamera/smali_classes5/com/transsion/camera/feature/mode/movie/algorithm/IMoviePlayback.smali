.class public interface abstract Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback;
.super Ljava/lang/Object;
.source "IMoviePlayback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback$IPlayerListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/SurfaceView;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract connectView(Landroid/view/SurfaceView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract init()V
.end method

.method public abstract setPlayerListener(Lcom/transsion/camera/feature/mode/movie/algorithm/IMoviePlayback$IPlayerListener;)V
.end method

.method public abstract startPlay()V
.end method

.method public abstract stopPlay()V
.end method

.method public abstract unInit()V
.end method
