.class public final Lcom/transsion/camera/utils/encoder/RenderHandler;
.super Ljava/lang/Object;
.source "RenderHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mEgl_type:I


# instance fields
.field private mEglCore:Lcom/transsion/camera/utils/gles/core/EglCore;

.field private mFullScreen:Lcom/transsion/camera/utils/gles/core/Program;

.field private mInputWindowSurface:Lcom/transsion/camera/utils/gles/core/WindowSurface;

.field private final mLock:Ljava/lang/Object;

.field private mNeedReleaseSurface:Z

.field private mPresentationTime:J

.field private mRequestDraw:I

.field private mRequestRelease:Z

.field private mRequestSetEglContext:Z

.field private mShard_context:Landroid/opengl/EGLContext;

.field private mSurface:Landroid/view/Surface;

.field private mTexId:I

.field private mtx:[F

.field private mvp:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/transsion/camera/utils/encoder/RenderHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/encoder/RenderHandler;->TAG:Ljava/lang/String;

    const/4 v0, -0x1

    .line 20
    sput v0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mEgl_type:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 26
    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mtx:[F

    new-array v0, v0, [F

    .line 27
    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mvp:[F

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mPresentationTime:J

    return-void
.end method

.method public static final createHandler(Ljava/lang/String;I)Lcom/transsion/camera/utils/encoder/RenderHandler;
    .locals 3

    .line 41
    sput p1, Lcom/transsion/camera/utils/encoder/RenderHandler;->mEgl_type:I

    .line 42
    new-instance p1, Lcom/transsion/camera/utils/encoder/RenderHandler;

    invoke-direct {p1}, Lcom/transsion/camera/utils/encoder/RenderHandler;-><init>()V

    .line 43
    iget-object v0, p1, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 44
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->TAG:Ljava/lang/String;

    :goto_0
    invoke-direct {v1, p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 45
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private final internalPrepare()V
    .locals 7

    .line 159
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/RenderHandler;->internalRelease()V

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    sget-object v0, Lcom/transsion/camera/utils/encoder/RenderHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSurface.isValid() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 164
    :cond_0
    new-instance v0, Lcom/transsion/camera/utils/gles/core/EglCore;

    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mShard_context:Landroid/opengl/EGLContext;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/utils/gles/core/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mEglCore:Lcom/transsion/camera/utils/gles/core/EglCore;

    .line 165
    new-instance v1, Lcom/transsion/camera/utils/gles/core/WindowSurface;

    iget-object v2, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mSurface:Landroid/view/Surface;

    iget-boolean v3, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mNeedReleaseSurface:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/transsion/camera/utils/gles/core/WindowSurface;-><init>(Lcom/transsion/camera/utils/gles/core/EglCore;Landroid/view/Surface;Z)V

    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mInputWindowSurface:Lcom/transsion/camera/utils/gles/core/WindowSurface;

    .line 166
    invoke-virtual {v1}, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->makeCurrent()V

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 169
    sget v2, Lcom/transsion/camera/utils/encoder/RenderHandler;->mEgl_type:I

    const/16 v3, 0xde1

    if-ne v2, v3, :cond_1

    .line 170
    new-instance v2, Lcom/transsion/camera/utils/gles/ProgramTexture2d;

    invoke-direct {v2}, Lcom/transsion/camera/utils/gles/ProgramTexture2d;-><init>()V

    goto :goto_0

    .line 172
    :cond_1
    new-instance v2, Lcom/transsion/camera/utils/gles/ProgramTextureOES;

    invoke-direct {v2}, Lcom/transsion/camera/utils/gles/ProgramTextureOES;-><init>()V

    .line 174
    :goto_0
    sget-object v3, Lcom/transsion/camera/utils/encoder/RenderHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "internalPrepare create program cost:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iput-object v2, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mFullScreen:Lcom/transsion/camera/utils/gles/core/Program;

    const/4 v0, 0x0

    .line 176
    iput-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mSurface:Landroid/view/Surface;

    .line 177
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method private final internalRelease()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mInputWindowSurface:Lcom/transsion/camera/utils/gles/core/WindowSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/core/WindowSurface;->release()V

    .line 184
    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mInputWindowSurface:Lcom/transsion/camera/utils/gles/core/WindowSurface;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mFullScreen:Lcom/transsion/camera/utils/gles/core/Program;

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/core/Program;->release()V

    .line 188
    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mFullScreen:Lcom/transsion/camera/utils/gles/core/Program;

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mEglCore:Lcom/transsion/camera/utils/gles/core/EglCore;

    if-eqz v0, :cond_2

    .line 191
    invoke-virtual {v0}, Lcom/transsion/camera/utils/gles/core/EglCore;->release()V

    .line 192
    iput-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mEglCore:Lcom/transsion/camera/utils/gles/core/EglCore;

    :cond_2
    return-void
.end method


# virtual methods
.method public final draw(I[FJ)V
    .locals 6

    .line 72
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mvp:[F

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/utils/encoder/RenderHandler;->draw(I[F[FJ)V

    return-void
.end method

.method public final draw(I[F[FJ)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestRelease:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 79
    :cond_0
    iput p1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mTexId:I

    .line 80
    iput-object p2, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mtx:[F

    .line 81
    iput-object p3, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mvp:[F

    .line 82
    iget p1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestDraw:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestDraw:I

    .line 83
    iput-wide p4, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mPresentationTime:J

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 89
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isPrepared()Z
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mFullScreen:Lcom/transsion/camera/utils/gles/core/Program;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final release()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestRelease:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 102
    iput-boolean v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestRelease:Z

    .line 103
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :try_start_1
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :catch_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final run()V
    .locals 5

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestRelease:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    monitor-exit v0

    goto :goto_2

    .line 121
    :cond_0
    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestSetEglContext:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 122
    iput-boolean v3, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestSetEglContext:Z

    .line 123
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/RenderHandler;->internalPrepare()V

    .line 125
    :cond_1
    iget v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestDraw:I

    if-lez v1, :cond_2

    move v3, v2

    :cond_2
    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, -0x1

    .line 127
    iput v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestDraw:I

    .line 128
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mEglCore:Lcom/transsion/camera/utils/gles/core/EglCore;

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mTexId:I

    if-ltz v1, :cond_5

    .line 129
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mInputWindowSurface:Lcom/transsion/camera/utils/gles/core/WindowSurface;

    invoke-virtual {v1}, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->makeCurrent()V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 131
    invoke-static {v2, v2, v1, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v1, 0x4000

    .line 132
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 133
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mFullScreen:Lcom/transsion/camera/utils/gles/core/Program;

    iget v2, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mTexId:I

    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mtx:[F

    iget-object v4, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mvp:[F

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/camera/utils/gles/core/Program;->drawFrame(I[F[F)V

    .line 134
    iget-wide v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mPresentationTime:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    .line 136
    iget-object v3, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mInputWindowSurface:Lcom/transsion/camera/utils/gles/core/WindowSurface;

    invoke-virtual {v3, v1, v2}, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->setPresentationTime(J)V

    .line 138
    :cond_3
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mInputWindowSurface:Lcom/transsion/camera/utils/gles/core/WindowSurface;

    invoke-virtual {v1}, Lcom/transsion/camera/utils/gles/core/EglSurfaceBase;->swapBuffers()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    .line 142
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    :cond_5
    :goto_1
    :try_start_2
    monitor-exit v0

    goto :goto_0

    .line 144
    :catch_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    :goto_2
    iget-object v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_3
    iput-boolean v2, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestRelease:Z

    .line 151
    invoke-direct {p0}, Lcom/transsion/camera/utils/encoder/RenderHandler;->internalRelease()V

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 153
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 147
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final setEglContext(Landroid/opengl/EGLContext;Landroid/view/Surface;Z)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestRelease:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mShard_context:Landroid/opengl/EGLContext;

    .line 54
    iput-object p2, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mSurface:Landroid/view/Surface;

    .line 55
    iput-boolean p3, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mNeedReleaseSurface:Z

    const/4 p1, 0x1

    .line 56
    iput-boolean p1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mRequestSetEglContext:Z

    .line 57
    iget-object p1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mtx:[F

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 58
    iget-object p1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mvp:[F

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 59
    iget-object p1, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :try_start_1
    iget-object p0, p0, Lcom/transsion/camera/utils/encoder/RenderHandler;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :catch_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
