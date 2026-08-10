.class public interface abstract Lcom/transsion/camera/adapter/CameraAgent$DeviceStateCallback;
.super Ljava/lang/Object;
.source "CameraAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeviceStateCallback"
.end annotation


# virtual methods
.method public abstract onDeviceClosed(Ljava/lang/String;)V
.end method

.method public abstract onDeviceDisconnected(Ljava/lang/String;)V
.end method

.method public abstract onDeviceError(Ljava/lang/String;I)V
.end method

.method public abstract onDeviceOpened(Lcom/transsion/camera/adapter/CameraProxy;Ljava/lang/String;)V
.end method
