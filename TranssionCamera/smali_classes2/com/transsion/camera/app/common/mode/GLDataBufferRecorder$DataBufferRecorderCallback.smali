.class public interface abstract Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder$DataBufferRecorderCallback;
.super Ljava/lang/Object;
.source "GLDataBufferRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/GLDataBufferRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataBufferRecorderCallback"
.end annotation


# virtual methods
.method public abstract onDataBufferRecorderPaused()V
.end method

.method public abstract onDataBufferRecorderPrepared()V
.end method

.method public abstract onDataBufferRecorderResumed()V
.end method

.method public abstract onDataBufferRecorderSaving()V
.end method

.method public abstract onDataBufferRecorderStarted()V
.end method

.method public abstract onDataBufferRecorderStopped()V
.end method

.method public abstract onDataBufferRecorderStopped(Landroid/net/Uri;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onStartFailed()V
.end method

.method public abstract onStopFailed()V
.end method
