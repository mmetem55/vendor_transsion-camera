.class public Lcom/transsion/camera/utils/gles/core/WindowSurface;
.super Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;
.source "WindowSurface.java"


# instance fields
.field private mReleaseSurface:Z

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/utils/gles/core/EglCore;Landroid/view/Surface;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;-><init>(Lcom/transsion/camera/utils/gles/core/EglCore;)V

    .line 42
    invoke-virtual {p0, p2}, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->createWindowSurface(Ljava/lang/Object;)V

    .line 43
    iput-object p2, p0, Lcom/transsion/camera/utils/gles/core/WindowSurface;->mSurface:Landroid/view/Surface;

    .line 44
    iput-boolean p3, p0, Lcom/transsion/camera/utils/gles/core/WindowSurface;->mReleaseSurface:Z

    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->releaseEglSurface()V

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/core/WindowSurface;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 64
    iget-boolean v1, p0, Lcom/transsion/camera/utils/gles/core/WindowSurface;->mReleaseSurface:Z

    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/transsion/camera/utils/gles/core/WindowSurface;->mSurface:Landroid/view/Surface;

    :cond_1
    return-void
.end method
