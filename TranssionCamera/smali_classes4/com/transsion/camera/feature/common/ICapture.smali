.class public interface abstract Lcom/transsion/camera/feature/common/ICapture;
.super Ljava/lang/Object;
.source "ICapture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;,
        Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;,
        Lcom/transsion/camera/feature/common/ICapture$IStatusListener;
    }
.end annotation


# virtual methods
.method public abstract setStatusListener(Lcom/transsion/camera/feature/common/ICapture$IStatusListener;)V
.end method

.method public abstract setStreamStatusListener(Lcom/transsion/camera/feature/common/ICapture$IStreamStatusListener;)V
.end method

.method public abstract setThumbnailOperator(Lcom/transsion/camera/feature/common/ICapture$IThumbnailOperator;)V
.end method
