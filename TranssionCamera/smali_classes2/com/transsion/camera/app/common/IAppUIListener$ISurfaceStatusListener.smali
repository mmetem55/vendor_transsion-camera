.class public interface abstract Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener;
.super Ljava/lang/Object;
.source "IAppUIListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;
    }
.end annotation


# virtual methods
.method public abstract getSurfaceDestroyReason()I
.end method

.method public abstract surfaceAvailable(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V
.end method

.method public abstract surfaceChanged(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;II)V
.end method

.method public abstract surfaceDestroyed(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Ljava/lang/Object;)V
.end method

.method public abstract surfaceDrawn()V
.end method

.method public abstract surfaceShow(Lcom/transsion/camera/app/common/IAppUIListener$ISurfaceStatusListener$SurfaceType;Z)V
.end method
