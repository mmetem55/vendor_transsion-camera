.class public interface abstract Lcom/transsion/camera/app/common/preview/IPreviewOperator;
.super Ljava/lang/Object;
.source "IPreviewOperator.java"

# interfaces
.implements Lcom/transsion/camera/app/common/preview/IGLThreadRunnable;


# virtual methods
.method public abstract getBitmap(III)Landroid/graphics/Bitmap;
.end method

.method public abstract loadGLResource(ZI)V
.end method

.method public abstract loadGLResources(Z[I)V
.end method

.method public abstract modeInit(Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;)V
.end method

.method public abstract modePause()V
.end method

.method public abstract modeReload()V
.end method

.method public abstract modeResume()V
.end method

.method public abstract modeUninit()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract resetDrawState()V
.end method

.method public abstract setPhotoWithNormalPreview()V
.end method

.method public abstract setVideoWithP3Preview()V
.end method

.method public abstract startRenderRequest(Lcom/transsion/camera/app/common/preview/IPreviewRenderedCallbacker;Landroid/os/Handler;)V
.end method

.method public abstract stopRenderRequest()V
.end method
