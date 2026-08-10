.class public Lcom/transsion/common/mediacodec/record/video/WindowSurface;
.super Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;
.source "WindowSurface.java"


# instance fields
.field private mReleaseSurface:Z

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/transsion/common/mediacodec/record/gles/EglCore;Landroid/view/Surface;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;-><init>(Lcom/transsion/common/mediacodec/record/gles/EglCore;)V

    .line 45
    invoke-virtual {p0, p2}, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->createWindowSurface(Ljava/lang/Object;)V

    .line 46
    iput-object p2, p0, Lcom/transsion/common/mediacodec/record/video/WindowSurface;->mSurface:Landroid/view/Surface;

    .line 47
    iput-boolean p3, p0, Lcom/transsion/common/mediacodec/record/video/WindowSurface;->mReleaseSurface:Z

    return-void
.end method


# virtual methods
.method public recreate(Lcom/transsion/common/mediacodec/record/gles/EglCore;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/WindowSurface;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 91
    iput-object p1, p0, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->mEglCore:Lcom/transsion/common/mediacodec/record/gles/EglCore;

    .line 92
    invoke-virtual {p0, v0}, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->createWindowSurface(Ljava/lang/Object;)V

    return-void

    .line 89
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "not yet implemented for SurfaceTexture"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public release()V
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->releaseEglSurface()V

    .line 66
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/WindowSurface;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 67
    iget-boolean v1, p0, Lcom/transsion/common/mediacodec/record/video/WindowSurface;->mReleaseSurface:Z

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/transsion/common/mediacodec/record/video/WindowSurface;->mSurface:Landroid/view/Surface;

    :cond_1
    return-void
.end method
