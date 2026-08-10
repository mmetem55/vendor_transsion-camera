.class public interface abstract Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$MovieRecordCallback;
.super Ljava/lang/Object;
.source "IMovieRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MovieRecordCallback"
.end annotation


# virtual methods
.method public abstract onRecordFailed(II)V
.end method

.method public abstract onRecordProgressUpdate(IJJ)V
.end method

.method public abstract onRecordStarted(IJ)V
.end method

.method public abstract onRecordStopped(I)V
.end method
