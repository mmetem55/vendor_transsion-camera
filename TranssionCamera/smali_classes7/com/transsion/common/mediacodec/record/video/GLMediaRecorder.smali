.class public Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;
.super Ljava/lang/Object;
.source "GLMediaRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderHandler;,
        Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;
    }
.end annotation


# instance fields
.field private final GL_BLOCK_TIME_OUT_LONG:I

.field private final GL_BLOCK_TIME_OUT_SHORT:I

.field public final m2DTextureRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

.field private mBaseTimeStamp:J

.field private final mCV:Landroid/os/ConditionVariable;

.field private mEglCore:Lcom/transsion/common/mediacodec/record/gles/EglCore;

.field private volatile mHandler:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderHandler;

.field private mInputWindowSurface:Lcom/transsion/common/mediacodec/record/video/WindowSurface;

.field private mIsPause:Z

.field private mIsPrepared:Z

.field private volatile mPresentationTime:J

.field private final mPresentationTimeInterface:Lcom/transsion/common/mediacodec/record/video/PresentationTimeInterface;

.field private mReady:Z

.field private mReadyFence:Ljava/lang/Object;

.field private mRunning:Z

.field private mTextureId:I

.field private mVideoEncoder:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

.field onceDelayTime:J

.field pauseDelayTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mCV:Landroid/os/ConditionVariable;

    const/16 v0, 0x1f4

    .line 66
    iput v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->GL_BLOCK_TIME_OUT_LONG:I

    const/16 v0, 0xc8

    .line 67
    iput v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->GL_BLOCK_TIME_OUT_SHORT:I

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mReadyFence:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    .line 91
    iput-wide v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mBaseTimeStamp:J

    const-wide/16 v0, 0x0

    .line 92
    iput-wide v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mPresentationTime:J

    .line 93
    new-instance v0, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    sget-object v1, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;->TEXTURE_2D:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;

    invoke-direct {v0, v1}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;-><init>(Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer$ProgramType;)V

    iput-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->m2DTextureRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    const/4 v0, 0x0

    .line 94
    iput-boolean v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mIsPrepared:Z

    .line 95
    iput-boolean v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mIsPause:Z

    .line 369
    new-instance v0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$1;

    invoke-direct {v0, p0}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$1;-><init>(Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;)V

    iput-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mPresentationTimeInterface:Lcom/transsion/common/mediacodec/record/video/PresentationTimeInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->handleStartRecording(Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->handleStopRecording()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;[FI)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->handleFrameAvailable([FI)V

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->handleSetTexture(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;Landroid/opengl/EGLContext;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->handleUpdateSharedContext(Landroid/opengl/EGLContext;)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->handlePauseRecording()V

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->handleResumeRecording()V

    return-void
.end method

.method static synthetic access$700(Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;)J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mPresentationTime:J

    return-wide v0
.end method

.method private handleFrameAvailable([FI)V
    .locals 4

    .line 380
    iget-boolean v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mIsPrepared:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mIsPause:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 385
    :cond_0
    iget-wide v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mBaseTimeStamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 386
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mBaseTimeStamp:J

    .line 387
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mVideoEncoder:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-virtual {v0}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->startRecord()V

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mVideoEncoder:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->drainEncoder(Z)V

    .line 391
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mInputWindowSurface:Lcom/transsion/common/mediacodec/record/video/WindowSurface;

    invoke-virtual {v0}, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->makeCurrent()V

    .line 392
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->m2DTextureRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->draw([FI)V

    .line 393
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    .line 394
    iget-wide v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mBaseTimeStamp:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->pauseDelayTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mPresentationTime:J

    .line 395
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TimeStampVideo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mPresentationTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ";nanoTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ";baseTimeStamp="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mBaseTimeStamp:J

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ";pauseDelay="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->pauseDelayTime:J

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 396
    iget-object p1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mInputWindowSurface:Lcom/transsion/common/mediacodec/record/video/WindowSurface;

    iget-wide v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mPresentationTime:J

    invoke-virtual {p1, v0, v1}, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->setPresentationTime(J)V

    .line 397
    iget-object p1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mInputWindowSurface:Lcom/transsion/common/mediacodec/record/video/WindowSurface;

    invoke-virtual {p1}, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->swapBuffers()Z

    .line 398
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mCV:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void

    .line 381
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mCV:Landroid/os/ConditionVariable;

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method private handlePauseRecording()V
    .locals 2

    .line 405
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->onceDelayTime:J

    .line 406
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mVideoEncoder:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-virtual {v0}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->pauseRecording()V

    const/4 v0, 0x1

    .line 407
    iput-boolean v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mIsPause:Z

    return-void
.end method

.method private handleResumeRecording()V
    .locals 4

    .line 411
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->onceDelayTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->onceDelayTime:J

    .line 412
    iget-wide v2, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->pauseDelayTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->pauseDelayTime:J

    .line 413
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mVideoEncoder:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-virtual {v0}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->resumeRecording()V

    const/4 v0, 0x0

    .line 414
    iput-boolean v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mIsPause:Z

    return-void
.end method

.method private handleSetTexture(I)V
    .locals 0

    .line 436
    iput p1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mTextureId:I

    return-void
.end method

.method private handleStartRecording(Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;)V
    .locals 10

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartRecording "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLMediaRecorder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v3, p1, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;->mEglContext:Landroid/opengl/EGLContext;

    iget v4, p1, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;->mWidth:I

    iget v5, p1, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;->mHeight:I

    iget v6, p1, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;->mBitRate:I

    iget-object v7, p1, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;->fileSpec:Lcom/transsion/camera/app/common/mode/VideoFileSpec;

    iget v8, p1, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;->mOrientationHint:I

    iget-boolean v9, p1, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;->mIsMuteRecoder:Z

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->prepareEncoder(Landroid/opengl/EGLContext;IIILcom/transsion/camera/app/common/mode/VideoFileSpec;IZ)V

    const-wide/16 v0, 0x0

    .line 365
    iput-wide v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mPresentationTime:J

    .line 366
    iput-wide v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->pauseDelayTime:J

    return-void
.end method

.method private handleStopRecording()V
    .locals 2

    const-string v0, "GLMediaRecorder"

    const-string v1, "handleStopRecording"

    .line 421
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-boolean v1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mIsPrepared:Z

    if-nez v1, :cond_0

    const-string p0, "Encoder is not Prepared"

    .line 423
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mVideoEncoder:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->drainEncoder(Z)V

    .line 427
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mVideoEncoder:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-virtual {v0}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->stopAudRecord()V

    .line 428
    invoke-direct {p0}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->releaseEncoder()V

    return-void
.end method

.method private handleUpdateSharedContext(Landroid/opengl/EGLContext;)V
    .locals 2

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleUpdatedSharedContext "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLMediaRecorder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mInputWindowSurface:Lcom/transsion/common/mediacodec/record/video/WindowSurface;

    invoke-virtual {v0}, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->releaseEglSurface()V

    .line 451
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mEglCore:Lcom/transsion/common/mediacodec/record/gles/EglCore;

    invoke-virtual {v0}, Lcom/transsion/common/mediacodec/record/gles/EglCore;->release()V

    .line 454
    new-instance v0, Lcom/transsion/common/mediacodec/record/gles/EglCore;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/transsion/common/mediacodec/record/gles/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mEglCore:Lcom/transsion/common/mediacodec/record/gles/EglCore;

    .line 455
    iget-object p1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mInputWindowSurface:Lcom/transsion/common/mediacodec/record/video/WindowSurface;

    invoke-virtual {p1, v0}, Lcom/transsion/common/mediacodec/record/video/WindowSurface;->recreate(Lcom/transsion/common/mediacodec/record/gles/EglCore;)V

    .line 456
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mInputWindowSurface:Lcom/transsion/common/mediacodec/record/video/WindowSurface;

    invoke-virtual {p0}, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->makeCurrent()V

    return-void
.end method

.method private prepareEncoder(Landroid/opengl/EGLContext;IIILcom/transsion/camera/app/common/mode/VideoFileSpec;IZ)V
    .locals 10

    move-object v0, p0

    .line 462
    :try_start_0
    new-instance v9, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    iget-object v8, v0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mPresentationTimeInterface:Lcom/transsion/common/mediacodec/record/video/PresentationTimeInterface;

    move-object v1, v9

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;-><init>(IIILcom/transsion/camera/app/common/mode/VideoFileSpec;IZLcom/transsion/common/mediacodec/record/video/PresentationTimeInterface;)V

    iput-object v9, v0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mVideoEncoder:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    new-instance v1, Lcom/transsion/common/mediacodec/record/gles/EglCore;

    const/4 v2, 0x1

    move-object v3, p1

    invoke-direct {v1, p1, v2}, Lcom/transsion/common/mediacodec/record/gles/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v1, v0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mEglCore:Lcom/transsion/common/mediacodec/record/gles/EglCore;

    .line 468
    new-instance v3, Lcom/transsion/common/mediacodec/record/video/WindowSurface;

    iget-object v4, v0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mVideoEncoder:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-virtual {v4}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->getInputSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-direct {v3, v1, v4, v2}, Lcom/transsion/common/mediacodec/record/video/WindowSurface;-><init>(Lcom/transsion/common/mediacodec/record/gles/EglCore;Landroid/view/Surface;Z)V

    iput-object v3, v0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mInputWindowSurface:Lcom/transsion/common/mediacodec/record/video/WindowSurface;

    .line 469
    invoke-virtual {v3}, Lcom/transsion/common/mediacodec/record/gles/EglSurfaceBase;->makeCurrent()V

    const-wide/16 v3, -0x1

    .line 471
    iput-wide v3, v0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mBaseTimeStamp:J

    .line 472
    iput-boolean v2, v0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mIsPrepared:Z

    return-void

    :catch_0
    move-exception v0

    .line 464
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private releaseEncoder()V
    .locals 2

    .line 476
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mVideoEncoder:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-virtual {v0}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->release()V

    .line 477
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mInputWindowSurface:Lcom/transsion/common/mediacodec/record/video/WindowSurface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 478
    invoke-virtual {v0}, Lcom/transsion/common/mediacodec/record/video/WindowSurface;->release()V

    .line 479
    iput-object v1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mInputWindowSurface:Lcom/transsion/common/mediacodec/record/video/WindowSurface;

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mEglCore:Lcom/transsion/common/mediacodec/record/gles/EglCore;

    if-eqz v0, :cond_1

    .line 482
    invoke-virtual {v0}, Lcom/transsion/common/mediacodec/record/gles/EglCore;->release()V

    .line 483
    iput-object v1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mEglCore:Lcom/transsion/common/mediacodec/record/gles/EglCore;

    :cond_1
    const/4 v0, 0x0

    .line 485
    iput-boolean v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mIsPrepared:Z

    return-void
.end method


# virtual methods
.method public frameAvailable([FIIZ)V
    .locals 3

    .line 241
    iget-boolean v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mIsPrepared:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mIsPause:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mReadyFence:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mReady:Z

    if-nez v1, :cond_1

    .line 247
    monitor-exit v0

    return-void

    .line 249
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mCV:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 252
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mHandler:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderHandler;

    iget-object v1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mHandler:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-eqz p4, :cond_2

    .line 256
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mCV:Landroid/os/ConditionVariable;

    const-wide/16 p1, 0x1f4

    invoke-virtual {p0, p1, p2}, Landroid/os/ConditionVariable;->block(J)Z

    goto :goto_0

    .line 258
    :cond_2
    iget-object p1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mVideoEncoder:Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;

    invoke-virtual {p1}, Lcom/transsion/common/mediacodec/record/video/VideoEncoderCore;->isAudioBufferRead()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 259
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mCV:Landroid/os/ConditionVariable;

    const-wide/16 p1, 0xc8

    invoke-virtual {p0, p1, p2}, Landroid/os/ConditionVariable;->block(J)Z

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 249
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    :goto_1
    return-void
.end method

.method public pauseRecording()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mHandler:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderHandler;

    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mHandler:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderHandler;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public resumeRecording()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mHandler:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderHandler;

    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mHandler:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderHandler;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public run()V
    .locals 2

    .line 289
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 290
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mReadyFence:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    new-instance v1, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderHandler;

    invoke-direct {v1, p0}, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderHandler;-><init>(Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;)V

    iput-object v1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mHandler:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderHandler;

    const/4 v1, 0x1

    .line 292
    iput-boolean v1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mReady:Z

    .line 293
    iget-object v1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mReadyFence:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 294
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 295
    invoke-static {}, Landroid/os/Looper;->loop()V

    const-string v0, "GLMediaRecorder"

    const-string v1, "Encoder thread exiting"

    .line 297
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mReadyFence:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 299
    :try_start_1
    iput-boolean v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mRunning:Z

    iput-boolean v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mReady:Z

    const/4 v0, 0x0

    .line 300
    iput-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mHandler:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderHandler;

    .line 301
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 294
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public startRecording(Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderConfig;)V
    .locals 3

    const-string v0, "GLMediaRecorder"

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoder: startRecording(), mReadyFence:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mReadyFence:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , mIsPrepared:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mIsPrepared:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mReadyFence:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-boolean v1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mRunning:Z

    if-eqz v1, :cond_0

    const-string p0, "GLMediaRecorder"

    const-string p1, "Encoder thread already running"

    .line 150
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    monitor-exit v0

    return-void

    .line 153
    :cond_0
    iget-boolean v1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mIsPrepared:Z

    if-eqz v1, :cond_1

    const-string p0, "GLMediaRecorder"

    const-string p1, "Encoder is already Prepared"

    .line 154
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 157
    iput-boolean v1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mRunning:Z

    .line 158
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "GLMediaRecorder"

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 159
    :catch_0
    :goto_0
    iget-boolean v1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 161
    :try_start_1
    iget-object v1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mReadyFence:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 166
    :cond_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 168
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->m2DTextureRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    invoke-virtual {v0}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->createOnGlThread()V

    .line 170
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mHandler:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderHandler;

    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mHandler:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderHandler;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 166
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public stopRecording(Ljava/lang/Runnable;)V
    .locals 3

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopRecording,mRunning = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLMediaRecorder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-boolean v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mRunning:Z

    if-nez v0, :cond_0

    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mHandler:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderHandler;

    iget-object v1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mHandler:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 188
    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mHandler:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    iget-object p1, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mHandler:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderHandler;

    iget-object v0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->mHandler:Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder$EncoderHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 193
    iget-object p0, p0, Lcom/transsion/common/mediacodec/record/video/GLMediaRecorder;->m2DTextureRenderer:Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;

    invoke-virtual {p0}, Lcom/transsion/common/mediacodec/record/renderer/TextureRenderer;->releaseOnGLThread()V

    return-void
.end method
