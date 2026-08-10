.class public interface abstract Lcom/transsion/camera/app/common/mode/SubDeviceControl$NotifyDeviceStateCallback;
.super Ljava/lang/Object;
.source "SubDeviceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/SubDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotifyDeviceStateCallback"
.end annotation


# virtual methods
.method public abstract notifyDeviceClosed(Ljava/lang/String;)V
.end method

.method public abstract notifyDeviceDisconnected(Ljava/lang/String;)V
.end method

.method public abstract notifyDeviceError(Ljava/lang/String;I)V
.end method

.method public abstract notifyDeviceOpened(Ljava/lang/String;)V
.end method

.method public abstract notifyFirstSteadyFrame(Ljava/lang/String;)V
.end method

.method public abstract notifyStartCreatSession(Ljava/lang/String;)V
.end method

.method public abstract notifyStartPreview(ILjava/lang/String;)V
.end method

.method public abstract notifyStopPreview(Ljava/lang/String;)V
.end method

.method public abstract notifyTakePictureFailed(Ljava/lang/String;)V
.end method
