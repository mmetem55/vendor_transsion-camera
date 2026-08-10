.class public interface abstract Lcom/transsion/camera/app/common/mode/SubDeviceControl$MainControlInfoCallback;
.super Ljava/lang/Object;
.source "SubDeviceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/mode/SubDeviceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MainControlInfoCallback"
.end annotation


# virtual methods
.method public abstract IsCanRetryOpenCamera()Z
.end method

.method public abstract getActionSoundInfo()Lcom/transsion/camera/utils/sound/IActionSound;
.end method

.method public abstract getOrientationInfo(Ljava/lang/String;)I
.end method

.method public abstract getPreviewSurfaceType()I
.end method

.method public abstract getVideoOrientationInfo(Ljava/lang/String;)I
.end method
