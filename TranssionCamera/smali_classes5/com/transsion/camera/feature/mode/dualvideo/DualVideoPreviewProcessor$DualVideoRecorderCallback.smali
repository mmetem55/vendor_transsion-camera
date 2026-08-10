.class public interface abstract Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$DualVideoRecorderCallback;
.super Ljava/lang/Object;
.source "DualVideoPreviewProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DualVideoRecorderCallback"
.end annotation


# virtual methods
.method public abstract notifyVideoRecorderData([FI)V
.end method

.method public abstract notifyVideoStartRecorder()V
.end method

.method public abstract notifyVideoStopRecorder()V
.end method
