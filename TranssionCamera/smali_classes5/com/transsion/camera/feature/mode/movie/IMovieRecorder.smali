.class public interface abstract Lcom/transsion/camera/feature/mode/movie/IMovieRecorder;
.super Ljava/lang/Object;
.source "IMovieRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$ProduceMovieCallback;,
        Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$MovieRecordCallback;
    }
.end annotation


# static fields
.field public static final RECORD_FAILED_REASON_ALL_RECORDER:I = 0x1

.field public static final RECORD_FAILED_REASON_CANCEL:I = 0x2

.field public static final RECORD_FAILED_REASON_WRONG_STATE:I


# virtual methods
.method public abstract cancelProduceMovie()V
.end method

.method public abstract deleteAllSections()V
.end method

.method public abstract deleteLatestSection()I
.end method

.method public abstract deleteRecorded()V
.end method

.method public abstract getMovieFeed()Lcom/transsion/camera/feature/mode/movie/data/MovieFeed;
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract produceMovie()V
.end method

.method public abstract resetTheme()V
.end method

.method public abstract setProduceMovieCallback(Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$ProduceMovieCallback;)V
.end method

.method public abstract setRecordCallback(Lcom/transsion/camera/feature/mode/movie/IMovieRecorder$MovieRecordCallback;)V
.end method

.method public abstract setRecorderUI(Lcom/transsion/camera/feature/mode/movie/ui/recorder/IRecorderUI;)V
.end method

.method public abstract startRecord(I)V
.end method

.method public abstract stopRecord()V
.end method

.method public abstract updateSize(II)V
.end method

.method public abstract updateTheme(Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;)V
.end method
