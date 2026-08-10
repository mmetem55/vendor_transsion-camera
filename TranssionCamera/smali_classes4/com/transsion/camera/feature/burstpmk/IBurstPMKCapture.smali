.class interface abstract Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture;
.super Ljava/lang/Object;
.source "IBurstPMKCapture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;,
        Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$ISpeedListener;,
        Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IThumbnailListener;
    }
.end annotation


# virtual methods
.method public abstract registerMoveListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;)V
.end method

.method public abstract setSpeedListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$ISpeedListener;)V
.end method

.method public abstract setThumbnailListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IThumbnailListener;)V
.end method

.method public abstract unRegisterMoveListener(Lcom/transsion/camera/feature/burstpmk/IBurstPMKCapture$IMoveListener;)V
.end method
