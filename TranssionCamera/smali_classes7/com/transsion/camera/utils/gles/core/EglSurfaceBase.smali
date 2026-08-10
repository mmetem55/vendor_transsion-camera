.class public Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;
.super Ljava/lang/Object;
.source "EglSurfaceBase.java"


# instance fields
.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field protected mEglCore:Lcom/transsion/camera/utils/gles/core/EglCore;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method protected constructor <init>(Lcom/transsion/camera/utils/gles/core/EglCore;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->mWidth:I

    .line 46
    iput v0, p0, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->mHeight:I

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->mEglCore:Lcom/transsion/camera/utils/gles/core/EglCore;

    return-void
.end method


# virtual methods
.method public createWindowSurface(Ljava/lang/Object;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->mEglCore:Lcom/transsion/camera/utils/gles/core/EglCore;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/gles/core/EglCore;->createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    return-void

    .line 60
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "surface already created"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public makeCurrent()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->mEglCore:Lcom/transsion/camera/utils/gles/core/EglCore;

    iget-object p0, p0, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/gles/core/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;)V

    return-void
.end method

.method public releaseEglSurface()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->mEglCore:Lcom/transsion/camera/utils/gles/core/EglCore;

    iget-object v1, p0, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/gles/core/EglCore;->releaseSurface(Landroid/opengl/EGLSurface;)V

    .line 113
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/4 v0, -0x1

    .line 114
    iput v0, p0, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->mHeight:I

    iput v0, p0, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->mWidth:I

    return-void
.end method

.method public setPresentationTime(J)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->mEglCore:Lcom/transsion/camera/utils/gles/core/EglCore;

    iget-object p0, p0, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, p0, p1, p2}, Lcom/transsion/camera/utils/gles/core/EglCore;->setPresentationTime(Landroid/opengl/EGLSurface;J)V

    return-void
.end method

.method public swapBuffers()Z
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->mEglCore:Lcom/transsion/camera/utils/gles/core/EglCore;

    iget-object p0, p0, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/gles/core/EglCore;->swapBuffers(Landroid/opengl/EGLSurface;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string v0, "Grafika"

    const-string v1, "WARNING: swapBuffers() failed"

    .line 140
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p0
.end method
