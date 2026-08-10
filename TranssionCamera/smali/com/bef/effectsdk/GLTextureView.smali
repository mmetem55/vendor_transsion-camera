.class public Lcom/bef/effectsdk/GLTextureView;
.super Landroid/view/TextureView;
.source "GLTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bef/effectsdk/GLTextureView$GLThreadManager;,
        Lcom/bef/effectsdk/GLTextureView$LogWriter;,
        Lcom/bef/effectsdk/GLTextureView$GLThread;,
        Lcom/bef/effectsdk/GLTextureView$EglHelper;,
        Lcom/bef/effectsdk/GLTextureView$SimpleEGLConfigChooser;,
        Lcom/bef/effectsdk/GLTextureView$ComponentSizeChooser;,
        Lcom/bef/effectsdk/GLTextureView$BaseConfigChooser;,
        Lcom/bef/effectsdk/GLTextureView$EGLConfigChooser;,
        Lcom/bef/effectsdk/GLTextureView$DefaultWindowSurfaceFactory;,
        Lcom/bef/effectsdk/GLTextureView$EGLWindowSurfaceFactory;,
        Lcom/bef/effectsdk/GLTextureView$DefaultContextFactory;,
        Lcom/bef/effectsdk/GLTextureView$EGLContextFactory;,
        Lcom/bef/effectsdk/GLTextureView$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final LOG_ATTACH_DETACH:Z = true

.field private static final LOG_EGL:Z = true

.field private static final LOG_PAUSE_RESUME:Z = true

.field private static final LOG_RENDERER:Z = true

.field private static final LOG_RENDERER_DRAW_FRAME:Z = true

.field private static final LOG_SURFACE:Z = true

.field private static final LOG_THREADS:Z = true

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GLTextureView"

.field private static final sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mDetached:Z

.field private mEGLConfigChooser:Lcom/bef/effectsdk/GLTextureView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lcom/bef/effectsdk/GLTextureView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/bef/effectsdk/GLTextureView$EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/bef/effectsdk/GLTextureView$GLThread;

.field private mGLWrapper:Lcom/bef/effectsdk/GLTextureView$GLWrapper;

.field private mPreserveEGLContextOnPause:Z

.field mPrevSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bef/effectsdk/GLTextureView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1768
    new-instance v0, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bef/effectsdk/GLTextureView$GLThreadManager;-><init>(Lcom/bef/effectsdk/GLTextureView$1;)V

    sput-object v0, Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lcom/bef/effectsdk/GLTextureView;->mPrevSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1770
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/bef/effectsdk/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 99
    invoke-direct {p0}, Lcom/bef/effectsdk/GLTextureView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Lcom/bef/effectsdk/GLTextureView;->mPrevSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1770
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/bef/effectsdk/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 108
    invoke-direct {p0}, Lcom/bef/effectsdk/GLTextureView;->init()V

    return-void
.end method

.method static synthetic access$1000(Lcom/bef/effectsdk/GLTextureView;)Landroid/opengl/GLSurfaceView$Renderer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/bef/effectsdk/GLTextureView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/bef/effectsdk/GLTextureView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/bef/effectsdk/GLTextureView;->mEGLContextClientVersion:I

    return p0
.end method

.method static synthetic access$202(Lcom/bef/effectsdk/GLTextureView;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/bef/effectsdk/GLTextureView;->mEGLContextClientVersion:I

    return p1
.end method

.method static synthetic access$300(Lcom/bef/effectsdk/GLTextureView;)Lcom/bef/effectsdk/GLTextureView$EGLConfigChooser;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/bef/effectsdk/GLTextureView;->mEGLConfigChooser:Lcom/bef/effectsdk/GLTextureView$EGLConfigChooser;

    return-object p0
.end method

.method static synthetic access$400(Lcom/bef/effectsdk/GLTextureView;)Lcom/bef/effectsdk/GLTextureView$EGLContextFactory;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/bef/effectsdk/GLTextureView;->mEGLContextFactory:Lcom/bef/effectsdk/GLTextureView$EGLContextFactory;

    return-object p0
.end method

.method static synthetic access$500(Lcom/bef/effectsdk/GLTextureView;)Lcom/bef/effectsdk/GLTextureView$EGLWindowSurfaceFactory;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/bef/effectsdk/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/bef/effectsdk/GLTextureView$EGLWindowSurfaceFactory;

    return-object p0
.end method

.method static synthetic access$600(Lcom/bef/effectsdk/GLTextureView;)Lcom/bef/effectsdk/GLTextureView$GLWrapper;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/bef/effectsdk/GLTextureView;->mGLWrapper:Lcom/bef/effectsdk/GLTextureView$GLWrapper;

    return-object p0
.end method

.method static synthetic access$700(Lcom/bef/effectsdk/GLTextureView;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/bef/effectsdk/GLTextureView;->mDebugFlags:I

    return p0
.end method

.method static synthetic access$800()Lcom/bef/effectsdk/GLTextureView$GLThreadManager;
    .locals 1

    .line 46
    sget-object v0, Lcom/bef/effectsdk/GLTextureView;->sGLThreadManager:Lcom/bef/effectsdk/GLTextureView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/bef/effectsdk/GLTextureView;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/bef/effectsdk/GLTextureView;->mPreserveEGLContextOnPause:Z

    return p0
.end method

.method private checkRenderThreadState()V
    .locals 1

    .line 1647
    iget-object p0, p0, Lcom/bef/effectsdk/GLTextureView;->mGLThread:Lcom/bef/effectsdk/GLTextureView$GLThread;

    if-nez p0, :cond_0

    return-void

    .line 1648
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setRenderer has already been called for this instance."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private init()V
    .locals 0

    .line 125
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/bef/effectsdk/GLTextureView;->mGLThread:Lcom/bef/effectsdk/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->requestExitAndWait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 121
    throw v0
.end method

.method public getDebugFlags()I
    .locals 0

    .line 163
    iget p0, p0, Lcom/bef/effectsdk/GLTextureView;->mDebugFlags:I

    return p0
.end method

.method public getEGLContextClientVersion()I
    .locals 0

    .line 352
    iget p0, p0, Lcom/bef/effectsdk/GLTextureView;->mEGLContextClientVersion:I

    return p0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 0

    .line 192
    iget-boolean p0, p0, Lcom/bef/effectsdk/GLTextureView;->mPreserveEGLContextOnPause:Z

    return p0
.end method

.method public getRenderMode()I
    .locals 0

    .line 383
    iget-object p0, p0, Lcom/bef/effectsdk/GLTextureView;->mGLThread:Lcom/bef/effectsdk/GLTextureView$GLThread;

    invoke-virtual {p0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->getRenderMode()I

    move-result p0

    return p0
.end method

.method public on(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/bef/effectsdk/GLTextureView;->mGLThread:Lcom/bef/effectsdk/GLTextureView$GLThread;

    invoke-virtual {p0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->surfaceCreated()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 494
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAttachedToWindow reattach ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bef/effectsdk/GLTextureView;->mDetached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLTextureView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView;->mDetached:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bef/effectsdk/GLTextureView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    if-eqz v0, :cond_2

    .line 500
    iget-object v0, p0, Lcom/bef/effectsdk/GLTextureView;->mGLThread:Lcom/bef/effectsdk/GLTextureView$GLThread;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->getRenderMode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 503
    :goto_0
    new-instance v2, Lcom/bef/effectsdk/GLTextureView$GLThread;

    iget-object v3, p0, Lcom/bef/effectsdk/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Lcom/bef/effectsdk/GLTextureView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v2, p0, Lcom/bef/effectsdk/GLTextureView;->mGLThread:Lcom/bef/effectsdk/GLTextureView$GLThread;

    if-eq v0, v1, :cond_1

    .line 505
    invoke-virtual {v2, v0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->setRenderMode(I)V

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/bef/effectsdk/GLTextureView;->mGLThread:Lcom/bef/effectsdk/GLTextureView$GLThread;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/bef/effectsdk/GLTextureView$GLThread;->onWindowResize(II)V

    .line 508
    iget-object v0, p0, Lcom/bef/effectsdk/GLTextureView;->mGLThread:Lcom/bef/effectsdk/GLTextureView$GLThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    const/4 v0, 0x0

    .line 510
    iput-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView;->mDetached:Z

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 471
    iget-object p0, p0, Lcom/bef/effectsdk/GLTextureView;->mPrevSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p0, :cond_0

    .line 472
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const-string v0, "GLTextureView"

    const-string v1, "onDetachedFromWindow"

    .line 521
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/bef/effectsdk/GLTextureView;->mGLThread:Lcom/bef/effectsdk/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {v0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->requestExitAndWait()V

    :cond_0
    const/4 v0, 0x1

    .line 526
    iput-boolean v0, p0, Lcom/bef/effectsdk/GLTextureView;->mDetached:Z

    .line 527
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    return-void
.end method

.method public onExitContext()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 450
    iget-object p0, p0, Lcom/bef/effectsdk/GLTextureView;->mGLThread:Lcom/bef/effectsdk/GLTextureView$GLThread;

    invoke-virtual {p0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/bef/effectsdk/GLTextureView;->mPrevSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/bef/effectsdk/GLTextureView;->mPrevSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq v0, v1, :cond_0

    .line 463
    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 464
    iget-object v0, p0, Lcom/bef/effectsdk/GLTextureView;->mGLThread:Lcom/bef/effectsdk/GLTextureView$GLThread;

    invoke-virtual {v0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->surfaceCreated()V

    .line 466
    :cond_0
    iget-object p0, p0, Lcom/bef/effectsdk/GLTextureView;->mGLThread:Lcom/bef/effectsdk/GLTextureView$GLThread;

    invoke-virtual {p0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->onResume()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 412
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->onSizeChanged(IIII)V

    .line 413
    iget-object p0, p0, Lcom/bef/effectsdk/GLTextureView;->mGLThread:Lcom/bef/effectsdk/GLTextureView$GLThread;

    if-eqz p0, :cond_0

    .line 414
    invoke-virtual {p0, p1, p2}, Lcom/bef/effectsdk/GLTextureView$GLThread;->onWindowResize(II)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/bef/effectsdk/GLTextureView;->mPrevSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 400
    iget-object p0, p0, Lcom/bef/effectsdk/GLTextureView;->mGLThread:Lcom/bef/effectsdk/GLTextureView$GLThread;

    if-eqz p0, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->surfaceCreated()V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 420
    iget-object p0, p0, Lcom/bef/effectsdk/GLTextureView;->mGLThread:Lcom/bef/effectsdk/GLTextureView$GLThread;

    if-eqz p0, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->surfaceDestroyed()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 407
    iget-object p0, p0, Lcom/bef/effectsdk/GLTextureView;->mGLThread:Lcom/bef/effectsdk/GLTextureView$GLThread;

    invoke-virtual {p0, p2, p3}, Lcom/bef/effectsdk/GLTextureView$GLThread;->onWindowResize(II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 429
    invoke-virtual {p0}, Lcom/bef/effectsdk/GLTextureView;->getRenderMode()I

    move-result p1

    if-eqz p1, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/bef/effectsdk/GLTextureView;->requestRender()V

    :cond_0
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 0

    .line 485
    iget-object p0, p0, Lcom/bef/effectsdk/GLTextureView;->mGLThread:Lcom/bef/effectsdk/GLTextureView$GLThread;

    invoke-virtual {p0, p1}, Lcom/bef/effectsdk/GLTextureView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestRender()V
    .locals 0

    .line 394
    iget-object p0, p0, Lcom/bef/effectsdk/GLTextureView;->mGLThread:Lcom/bef/effectsdk/GLTextureView$GLThread;

    invoke-virtual {p0}, Lcom/bef/effectsdk/GLTextureView$GLThread;->requestRender()V

    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/bef/effectsdk/GLTextureView;->mDebugFlags:I

    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 9

    .line 316
    new-instance v8, Lcom/bef/effectsdk/GLTextureView$ComponentSizeChooser;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bef/effectsdk/GLTextureView$ComponentSizeChooser;-><init>(Lcom/bef/effectsdk/GLTextureView;IIIIII)V

    invoke-virtual {p0, v8}, Lcom/bef/effectsdk/GLTextureView;->setEGLConfigChooser(Lcom/bef/effectsdk/GLTextureView$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLConfigChooser(Lcom/bef/effectsdk/GLTextureView$EGLConfigChooser;)V
    .locals 0

    .line 279
    invoke-direct {p0}, Lcom/bef/effectsdk/GLTextureView;->checkRenderThreadState()V

    .line 280
    iput-object p1, p0, Lcom/bef/effectsdk/GLTextureView;->mEGLConfigChooser:Lcom/bef/effectsdk/GLTextureView$EGLConfigChooser;

    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1

    .line 298
    new-instance v0, Lcom/bef/effectsdk/GLTextureView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lcom/bef/effectsdk/GLTextureView$SimpleEGLConfigChooser;-><init>(Lcom/bef/effectsdk/GLTextureView;Z)V

    invoke-virtual {p0, v0}, Lcom/bef/effectsdk/GLTextureView;->setEGLConfigChooser(Lcom/bef/effectsdk/GLTextureView$EGLConfigChooser;)V

    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/bef/effectsdk/GLTextureView;->checkRenderThreadState()V

    .line 348
    iput p1, p0, Lcom/bef/effectsdk/GLTextureView;->mEGLContextClientVersion:I

    return-void
.end method

.method public setEGLContextFactory(Lcom/bef/effectsdk/GLTextureView$EGLContextFactory;)V
    .locals 0

    .line 248
    invoke-direct {p0}, Lcom/bef/effectsdk/GLTextureView;->checkRenderThreadState()V

    .line 249
    iput-object p1, p0, Lcom/bef/effectsdk/GLTextureView;->mEGLContextFactory:Lcom/bef/effectsdk/GLTextureView$EGLContextFactory;

    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lcom/bef/effectsdk/GLTextureView$EGLWindowSurfaceFactory;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/bef/effectsdk/GLTextureView;->checkRenderThreadState()V

    .line 263
    iput-object p1, p0, Lcom/bef/effectsdk/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/bef/effectsdk/GLTextureView$EGLWindowSurfaceFactory;

    return-void
.end method

.method public setGLWrapper(Lcom/bef/effectsdk/GLTextureView$GLWrapper;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/bef/effectsdk/GLTextureView;->mGLWrapper:Lcom/bef/effectsdk/GLTextureView$GLWrapper;

    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0

    .line 185
    iput-boolean p1, p0, Lcom/bef/effectsdk/GLTextureView;->mPreserveEGLContextOnPause:Z

    return-void
.end method

.method public setRenderMode(I)V
    .locals 0

    .line 372
    iget-object p0, p0, Lcom/bef/effectsdk/GLTextureView;->mGLThread:Lcom/bef/effectsdk/GLTextureView$GLThread;

    invoke-virtual {p0, p1}, Lcom/bef/effectsdk/GLTextureView$GLThread;->setRenderMode(I)V

    return-void
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 2

    .line 222
    invoke-direct {p0}, Lcom/bef/effectsdk/GLTextureView;->checkRenderThreadState()V

    .line 223
    iget-object v0, p0, Lcom/bef/effectsdk/GLTextureView;->mEGLConfigChooser:Lcom/bef/effectsdk/GLTextureView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Lcom/bef/effectsdk/GLTextureView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/bef/effectsdk/GLTextureView$SimpleEGLConfigChooser;-><init>(Lcom/bef/effectsdk/GLTextureView;Z)V

    iput-object v0, p0, Lcom/bef/effectsdk/GLTextureView;->mEGLConfigChooser:Lcom/bef/effectsdk/GLTextureView$EGLConfigChooser;

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/bef/effectsdk/GLTextureView;->mEGLContextFactory:Lcom/bef/effectsdk/GLTextureView$EGLContextFactory;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 227
    new-instance v0, Lcom/bef/effectsdk/GLTextureView$DefaultContextFactory;

    invoke-direct {v0, p0, v1}, Lcom/bef/effectsdk/GLTextureView$DefaultContextFactory;-><init>(Lcom/bef/effectsdk/GLTextureView;Lcom/bef/effectsdk/GLTextureView$1;)V

    iput-object v0, p0, Lcom/bef/effectsdk/GLTextureView;->mEGLContextFactory:Lcom/bef/effectsdk/GLTextureView$EGLContextFactory;

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/bef/effectsdk/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/bef/effectsdk/GLTextureView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 230
    new-instance v0, Lcom/bef/effectsdk/GLTextureView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v1}, Lcom/bef/effectsdk/GLTextureView$DefaultWindowSurfaceFactory;-><init>(Lcom/bef/effectsdk/GLTextureView$1;)V

    iput-object v0, p0, Lcom/bef/effectsdk/GLTextureView;->mEGLWindowSurfaceFactory:Lcom/bef/effectsdk/GLTextureView$EGLWindowSurfaceFactory;

    .line 232
    :cond_2
    iput-object p1, p0, Lcom/bef/effectsdk/GLTextureView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 233
    new-instance p1, Lcom/bef/effectsdk/GLTextureView$GLThread;

    iget-object v0, p0, Lcom/bef/effectsdk/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Lcom/bef/effectsdk/GLTextureView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Lcom/bef/effectsdk/GLTextureView;->mGLThread:Lcom/bef/effectsdk/GLTextureView$GLThread;

    .line 234
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
