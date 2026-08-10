.class public interface abstract Lcom/transsion/camera/app/ui/opengl/GLPreviewView$SurfaceTextureListener;
.super Ljava/lang/Object;
.source "GLPreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/opengl/GLPreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SurfaceTextureListener"
.end annotation


# virtual methods
.method public abstract getSurfaceDestroyReason()I
.end method

.method public abstract onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end method

.method public abstract onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
.end method

.method public abstract onSurfaceTextureDrawn()V
.end method

.method public abstract onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
.end method

.method public abstract onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
.end method
