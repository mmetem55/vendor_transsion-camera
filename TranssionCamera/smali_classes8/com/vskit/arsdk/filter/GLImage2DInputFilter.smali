.class public Lcom/vskit/arsdk/filter/GLImage2DInputFilter;
.super Lcom/vskit/arsdk/filter/GLImageFilter;
.source "GLImage2DInputFilter.java"


# instance fields
.field private mTransformMatrix:[F

.field private mTransformMatrixHandle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "attribute vec4 aPosition;                      \nattribute vec4 aTextureCoord;                  \nuniform mat4 transformMatrix;                  \nvarying vec2 textureCoordinate;                \n                                               \nvoid main() {                                  \n    gl_Position = transformMatrix * aPosition; \n    textureCoordinate = (aTextureCoord).xy;    \n}"

    const-string v1, "precision mediump float;                                   \nvarying vec2 textureCoordinate;                            \nuniform sampler2D inputTexture;                            \nvoid main() {                                              \n    gl_FragColor = texture2D(inputTexture, textureCoordinate); \n}                                                          \n"

    .line 25
    invoke-direct {p0, p1, v0, v1}, Lcom/vskit/arsdk/filter/GLImage2DInputFilter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/vskit/arsdk/filter/GLImageFilter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public initProgramHandle()V
    .locals 2

    .line 34
    invoke-super {p0}, Lcom/vskit/arsdk/filter/GLImageFilter;->initProgramHandle()V

    .line 35
    iget v0, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mProgramHandle:I

    const-string v1, "transformMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vskit/arsdk/filter/GLImage2DInputFilter;->mTransformMatrixHandle:I

    return-void
.end method

.method public onDrawFrameBegin()V
    .locals 3

    .line 40
    invoke-super {p0}, Lcom/vskit/arsdk/filter/GLImageFilter;->onDrawFrameBegin()V

    .line 41
    iget v0, p0, Lcom/vskit/arsdk/filter/GLImage2DInputFilter;->mTransformMatrixHandle:I

    iget-object p0, p0, Lcom/vskit/arsdk/filter/GLImage2DInputFilter;->mTransformMatrix:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0, v2}, Landroid/opengl/GLES30;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method

.method protected onDrawTexture(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 54
    iget v1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mPositionHandle:I

    iget v2, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mCoordsPerVertex:I

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 56
    iget p2, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mPositionHandle:I

    invoke-static {p2}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    .line 58
    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 59
    iget v1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mTextureCoordinateHandle:I

    const/4 v2, 0x2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 61
    iget p2, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mTextureCoordinateHandle:I

    invoke-static {p2}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    const p2, 0x84c0

    .line 63
    invoke-static {p2}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    .line 64
    invoke-virtual {p0}, Lcom/vskit/arsdk/filter/GLImageFilter;->getTextureType()I

    move-result p2

    invoke-static {p2, p1}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 65
    iget p1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mInputTextureHandle:I

    invoke-static {p1, v0}, Landroid/opengl/GLES30;->glUniform1i(II)V

    .line 67
    invoke-virtual {p0}, Lcom/vskit/arsdk/filter/GLImage2DInputFilter;->onDrawFrameBegin()V

    .line 68
    invoke-virtual {p0}, Lcom/vskit/arsdk/filter/GLImageFilter;->onDrawFrame()V

    .line 69
    invoke-virtual {p0}, Lcom/vskit/arsdk/filter/GLImageFilter;->onDrawFrameAfter()V

    .line 72
    iget p1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mPositionHandle:I

    invoke-static {p1}, Landroid/opengl/GLES30;->glDisableVertexAttribArray(I)V

    .line 73
    iget p1, p0, Lcom/vskit/arsdk/filter/GLImageFilter;->mTextureCoordinateHandle:I

    invoke-static {p1}, Landroid/opengl/GLES30;->glDisableVertexAttribArray(I)V

    .line 74
    invoke-virtual {p0}, Lcom/vskit/arsdk/filter/GLImageFilter;->getTextureType()I

    move-result p0

    invoke-static {p0, v0}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 76
    invoke-static {v0}, Landroid/opengl/GLES30;->glUseProgram(I)V

    return-void
.end method

.method public setTextureTransformMatrix([F)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/vskit/arsdk/filter/GLImage2DInputFilter;->mTransformMatrix:[F

    return-void
.end method
