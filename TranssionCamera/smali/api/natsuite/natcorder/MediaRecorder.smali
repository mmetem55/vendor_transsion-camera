.class public interface abstract Lapi/natsuite/natcorder/MediaRecorder;
.super Ljava/lang/Object;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapi/natsuite/natcorder/MediaRecorder$Callback;
    }
.end annotation


# virtual methods
.method public abstract commitFrame(Ljava/nio/ByteBuffer;J)V
.end method

.method public abstract commitSamples([FJ)V
.end method

.method public abstract finishWriting(Lapi/natsuite/natcorder/MediaRecorder$Callback;)V
.end method

.method public abstract frameHeight()I
.end method

.method public abstract frameWidth()I
.end method
