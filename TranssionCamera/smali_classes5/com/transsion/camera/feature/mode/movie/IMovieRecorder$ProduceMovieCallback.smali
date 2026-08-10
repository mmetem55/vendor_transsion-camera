.class public interface abstract Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$ProduceMovieCallback;
.super Ljava/lang/Object;
.source "IMovieRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProduceMovieCallback"
.end annotation


# virtual methods
.method public abstract onProduceFailed()V
.end method

.method public abstract onProduceFinished(Lcom/transsion/camera/feature/mode/movie/MovieInfo;)V
.end method

.method public abstract onProduceStarted()V
.end method
