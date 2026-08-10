.class public interface abstract Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor$SurfaceTextureListener;
.super Ljava/lang/Object;
.source "DualVideoPreviewProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/dualvideo/DualVideoPreviewProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SurfaceTextureListener"
.end annotation


# virtual methods
.method public abstract onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end method

.method public abstract onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
.end method

.method public abstract onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
.end method
