.class public interface abstract Lcom/transsion/camera/feature/common/ICapture$IStatusListener;
.super Ljava/lang/Object;
.source "ICapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/common/ICapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IStatusListener"
.end annotation


# virtual methods
.method public abstract onCaptureEnd()V
.end method

.method public abstract onCaptureFailed()V
.end method

.method public abstract onCaptureStart()V
.end method

.method public abstract onCaptureStop()V
.end method
