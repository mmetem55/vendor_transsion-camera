.class public Lcom/vskit/arsdk/filter/GLImageFilter;
.super Ljava/lang/Object;
.source "GLImageFilter.java"


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mCoordsPerVertex:I

.field protected mDisplayHeight:I

.field protected mDisplayWidth:I

.field protected mFilterEnable:Z

.field protected mFragmentShader:Ljava/lang/String;

.field protected mFrameBufferTextures:[I

.field protected mFrameBuffers:[I

.field protected mFrameHeight:I

.field protected mFrameWidth:I

.field protected mInputTextureHandle:I

.field protected mIsInitialized:Z

.field protected mPositionHandle:I

.field protected mProgramHandle:I

.field private mRunOnDraw:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mTextureArray:[F

.field protected mTextureBuffer:Ljava/nio/FloatBuffer;

.field protected mTextureCoordinateHandle:I

.field protected mVertexArray:[F

.field protected mVertexBuffer:Ljava/nio/FloatBuffer;

.field protected mVertexCount:I

.field protected mVertexShader:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFilterEnable:Z

    const/4 v0, 0x2

    .line 48
    iput v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mCoordsPerVertex:I

    .line 50
    sget-object v1, Lcom/vskit/arsdk/utils/TextureRotationUtil;->CubeVertices:[F

    array-length v2, v1

    div-int/2addr v2, v0

    iput v2, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mVertexCount:I

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameWidth:I

    .line 61
    iput v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameHeight:I

    .line 68
    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mVertexArray:[F

    .line 69
    sget-object v0, Lcom/vskit/arsdk/utils/TextureRotationUtil;->TextureVertices:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mTextureArray:[F

    .line 76
    iput-object p1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mContext:Landroid/content/Context;

    .line 77
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    .line 78
    iput-object p2, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mVertexShader:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFragmentShader:Ljava/lang/String;

    .line 80
    iget-object p1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mVertexArray:[F

    invoke-static {p1}, Lcom/vskit/arsdk/utils/OpenGLUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 81
    iget-object p1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mTextureArray:[F

    invoke-static {p1}, Lcom/vskit/arsdk/utils/OpenGLUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 82
    invoke-virtual {p0}, Lcom/vskit/arsdk/filter/GLImageFilter;->initProgramHandle()V

    return-void
.end method


# virtual methods
.method public destroyFrameBuffer()V
    .locals 4

    .line 386
    iget-boolean v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mIsInitialized:Z

    if-nez v0, :cond_0

    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameBufferTextures:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 390
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 391
    iput-object v1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameBufferTextures:[I

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameBuffers:[I

    if-eqz v0, :cond_2

    .line 395
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 396
    iput-object v1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameBuffers:[I

    :cond_2
    const/4 v0, -0x1

    .line 398
    iput v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameWidth:I

    .line 399
    iput v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameHeight:I

    return-void
.end method

.method public drawFrame(I)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p1, v0, v1}, Lcom/vskit/arsdk/filter/GLImageFilter;->drawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)Z

    return-void
.end method

.method public drawFrame(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)Z
    .locals 3

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 124
    iget-boolean v1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mIsInitialized:Z

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    iget-boolean v1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFilterEnable:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    iget v1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mDisplayWidth:I

    iget v2, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mDisplayHeight:I

    invoke-static {v0, v0, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 131
    iget v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 134
    invoke-virtual {p0}, Lcom/vskit/arsdk/filter/GLImageFilter;->runPendingOnDrawTasks()V

    .line 137
    invoke-virtual {p0, p1, p2, p3}, Lcom/vskit/arsdk/filter/GLImageFilter;->onDrawTexture(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public drawFrameBuffer(I)I
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, p1, v0, v1}, Lcom/vskit/arsdk/filter/GLImageFilter;->drawFrameBuffer(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I

    move-result p0

    return p0
.end method

.method public drawFrameBuffer(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)I
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameBuffers:[I

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mIsInitialized:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFilterEnable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameBufferTextures:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    iget v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameWidth:I

    iget v2, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameHeight:I

    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 258
    iget-object v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameBuffers:[I

    aget v0, v0, v1

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 260
    invoke-static {v2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v0

    const v3, 0x8cd5

    if-eq v0, v3, :cond_1

    .line 261
    iget-object v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->TAG:Ljava/lang/String;

    const-string v3, "Framebuffer error"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_1
    iget v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 267
    invoke-virtual {p0}, Lcom/vskit/arsdk/filter/GLImageFilter;->runPendingOnDrawTasks()V

    .line 270
    invoke-virtual {p0, p1, p2, p3}, Lcom/vskit/arsdk/filter/GLImageFilter;->onDrawTexture(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 271
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 272
    iget-object p0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameBufferTextures:[I

    aget p0, p0, v1

    return p0

    :cond_2
    :goto_0
    return p1
.end method

.method public getTextureType()I
    .locals 0

    const/16 p0, 0xde1

    return p0
.end method

.method public initFrameBuffer(II)V
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameBuffers:[I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameHeight:I

    if-eq v0, p2, :cond_1

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/vskit/arsdk/filter/GLImageFilter;->destroyFrameBuffer()V

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameBuffers:[I

    if-nez v0, :cond_2

    .line 374
    iput p1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameWidth:I

    .line 375
    iput p2, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameHeight:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 376
    iput-object v1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameBuffers:[I

    new-array v0, v0, [I

    .line 377
    iput-object v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameBufferTextures:[I

    .line 378
    invoke-static {v1, v0, p1, p2}, Lcom/vskit/arsdk/utils/OpenGLUtil;->createFrameBuffer([I[III)V

    :cond_2
    return-void
.end method

.method public initProgramHandle()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mVertexShader:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mVertexShader:Ljava/lang/String;

    iget-object v1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vskit/arsdk/utils/OpenGLUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mProgramHandle:I

    const-string v1, "aPosition"

    .line 91
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mPositionHandle:I

    .line 92
    iget v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mProgramHandle:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mTextureCoordinateHandle:I

    .line 93
    iget v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mProgramHandle:I

    const-string v1, "inputTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mInputTextureHandle:I

    const-string v0, "initProgramHandle"

    .line 94
    invoke-static {v0}, Lcom/vskit/arsdk/utils/OpenGLUtil;->checkGlError(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mIsInitialized:Z

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 97
    iput v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mPositionHandle:I

    .line 98
    iput v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mTextureCoordinateHandle:I

    .line 99
    iput v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mInputTextureHandle:I

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mIsInitialized:Z

    :goto_0
    return-void
.end method

.method public onDisplaySizeChanged(II)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mDisplayWidth:I

    .line 112
    iput p2, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mDisplayHeight:I

    return-void
.end method

.method protected onDrawFrame()V
    .locals 2

    .line 325
    iget p0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mVertexCount:I

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string p0, "glDrawArrays"

    .line 326
    invoke-static {p0}, Lcom/vskit/arsdk/utils/OpenGLUtil;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public onDrawFrameAfter()V
    .locals 0

    return-void
.end method

.method public onDrawFrameBegin()V
    .locals 0

    return-void
.end method

.method protected onDrawTexture(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7

    const/4 v0, 0x0

    .line 288
    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 289
    iget v1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mPositionHandle:I

    iget v2, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mCoordsPerVertex:I

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 291
    iget p2, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mPositionHandle:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 293
    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 294
    iget v1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mTextureCoordinateHandle:I

    const/4 v2, 0x2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 296
    iget p2, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mTextureCoordinateHandle:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const p2, 0x84c0

    .line 298
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 299
    invoke-virtual {p0}, Lcom/vskit/arsdk/filter/GLImageFilter;->getTextureType()I

    move-result p2

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 300
    iget p1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mInputTextureHandle:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 302
    invoke-virtual {p0}, Lcom/vskit/arsdk/filter/GLImageFilter;->onDrawFrameBegin()V

    .line 303
    invoke-virtual {p0}, Lcom/vskit/arsdk/filter/GLImageFilter;->onDrawFrame()V

    .line 304
    invoke-virtual {p0}, Lcom/vskit/arsdk/filter/GLImageFilter;->onDrawFrameAfter()V

    .line 307
    iget p1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mPositionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 308
    iget p1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mTextureCoordinateHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 309
    invoke-virtual {p0}, Lcom/vskit/arsdk/filter/GLImageFilter;->getTextureType()I

    move-result p0

    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 311
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 348
    iget-boolean v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 349
    iget v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, -0x1

    .line 350
    iput v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mProgramHandle:I

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/vskit/arsdk/filter/GLImageFilter;->destroyFrameBuffer()V

    .line 353
    iget-object v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mTextureBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 354
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 355
    iput-object v1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mVertexBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    .line 358
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 359
    iput-object v1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mVertexBuffer:Ljava/nio/FloatBuffer;

    :cond_2
    return-void
.end method

.method protected runPendingOnDrawTasks()V
    .locals 1

    .line 406
    :goto_0
    iget-object v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mRunOnDraw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method
