.class public Lcom/vskit/arsdk/filter/GLImageAlphaFilter;
.super Lcom/vskit/arsdk/filter/GLImageFilter;
.source "GLImageAlphaFilter.java"


# instance fields
.field private mTexture2Handle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "attribute vec4 aPosition;                                  \nattribute vec4 aTextureCoord;                              \nvarying vec2 textureCoordinate;                            \nvoid main() {                                              \n    gl_Position = aPosition;                               \n    textureCoordinate = aTextureCoord.xy;                  \n}                                                          \n"

    const-string v1, "precision mediump float;                                   \nvarying vec2 textureCoordinate;                            \nuniform sampler2D inputTexture;                            \nuniform sampler2D inputTexture2;                           \n                                                           \nvoid main() {                                              \n    vec4 orignalColor = texture2D(inputTexture, textureCoordinate);\n    vec4 pic = texture2D(inputTexture2, textureCoordinate);\n                                                           \n    gl_FragColor = mix(orignalColor, pic, pic.a);          \n                                                           \n}"

    .line 35
    invoke-direct {p0, p1, v0, v1}, Lcom/vskit/arsdk/filter/GLImageFilter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public drawFrameBuffer(II)I
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameBuffers:[I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mIsInitialized:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFilterEnable:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameBufferTextures:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    iget v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameWidth:I

    iget v2, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameHeight:I

    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES30;->glViewport(IIII)V

    .line 80
    iget-object v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameBuffers:[I

    aget v0, v0, v1

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    .line 83
    iget v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glUseProgram(I)V

    .line 86
    invoke-virtual {p0}, Lcom/vskit/arsdk/filter/GLImageFilter;->runPendingOnDrawTasks()V

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/vskit/arsdk/filter/GLImageAlphaFilter;->onDrawTexture(II)V

    .line 91
    invoke-static {v2, v1}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    .line 93
    iget-object p0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mFrameBufferTextures:[I

    aget p0, p0, v1

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method public initProgramHandle()V
    .locals 2

    .line 40
    invoke-super {p0}, Lcom/vskit/arsdk/filter/GLImageFilter;->initProgramHandle()V

    .line 41
    iget v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mProgramHandle:I

    const-string v1, "inputTexture2"

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vskit/arsdk/filter/GLImageAlphaFilter;->mTexture2Handle:I

    return-void
.end method

.method protected onDrawTexture(II)V
    .locals 8

    .line 105
    iget-object v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 106
    iget v2, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mPositionHandle:I

    iget v3, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mCoordsPerVertex:I

    iget-object v7, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 108
    iget v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    .line 110
    iget-object v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 111
    iget v2, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mTextureCoordinateHandle:I

    iget-object v7, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mTextureBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 113
    iget v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mTextureCoordinateHandle:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    const v0, 0x84c0

    .line 116
    invoke-static {v0}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    .line 117
    invoke-virtual {p0}, Lcom/vskit/arsdk/filter/GLImageFilter;->getTextureType()I

    move-result v0

    invoke-static {v0, p2}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 118
    iget p2, p0, Lcom/vskit/arsdk/filter/GLImageAlphaFilter;->mTexture2Handle:I

    invoke-static {p2, v1}, Landroid/opengl/GLES30;->glUniform1i(II)V

    const p2, 0x84c1

    .line 120
    invoke-static {p2}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    .line 121
    invoke-virtual {p0}, Lcom/vskit/arsdk/filter/GLImageFilter;->getTextureType()I

    move-result p2

    invoke-static {p2, p1}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 122
    iget p1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mInputTextureHandle:I

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glUniform1i(II)V

    .line 123
    invoke-virtual {p0}, Lcom/vskit/arsdk/filter/GLImageFilter;->onDrawFrameBegin()V

    .line 124
    invoke-virtual {p0}, Lcom/vskit/arsdk/filter/GLImageFilter;->onDrawFrame()V

    .line 125
    invoke-virtual {p0}, Lcom/vskit/arsdk/filter/GLImageFilter;->onDrawFrameAfter()V

    .line 127
    iget p1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mPositionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES30;->glDisableVertexAttribArray(I)V

    .line 128
    iget p1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mTextureCoordinateHandle:I

    invoke-static {p1}, Landroid/opengl/GLES30;->glDisableVertexAttribArray(I)V

    .line 129
    invoke-virtual {p0}, Lcom/vskit/arsdk/filter/GLImageFilter;->getTextureType()I

    move-result p0

    invoke-static {p0, v1}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 131
    invoke-static {v1}, Landroid/opengl/GLES30;->glUseProgram(I)V

    return-void
.end method
