.class public interface abstract Lcom/transsion/camera/app/common/preview/IPreviewCallbacker;
.super Ljava/lang/Object;
.source "IPreviewCallbacker.java"


# virtual methods
.method public abstract draw(Landroid/graphics/SurfaceTexture;III)Z
.end method

.method public abstract drawExtra(Landroid/graphics/SurfaceTexture;III)V
.end method

.method public abstract drawOffScreen(Landroid/graphics/SurfaceTexture;IIII)Z
.end method

.method public abstract loadGLResourceCallback(I)V
.end method

.method public abstract loadGLResourcesCallback([I)V
.end method

.method public abstract modeInitCallback()V
.end method

.method public abstract modePauseCallback()V
.end method

.method public abstract modeReloadCallback()V
.end method

.method public abstract modeResumeCallback()V
.end method

.method public abstract modeUninitCallback()V
.end method

.method public abstract surfaceChangedCallback(Landroid/graphics/SurfaceTexture;II)V
.end method

.method public abstract surfaceCreatedCallback(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract surfaceDestroyCallback(Landroid/graphics/SurfaceTexture;)V
.end method
