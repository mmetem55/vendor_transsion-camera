.class public Lcom/bef/effectsdk/game/BEFGameView;
.super Landroid/opengl/GLSurfaceView;
.source "BEFGameView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/bef/effectsdk/game/NativeInterface$NativeMessageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bef/effectsdk/game/BEFGameView$BEFGameContextFactory;,
        Lcom/bef/effectsdk/game/BEFGameView$MessageListener;
    }
.end annotation


# static fields
.field protected static final NANO_SECONDS_PER_MICRO_SECOND:J = 0xf4240L

.field protected static final NANO_SECONDS_PER_SECOND:J = 0x3b9aca00L

.field protected static final sDesignHeight:I = 0x500

.field protected static final sDesignWidth:I = 0x2d0

.field protected static final sINALID_HANDLE:I


# instance fields
.field protected mAnimationInterval:J

.field protected mCacheMessages:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentFps:D

.field protected mDstTexture:I

.field protected mFBO:I

.field private mFirstLoopGuard:Z

.field protected mFps:J

.field protected mGameBundlePath:Ljava/lang/String;

.field protected mGlMatrixHandle:I

.field protected mGlPosHandle:I

.field protected mGlProgram:I

.field protected mGlTextureSampleHandle:I

.field protected mGlUvHandle:I

.field protected mHandle:J

.field private mLastTickInNanoSeconds:J

.field protected mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/bef/effectsdk/game/BEFGameView$MessageListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mMatrix:[F

.field private mMultipleTouchEnabled:Z

.field protected mNativeInited:Z

.field protected mSrcTexture:I

.field private mStartTimeStampNanoSeconds:J

.field protected mSwallowTouches:Z

.field private mTouch_ids:[I

.field private mTouch_xs:[F

.field private mTouch_ys:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 117
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mHandle:J

    const-string p1, ""

    .line 49
    iput-object p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mGameBundlePath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mSwallowTouches:Z

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 70
    iput-object p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mMatrix:[F

    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mFirstLoopGuard:Z

    .line 82
    iput-boolean p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mMultipleTouchEnabled:Z

    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 85
    iput-object v1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_ids:[I

    new-array v1, v0, [F

    .line 86
    iput-object v1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_xs:[F

    new-array v0, v0, [F

    .line 87
    iput-object v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_ys:[F

    const/4 v0, 0x2

    .line 119
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 120
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v1, p0

    .line 123
    invoke-virtual/range {v1 .. v7}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 124
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 125
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 127
    new-instance v0, Lcom/bef/effectsdk/game/BEFGameView$BEFGameContextFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bef/effectsdk/game/BEFGameView$BEFGameContextFactory;-><init>(Lcom/bef/effectsdk/game/BEFGameView;Lcom/bef/effectsdk/game/BEFGameView$1;)V

    .line 128
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 129
    invoke-virtual {p0, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 130
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 132
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mListeners:Ljava/util/HashSet;

    .line 133
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mCacheMessages:Ljava/util/Queue;

    const-wide/16 v0, 0x3c

    .line 136
    invoke-virtual {p0, v0, v1}, Lcom/bef/effectsdk/game/BEFGameView;->setFps(J)V

    return-void
.end method

.method static synthetic access$102(Lcom/bef/effectsdk/game/BEFGameView;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mFirstLoopGuard:Z

    return p1
.end method


# virtual methods
.method public addMessageListener(Lcom/bef/effectsdk/game/BEFGameView$MessageListener;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x3

    return p0

    .line 161
    :cond_0
    iget-object p0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mListeners:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method protected convertTouchesToNormalizedPos([F[FI)V
    .locals 7

    .line 537
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v0

    .line 538
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result p0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v2, v0, v1

    const/high16 v3, 0x44340000    # 720.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x44a00000    # 1280.0f

    mul-float/2addr v2, v3

    int-to-float p0, p0

    sub-float/2addr p0, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_0

    .line 544
    aget v4, p1, v3

    .line 545
    aget v5, p2, v3

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v4, v6

    div-float/2addr v4, v0

    sub-float/2addr v4, v1

    .line 546
    aput v4, p1, v3

    sub-float/2addr v5, p0

    mul-float/2addr v5, v6

    div-float/2addr v5, v2

    sub-float v4, v1, v5

    .line 547
    aput v4, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected deleteBuffers()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 561
    iget v2, p0, Lcom/bef/effectsdk/game/BEFGameView;->mSrcTexture:I

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 562
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    new-array v1, v0, [I

    .line 564
    iget v2, p0, Lcom/bef/effectsdk/game/BEFGameView;->mDstTexture:I

    aput v2, v1, v3

    .line 565
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    new-array v1, v0, [I

    .line 567
    iget p0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mFBO:I

    aput p0, v1, v3

    .line 568
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    return-void
.end method

.method public destroyBEFGame()V
    .locals 0

    return-void
.end method

.method public declared-synchronized getCurrentFps()D
    .locals 2

    monitor-enter p0

    .line 237
    :try_start_0
    iget-wide v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mCurrentFps:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNativeInited()Z
    .locals 1

    monitor-enter p0

    .line 246
    :try_start_0
    iget-boolean v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mNativeInited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected initRenderObject()V
    .locals 4

    const-string v0, "attribute vec2 attUV;\nattribute vec2 attPosition;\nvarying vec2 textureCoord;\nuniform mat4 mvpMatrix;\n\nvoid main() {\n    gl_Position  = mvpMatrix * vec4(attPosition, 0.,1.);\n    textureCoord = attUV;\n}\n"

    const-string v1, "precision highp float;\n\nuniform sampler2D uTexture;\nvarying vec2 textureCoord;\nvoid main() {\n    gl_FragColor = texture2D(uTexture, textureCoord);\n}\n"

    .line 328
    invoke-static {v0, v1}, Lcom/bef/effectsdk/OpenGLUtils;->loadProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mGlProgram:I

    const-string v1, "attUV"

    .line 331
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mGlUvHandle:I

    .line 332
    iget v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mGlProgram:I

    const-string v1, "attPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mGlPosHandle:I

    .line 333
    iget v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mGlProgram:I

    const-string v1, "mvpMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mGlMatrixHandle:I

    .line 334
    iget v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mGlProgram:I

    const-string v1, "uTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mGlTextureSampleHandle:I

    .line 336
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getWidth()I

    .line 337
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHeight()I

    const/16 v0, 0x2d0

    const/16 v1, 0x500

    .line 343
    invoke-static {v0, v1}, Lcom/bef/effectsdk/game/RenderTextureUtils;->generateBlankTexture(II)I

    move-result v2

    iput v2, p0, Lcom/bef/effectsdk/game/BEFGameView;->mSrcTexture:I

    .line 346
    invoke-static {v0, v1}, Lcom/bef/effectsdk/game/RenderTextureUtils;->generateBlankTexture(II)I

    move-result v0

    iput v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mDstTexture:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 350
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    aget v0, v1, v2

    .line 351
    iput v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mFBO:I

    const v1, 0x8d40

    .line 352
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 353
    iget p0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mDstTexture:I

    const v0, 0x8ce0

    const/16 v3, 0xde1

    invoke-static {v1, v0, v3, p0, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 354
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method public nativeOnMsgReceived(JJJLjava/lang/String;)I
    .locals 10

    move-object v0, p0

    .line 194
    iget-object v0, v0, Lcom/bef/effectsdk/game/BEFGameView;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/bef/effectsdk/game/BEFGameView$MessageListener;

    move-wide v3, p1

    move-wide v5, p3

    move-wide v7, p5

    move-object/from16 v9, p7

    .line 195
    invoke-interface/range {v2 .. v9}, Lcom/bef/effectsdk/game/BEFGameView$MessageListener;->onMsgReceived(JJJLjava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8

    .line 283
    invoke-virtual {p0}, Lcom/bef/effectsdk/game/BEFGameView;->getNativeInited()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mGameBundlePath:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 287
    :cond_0
    iget-boolean p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mFirstLoopGuard:Z

    if-eqz p1, :cond_1

    .line 288
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mStartTimeStampNanoSeconds:J

    .line 289
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mLastTickInNanoSeconds:J

    .line 292
    :cond_1
    iget-boolean p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mFirstLoopGuard:Z

    if-nez p1, :cond_2

    .line 293
    :goto_0
    iget-object p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mCacheMessages:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 294
    iget-object p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mCacheMessages:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    .line 295
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 300
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/bef/effectsdk/game/BEFGameView;->mStartTimeStampNanoSeconds:J

    long-to-double v2, v2

    sub-double/2addr v0, v2

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, v2

    .line 303
    invoke-virtual {p0, v0, v1}, Lcom/bef/effectsdk/game/BEFGameView;->render(D)V

    .line 305
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/bef/effectsdk/game/BEFGameView;->mLastTickInNanoSeconds:J

    sub-long/2addr v0, v4

    .line 307
    iget-wide v4, p0, Lcom/bef/effectsdk/game/BEFGameView;->mAnimationInterval:J

    cmp-long p1, v0, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-gez p1, :cond_3

    sub-long/2addr v4, v0

    long-to-double v0, v4

    mul-double/2addr v0, v6

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v4

    double-to-long v0, v0

    .line 310
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :catch_0
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/bef/effectsdk/game/BEFGameView;->mLastTickInNanoSeconds:J

    sub-long/2addr v0, v4

    long-to-double v0, v0

    mul-double/2addr v0, v6

    div-double/2addr v0, v2

    div-double/2addr v6, v0

    iput-wide v6, p0, Lcom/bef/effectsdk/game/BEFGameView;->mCurrentFps:D

    .line 316
    iget-wide v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mFps:J

    long-to-double v2, v0

    cmpl-double p1, v6, v2

    if-ltz p1, :cond_4

    long-to-double v0, v0

    .line 317
    iput-wide v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mCurrentFps:D

    .line 320
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mLastTickInNanoSeconds:J

    const/4 p1, 0x0

    .line 322
    iput-boolean p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mFirstLoopGuard:Z

    :cond_5
    :goto_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    .line 256
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mStartTimeStampNanoSeconds:J

    .line 257
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mLastTickInNanoSeconds:J

    const/4 p1, 0x2

    new-array p1, p1, [J

    .line 260
    invoke-static {p1}, Lcom/bef/effectsdk/game/NativeInterface;->createHandle([J)V

    const/4 p2, 0x0

    aget-wide p1, p1, p2

    .line 261
    iput-wide p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mHandle:J

    const/16 v0, 0x2d0

    const/16 v1, 0x500

    .line 262
    invoke-static {p1, p2, v0, v1}, Lcom/bef/effectsdk/game/NativeInterface;->init(JII)I

    .line 264
    iget-wide p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mHandle:J

    invoke-static {p1, p2, p0}, Lcom/bef/effectsdk/game/NativeInterface;->addMessageListener(JLcom/bef/effectsdk/game/NativeInterface$NativeMessageListener;)I

    .line 266
    invoke-virtual {p0}, Lcom/bef/effectsdk/game/BEFGameView;->initRenderObject()V

    const/4 p1, 0x1

    .line 268
    invoke-virtual {p0, p1}, Lcom/bef/effectsdk/game/BEFGameView;->setNativeInited(Z)V

    .line 271
    iget-object p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mGameBundlePath:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 272
    iget-wide p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mHandle:J

    iget-object p0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mGameBundlePath:Ljava/lang/String;

    invoke-static {p1, p2, p0}, Lcom/bef/effectsdk/game/NativeInterface;->setGameBundlePath(JLjava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 420
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 426
    iget-object v3, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_ids:[I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    aput v4, v3, v2

    .line 427
    iget-object v3, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_xs:[F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    aput v4, v3, v2

    .line 428
    iget-object v3, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_ys:[F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 431
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    if-eq v2, v3, :cond_9

    const/4 v4, 0x2

    if-eq v2, v4, :cond_6

    const/4 v4, 0x5

    if-eq v2, v4, :cond_4

    const/4 v4, 0x6

    if-eq v2, v4, :cond_2

    goto/16 :goto_1

    .line 495
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    shr-int/lit8 p1, p1, 0x8

    .line 496
    iget-boolean v2, p0, Lcom/bef/effectsdk/game/BEFGameView;->mMultipleTouchEnabled:Z

    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    goto/16 :goto_1

    .line 499
    :cond_3
    iget-object v2, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_xs:[F

    iget-object v4, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_ys:[F

    invoke-virtual {p0, v2, v4, v0}, Lcom/bef/effectsdk/game/BEFGameView;->convertTouchesToNormalizedPos([F[FI)V

    new-array v0, v3, [I

    .line 501
    iget-object v2, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_ids:[I

    aget v2, v2, p1

    aput v2, v0, v1

    new-array v2, v3, [F

    .line 502
    iget-object v4, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_xs:[F

    aget v4, v4, p1

    aput v4, v2, v1

    new-array v4, v3, [F

    .line 503
    iget-object v5, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_ys:[F

    aget p1, v5, p1

    aput p1, v4, v1

    .line 505
    new-instance p1, Lcom/bef/effectsdk/game/BEFGameView$9;

    invoke-direct {p1, p0, v0, v2, v4}, Lcom/bef/effectsdk/game/BEFGameView$9;-><init>(Lcom/bef/effectsdk/game/BEFGameView;[I[F[F)V

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return v3

    .line 433
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    shr-int/lit8 p1, p1, 0x8

    .line 434
    iget-boolean v2, p0, Lcom/bef/effectsdk/game/BEFGameView;->mMultipleTouchEnabled:Z

    if-nez v2, :cond_5

    if-eqz p1, :cond_5

    goto :goto_1

    .line 437
    :cond_5
    iget-object v2, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_xs:[F

    iget-object v4, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_ys:[F

    invoke-virtual {p0, v2, v4, v0}, Lcom/bef/effectsdk/game/BEFGameView;->convertTouchesToNormalizedPos([F[FI)V

    new-array v0, v3, [I

    .line 438
    iget-object v2, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_ids:[I

    aget v2, v2, p1

    aput v2, v0, v1

    new-array v2, v3, [F

    .line 439
    iget-object v4, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_xs:[F

    aget v4, v4, p1

    aput v4, v2, v1

    new-array v4, v3, [F

    .line 440
    iget-object v5, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_ys:[F

    aget p1, v5, p1

    aput p1, v4, v1

    .line 441
    new-instance p1, Lcom/bef/effectsdk/game/BEFGameView$5;

    invoke-direct {p1, p0, v0, v2, v4}, Lcom/bef/effectsdk/game/BEFGameView$5;-><init>(Lcom/bef/effectsdk/game/BEFGameView;[I[F[F)V

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return v3

    .line 466
    :cond_6
    iget-object p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_xs:[F

    iget-object v2, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_ys:[F

    invoke-virtual {p0, p1, v2, v0}, Lcom/bef/effectsdk/game/BEFGameView;->convertTouchesToNormalizedPos([F[FI)V

    .line 468
    iget-boolean p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mMultipleTouchEnabled:Z

    if-nez p1, :cond_7

    new-array p1, v3, [I

    .line 469
    iget-object v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_ids:[I

    aget v0, v0, v1

    aput v0, p1, v1

    new-array v0, v3, [F

    .line 470
    iget-object v2, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_xs:[F

    aget v2, v2, v1

    aput v2, v0, v1

    new-array v2, v3, [F

    .line 471
    iget-object v3, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_ys:[F

    aget v3, v3, v1

    aput v3, v2, v1

    .line 472
    new-instance v1, Lcom/bef/effectsdk/game/BEFGameView$7;

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/bef/effectsdk/game/BEFGameView$7;-><init>(Lcom/bef/effectsdk/game/BEFGameView;[I[F[F)V

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 532
    :goto_1
    iget-boolean p0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mSwallowTouches:Z

    return p0

    :cond_7
    move p1, v1

    :goto_2
    if-ge p1, v0, :cond_8

    new-array v2, v3, [I

    .line 482
    iget-object v4, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_ids:[I

    aget v4, v4, p1

    aput v4, v2, v1

    new-array v4, v3, [F

    .line 483
    iget-object v5, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_xs:[F

    aget v5, v5, p1

    aput v5, v4, v1

    new-array v5, v3, [F

    .line 484
    iget-object v6, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_ys:[F

    aget v6, v6, p1

    aput v6, v5, v1

    .line 485
    new-instance v6, Lcom/bef/effectsdk/game/BEFGameView$8;

    invoke-direct {v6, p0, v2, v4, v5}, Lcom/bef/effectsdk/game/BEFGameView$8;-><init>(Lcom/bef/effectsdk/game/BEFGameView;[I[F[F)V

    invoke-virtual {p0, v6}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_8
    return v3

    .line 517
    :cond_9
    iget-object p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_xs:[F

    iget-object v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_ys:[F

    invoke-virtual {p0, p1, v0, v3}, Lcom/bef/effectsdk/game/BEFGameView;->convertTouchesToNormalizedPos([F[FI)V

    new-array p1, v3, [I

    .line 518
    iget-object v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_ids:[I

    aget v0, v0, v1

    aput v0, p1, v1

    new-array v0, v3, [F

    .line 519
    iget-object v2, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_xs:[F

    aget v2, v2, v1

    aput v2, v0, v1

    new-array v2, v3, [F

    .line 520
    iget-object v4, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_ys:[F

    aget v4, v4, v1

    aput v4, v2, v1

    .line 522
    new-instance v1, Lcom/bef/effectsdk/game/BEFGameView$10;

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/bef/effectsdk/game/BEFGameView$10;-><init>(Lcom/bef/effectsdk/game/BEFGameView;[I[F[F)V

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return v3

    .line 451
    :cond_a
    iget-object p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_xs:[F

    iget-object v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_ys:[F

    invoke-virtual {p0, p1, v0, v3}, Lcom/bef/effectsdk/game/BEFGameView;->convertTouchesToNormalizedPos([F[FI)V

    new-array p1, v3, [I

    .line 453
    iget-object v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_ids:[I

    aget v0, v0, v1

    aput v0, p1, v1

    new-array v0, v3, [F

    .line 454
    iget-object v2, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_xs:[F

    aget v2, v2, v1

    aput v2, v0, v1

    new-array v2, v3, [F

    .line 455
    iget-object v4, p0, Lcom/bef/effectsdk/game/BEFGameView;->mTouch_ys:[F

    aget v4, v4, v1

    aput v4, v2, v1

    .line 457
    new-instance v1, Lcom/bef/effectsdk/game/BEFGameView$6;

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/bef/effectsdk/game/BEFGameView$6;-><init>(Lcom/bef/effectsdk/game/BEFGameView;[I[F[F)V

    invoke-virtual {p0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return v3
.end method

.method public pauseGame()V
    .locals 1

    .line 202
    new-instance v0, Lcom/bef/effectsdk/game/BEFGameView$3;

    invoke-direct {v0, p0}, Lcom/bef/effectsdk/game/BEFGameView$3;-><init>(Lcom/bef/effectsdk/game/BEFGameView;)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public postMessage(JJJLjava/lang/String;)I
    .locals 10

    .line 177
    new-instance v9, Lcom/bef/effectsdk/game/BEFGameView$2;

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/bef/effectsdk/game/BEFGameView$2;-><init>(Lcom/bef/effectsdk/game/BEFGameView;JJJLjava/lang/String;)V

    move-object v0, p0

    invoke-virtual {p0, v9}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public removeMessageListener(Lcom/bef/effectsdk/game/BEFGameView$MessageListener;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x3

    return p0

    .line 170
    :cond_0
    iget-object p0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mListeners:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method protected render(D)V
    .locals 4

    .line 359
    iget-wide v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mHandle:J

    const/16 v2, 0x2d0

    const/16 v3, 0x500

    invoke-static {v0, v1, v2, v3}, Lcom/bef/effectsdk/game/NativeInterface;->setSize(JII)I

    .line 360
    invoke-virtual {p0, p1, p2}, Lcom/bef/effectsdk/game/BEFGameView;->renderGameToTexture(D)V

    .line 361
    invoke-virtual {p0}, Lcom/bef/effectsdk/game/BEFGameView;->renderTextureToView()V

    return-void
.end method

.method protected renderGameToTexture(D)V
    .locals 9

    .line 367
    iget v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mFBO:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v0, 0x0

    const/16 v2, 0x2d0

    const/16 v3, 0x500

    .line 369
    invoke-static {v0, v0, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v2, 0x0

    .line 371
    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v2, 0x4000

    .line 372
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 374
    iget-wide v3, p0, Lcom/bef/effectsdk/game/BEFGameView;->mHandle:J

    iget v5, p0, Lcom/bef/effectsdk/game/BEFGameView;->mSrcTexture:I

    iget v6, p0, Lcom/bef/effectsdk/game/BEFGameView;->mDstTexture:I

    move-wide v7, p1

    invoke-static/range {v3 .. v8}, Lcom/bef/effectsdk/game/NativeInterface;->processFrame(JIID)I

    .line 375
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method protected renderTextureToView()V
    .locals 10

    const v0, 0x8d40

    const/4 v1, 0x0

    .line 381
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 383
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getWidth()I

    move-result v0

    .line 384
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->getHeight()I

    move-result v2

    .line 385
    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v3, 0x0

    .line 387
    invoke-static {v3, v3, v3, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v3, 0x4000

    .line 388
    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    .line 390
    iget v3, p0, Lcom/bef/effectsdk/game/BEFGameView;->mGlProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v3, 0x84c0

    .line 392
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 393
    iget v3, p0, Lcom/bef/effectsdk/game/BEFGameView;->mDstTexture:I

    const/16 v4, 0xde1

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 394
    iget v3, p0, Lcom/bef/effectsdk/game/BEFGameView;->mGlTextureSampleHandle:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 396
    iget-object v3, p0, Lcom/bef/effectsdk/game/BEFGameView;->mMatrix:[F

    invoke-static {v3, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 397
    iget v3, p0, Lcom/bef/effectsdk/game/BEFGameView;->mGlMatrixHandle:I

    iget-object v4, p0, Lcom/bef/effectsdk/game/BEFGameView;->mMatrix:[F

    const/4 v5, 0x1

    invoke-static {v3, v5, v1, v4, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 399
    iget v3, p0, Lcom/bef/effectsdk/game/BEFGameView;->mGlPosHandle:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    int-to-float v0, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v0, v3

    const/high16 v4, 0x44340000    # 720.0f

    div-float/2addr v0, v4

    const/high16 v4, 0x44a00000    # 1280.0f

    mul-float/2addr v0, v4

    int-to-float v2, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v2

    const/high16 v2, -0x40800000    # -1.0f

    .line 407
    invoke-static {v2, v3, v0, v2}, Lcom/bef/effectsdk/game/RenderTextureUtils;->getVertexBufferWithParams(FFFF)Ljava/nio/FloatBuffer;

    move-result-object v9

    .line 408
    iget v4, p0, Lcom/bef/effectsdk/game/BEFGameView;->mGlPosHandle:I

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 410
    iget v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mGlUvHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 411
    invoke-static {}, Lcom/bef/effectsdk/game/RenderTextureUtils;->getUVBuffer()Ljava/nio/FloatBuffer;

    move-result-object v7

    .line 412
    iget v2, p0, Lcom/bef/effectsdk/game/BEFGameView;->mGlUvHandle:I

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/4 p0, 0x5

    const/4 v0, 0x4

    .line 414
    invoke-static {p0, v1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public resumeGame()V
    .locals 1

    .line 214
    new-instance v0, Lcom/bef/effectsdk/game/BEFGameView$4;

    invoke-direct {v0, p0}, Lcom/bef/effectsdk/game/BEFGameView$4;-><init>(Lcom/bef/effectsdk/game/BEFGameView;)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFps(J)V
    .locals 3

    const-wide/16 v0, 0x3c

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 227
    iput-wide v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mFps:J

    goto :goto_0

    .line 229
    :cond_0
    iput-wide p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mFps:J

    .line 231
    :goto_0
    iget-wide p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mFps:J

    long-to-double v0, p1

    iput-wide v0, p0, Lcom/bef/effectsdk/game/BEFGameView;->mCurrentFps:D

    const/high16 v0, 0x3f800000    # 1.0f

    long-to-float p1, p1

    div-float/2addr v0, p1

    const p1, 0x4e6e6b28    # 1.0E9f

    mul-float/2addr v0, p1

    float-to-long p1, v0

    .line 232
    iput-wide p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mAnimationInterval:J

    return-void
.end method

.method public setGameBundlePath(Ljava/lang/String;)V
    .locals 1

    .line 141
    new-instance v0, Lcom/bef/effectsdk/game/BEFGameView$1;

    invoke-direct {v0, p0, p1}, Lcom/bef/effectsdk/game/BEFGameView$1;-><init>(Lcom/bef/effectsdk/game/BEFGameView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected setNativeInited(Z)V
    .locals 0

    .line 250
    iput-boolean p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mNativeInited:Z

    return-void
.end method

.method public setSwallowTouches(Z)V
    .locals 0

    .line 242
    iput-boolean p1, p0, Lcom/bef/effectsdk/game/BEFGameView;->mSwallowTouches:Z

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 553
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    return-void
.end method
