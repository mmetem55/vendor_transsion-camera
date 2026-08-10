.class public interface abstract Lcom/transsion/camera/adapter/CameraProxy$CameraCaptureCallback;
.super Ljava/lang/Object;
.source "CameraProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraCaptureCallback"
.end annotation


# virtual methods
.method public abstract onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V
.end method

.method public abstract onCaptureFailed()V
.end method

.method public abstract onCaptureStarted()V
.end method
