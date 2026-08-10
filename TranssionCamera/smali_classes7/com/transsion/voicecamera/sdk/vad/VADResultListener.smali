.class public interface abstract Lcom/transsion/voicecamera/sdk/vad/VADResultListener;
.super Ljava/lang/Object;
.source "VADResultListener.java"


# virtual methods
.method public abstract onDataFrame(Lcom/transsion/voicecamera/sdk/vad/VADResultFrame;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract onError(I)V
.end method

.method public abstract onExit()V
.end method

.method public abstract onReady(Ljava/lang/String;)V
.end method
