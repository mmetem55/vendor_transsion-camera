.class public Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;
.super Ljava/lang/Object;
.source "EglSurfaceBase.java"


# instance fields
.field private mEGLSurface:Landroid/opengl/EGLSurface;

.field protected mEglCore:Lcom/transsion/common/mediacodec/record/gles/EglCore;

.field protected mHeight:I

.field protected mWidth:I


# direct methods
.method protected constructor <init>(Lcom/transsion/common/mediacodec/record/gles/EglCore;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->mWidth:I

    .line 36
    iput v0, p0, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->mHeight:I

    .line 39
    iput-object p1, p0, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->mEglCore:Lcom/transsion/common/mediacodec/record/gles/EglCore;

    return-void
.end method


# virtual methods
.method public createWindowSurface(Ljava/lang/Object;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->mEglCore:Lcom/transsion/common/mediacodec/record/gles/EglCore;

    invoke-virtual {v0, p1}, Lcom/transsion/common/mediacodec/record/gles/EglCore;->createWindowSurface(Ljava/lang/Object;)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    return-void

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "surface already created"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public makeCurrent()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->mEglCore:Lcom/transsion/common/mediacodec/record/gles/EglCore;

    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, p0}, Lcom/transsion/common/mediacodec/record/gles/EglCore;->makeCurrent(Landroid/opengl/EGLSurface;)V

    return-void
.end method

.method public releaseEglSurface()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->mEglCore:Lcom/transsion/common/mediacodec/record/gles/EglCore;

    iget-object v1, p0, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, v1}, Lcom/transsion/common/mediacodec/record/gles/EglCore;->releaseSurface(Landroid/opengl/EGLSurface;)V

    .line 102
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    const/4 v0, -0x1

    .line 103
    iput v0, p0, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->mHeight:I

    iput v0, p0, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->mWidth:I

    return-void
.end method

.method public setPresentationTime(J)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->mEglCore:Lcom/transsion/common/mediacodec/record/gles/EglCore;

    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, p0, p1, p2}, Lcom/transsion/common/mediacodec/record/gles/EglCore;->setPresentationTime(Landroid/opengl/EGLSurface;J)V

    return-void
.end method

.method public swapBuffers()Z
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->mEglCore:Lcom/transsion/common/mediacodec/record/gles/EglCore;

    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->mEGLSurface:Landroid/opengl/EGLSurface;

    invoke-virtual {v0, p0}, Lcom/transsion/common/mediacodec/record/gles/EglCore;->swapBuffers(Landroid/opengl/EGLSurface;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string v0, "EglSurfaceBase"

    const-string v1, "WARNING: swapBuffers() failed"

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p0
.end method
