.class public Lcom/transsion/camera/utils/gles/ProgramTextureOES;
.super Lcom/transsion/camera/utils/gles/core/Program;
.source "ProgramTextureOES.java"


# instance fields
.field private maPositionLoc:I

.field private maTextureCoordLoc:I

.field private muMVPMatrixLoc:I

.field private muTexMatrixLoc:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = aTextureCoord;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 64
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/utils/gles/core/Program;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public drawFrame(I[F[F)V
    .locals 9

    const-string v0, "draw start"

    .line 86
    invoke-static {v0}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 89
    iget v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v0, "glUseProgram"

    .line 90
    invoke-static {v0}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    const v0, 0x84c0

    .line 93
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v0, 0x8d65

    .line 94
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 97
    iget p1, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->muMVPMatrixLoc:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, p3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string p1, "glUniformMatrix4fv"

    .line 98
    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 101
    iget p3, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->muTexMatrixLoc:I

    invoke-static {p3, v1, v2, p2, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 102
    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 105
    iget p1, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p1, "glEnableVertexAttribArray"

    .line 106
    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 109
    iget v3, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maPositionLoc:I

    iget-object p2, p0, Lcom/transsion/camera/utils/gles/core/Program;->mDrawable2d:Lcom/transsion/camera/utils/gles/core/Drawable2d;

    .line 110
    invoke-virtual {p2}, Lcom/transsion/camera/utils/gles/core/Drawable2d;->vertexArray()Ljava/nio/FloatBuffer;

    move-result-object v8

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 109
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string p2, "glVertexAttribPointer"

    .line 111
    invoke-static {p2}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 114
    iget p3, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maTextureCoordLoc:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 115
    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 118
    iget v3, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maTextureCoordLoc:I

    iget-object p1, p0, Lcom/transsion/camera/utils/gles/core/Program;->mDrawable2d:Lcom/transsion/camera/utils/gles/core/Drawable2d;

    .line 119
    invoke-virtual {p1}, Lcom/transsion/camera/utils/gles/core/Drawable2d;->texCoordArray()Ljava/nio/FloatBuffer;

    move-result-object v8

    .line 118
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 120
    invoke-static {p2}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/transsion/camera/utils/gles/core/Program;->mDrawable2d:Lcom/transsion/camera/utils/gles/core/Drawable2d;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/gles/core/Drawable2d;->vertexCount()I

    move-result p1

    const/4 p2, 0x5

    invoke-static {p2, v2, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string p1, "glDrawArrays"

    .line 124
    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 127
    iget p1, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 128
    iget p0, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maTextureCoordLoc:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 129
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 130
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public drawFrameOffScreen(III[F)I
    .locals 10

    const-string v0, "draw start"

    .line 135
    invoke-static {v0}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    const v0, 0x8d40

    const/4 v1, 0x0

    .line 136
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 137
    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/utils/gles/core/Program;->initFrameBufferIfNeed(II)V

    const-string v2, "initFrameBufferIfNeed"

    .line 138
    invoke-static {v2}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 139
    iget v2, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v2, "glUseProgram"

    .line 140
    invoke-static {v2}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    const v2, 0x84c0

    .line 141
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v2, 0x8d65

    .line 142
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string p1, "glBindTexture"

    .line 143
    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBuffers:[I

    aget p1, p1, v1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string p1, "glBindFramebuffer"

    .line 145
    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 146
    iget p1, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->muMVPMatrixLoc:I

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, p4, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string p1, "glUniformMatrix4fv"

    .line 147
    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 148
    iget p1, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p1, "glEnableVertexAttribArray"

    .line 149
    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 150
    iget v3, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maPositionLoc:I

    iget-object p4, p0, Lcom/transsion/camera/utils/gles/core/Program;->mDrawable2d:Lcom/transsion/camera/utils/gles/core/Drawable2d;

    invoke-virtual {p4}, Lcom/transsion/camera/utils/gles/core/Drawable2d;->vertexArray()Ljava/nio/FloatBuffer;

    move-result-object v8

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string p4, "glVertexAttribPointer"

    .line 151
    invoke-static {p4}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 152
    iget v3, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maTextureCoordLoc:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 153
    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 154
    iget v4, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maTextureCoordLoc:I

    iget-object p1, p0, Lcom/transsion/camera/utils/gles/core/Program;->mDrawable2d:Lcom/transsion/camera/utils/gles/core/Drawable2d;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/gles/core/Drawable2d;->texCoordArray()Ljava/nio/FloatBuffer;

    move-result-object v9

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 155
    invoke-static {p4}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 156
    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 157
    iget-object p1, p0, Lcom/transsion/camera/utils/gles/core/Program;->mDrawable2d:Lcom/transsion/camera/utils/gles/core/Drawable2d;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/gles/core/Drawable2d;->vertexCount()I

    move-result p1

    const/4 p2, 0x5

    invoke-static {p2, v1, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string p1, "glDrawArrays"

    .line 158
    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 159
    iget p1, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 160
    iget p1, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maTextureCoordLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 161
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 162
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 163
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 164
    iget-object p0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBufferTextures:[I

    aget p0, p0, v1

    return p0
.end method

.method protected getDrawable2d()Lcom/transsion/camera/utils/gles/core/Drawable2d;
    .locals 0

    .line 69
    new-instance p0, Lcom/transsion/camera/utils/gles/Drawable2dFull;

    invoke-direct {p0}, Lcom/transsion/camera/utils/gles/Drawable2dFull;-><init>()V

    return-object p0
.end method

.method protected getLocations()V
    .locals 2

    .line 74
    iget v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maPositionLoc:I

    .line 75
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 76
    iget v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->maTextureCoordLoc:I

    .line 77
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 78
    iget v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->muMVPMatrixLoc:I

    .line 79
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 80
    iget v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    const-string v1, "uTexMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/gles/ProgramTextureOES;->muTexMatrixLoc:I

    .line 81
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkLocation(ILjava/lang/String;)V

    return-void
.end method
