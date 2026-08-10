.class public Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;
.super Lcom/bytedance/labcv/core/opengl/Program;
.source "ProgramTextureOES.java"


# static fields
.field private static final FRAGMENT_SHADER_EXT:Ljava/lang/String; = "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = aTextureCoord;\n}\n"


# instance fields
.field private maPositionLoc:I

.field private maTextureCoordLoc:I

.field private muMVPMatrixLoc:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = aTextureCoord;\n}\n"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    .line 58
    invoke-direct {p0, v0, v1}, Lcom/bytedance/labcv/core/opengl/Program;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public drawFrameOffScreen(III[F)I
    .locals 10

    const-string v0, "draw start"

    .line 125
    invoke-static {v0}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    const v0, 0x8d40

    const/4 v1, 0x0

    .line 126
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 128
    invoke-virtual {p0, p2, p3}, Lcom/bytedance/labcv/core/opengl/Program;->initFrameBufferIfNeed(II)V

    const-string v2, "initFrameBufferIfNeed"

    .line 129
    invoke-static {v2}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 132
    iget v2, p0, Lcom/bytedance/labcv/core/opengl/Program;->mProgramHandle:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v2, "glUseProgram"

    .line 133
    invoke-static {v2}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    const v2, 0x84c0

    .line 136
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const v2, 0x8d65

    .line 137
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string p1, "glBindTexture"

    .line 138
    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBuffers:[I

    aget p1, p1, v1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string p1, "glBindFramebuffer"

    .line 142
    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 145
    iget p1, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;->muMVPMatrixLoc:I

    const/4 v3, 0x1

    invoke-static {p1, v3, v1, p4, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string p1, "glUniformMatrix4fv"

    .line 146
    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 150
    iget p1, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p1, "glEnableVertexAttribArray"

    .line 151
    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 154
    iget v3, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;->maPositionLoc:I

    iget-object p4, p0, Lcom/bytedance/labcv/core/opengl/Program;->mDrawable2d:Lcom/bytedance/labcv/core/opengl/Drawable2d;

    .line 155
    invoke-virtual {p4}, Lcom/bytedance/labcv/core/opengl/Drawable2d;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v8

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 154
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string p4, "glVertexAttribPointer"

    .line 156
    invoke-static {p4}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 159
    iget v3, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;->maTextureCoordLoc:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 160
    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 163
    iget v4, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;->maTextureCoordLoc:I

    iget-object p1, p0, Lcom/bytedance/labcv/core/opengl/Program;->mDrawable2d:Lcom/bytedance/labcv/core/opengl/Drawable2d;

    .line 164
    invoke-virtual {p1}, Lcom/bytedance/labcv/core/opengl/Drawable2d;->getTexCoorArrayFB()Ljava/nio/FloatBuffer;

    move-result-object v9

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x8

    .line 163
    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 165
    invoke-static {p4}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 167
    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 171
    iget-object p1, p0, Lcom/bytedance/labcv/core/opengl/Program;->mDrawable2d:Lcom/bytedance/labcv/core/opengl/Drawable2d;

    invoke-virtual {p1}, Lcom/bytedance/labcv/core/opengl/Drawable2d;->getVertexCount()I

    move-result p1

    const/4 p2, 0x5

    invoke-static {p2, v1, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string p1, "glDrawArrays"

    .line 172
    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 175
    iget p1, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 176
    iget p1, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;->maTextureCoordLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 177
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 178
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 179
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 180
    iget-object p0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBufferTextures:[I

    aget p0, p0, v1

    return p0
.end method

.method public drawFrameOffScreen(IIII[F)Z
    .locals 10

    const-string v0, "draw start"

    .line 185
    invoke-static {v0}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    const v0, 0x8d40

    const/4 v1, 0x0

    .line 186
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 188
    invoke-virtual {p0, p3, p4, p2}, Lcom/bytedance/labcv/core/opengl/Program;->initFrameBufferWithTexture(III)V

    const-string p2, "initFrameBufferIfNeed"

    .line 189
    invoke-static {p2}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 192
    iget p2, p0, Lcom/bytedance/labcv/core/opengl/Program;->mProgramHandle:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string p2, "glUseProgram"

    .line 193
    invoke-static {p2}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    const p2, 0x84c0

    .line 196
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const p2, 0x8d65

    .line 197
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string p1, "glBindTexture"

    .line 198
    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBuffers:[I

    aget p1, p1, v1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string p1, "glBindFramebuffer"

    .line 202
    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 205
    iget p1, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;->muMVPMatrixLoc:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1, p5, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string p1, "glUniformMatrix4fv"

    .line 206
    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 211
    iget p1, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p1, "glEnableVertexAttribArray"

    .line 212
    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 215
    iget v3, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;->maPositionLoc:I

    iget-object p5, p0, Lcom/bytedance/labcv/core/opengl/Program;->mDrawable2d:Lcom/bytedance/labcv/core/opengl/Drawable2d;

    .line 216
    invoke-virtual {p5}, Lcom/bytedance/labcv/core/opengl/Drawable2d;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v8

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 215
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string p5, "glVertexAttribPointer"

    .line 217
    invoke-static {p5}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 220
    iget v3, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;->maTextureCoordLoc:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 221
    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 224
    iget v4, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;->maTextureCoordLoc:I

    iget-object p1, p0, Lcom/bytedance/labcv/core/opengl/Program;->mDrawable2d:Lcom/bytedance/labcv/core/opengl/Drawable2d;

    .line 225
    invoke-virtual {p1}, Lcom/bytedance/labcv/core/opengl/Drawable2d;->getTexCoorArrayFB()Ljava/nio/FloatBuffer;

    move-result-object v9

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x8

    .line 224
    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 226
    invoke-static {p5}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 228
    invoke-static {v1, v1, p3, p4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 232
    iget-object p1, p0, Lcom/bytedance/labcv/core/opengl/Program;->mDrawable2d:Lcom/bytedance/labcv/core/opengl/Drawable2d;

    invoke-virtual {p1}, Lcom/bytedance/labcv/core/opengl/Drawable2d;->getVertexCount()I

    move-result p1

    const/4 p3, 0x5

    invoke-static {p3, v1, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string p1, "glDrawArrays"

    .line 233
    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 236
    iget p1, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 237
    iget p0, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;->maTextureCoordLoc:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 238
    invoke-static {p2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 239
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 240
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return v2
.end method

.method public drawFrameOnScreen(III[F)V
    .locals 7

    const-string p2, "draw start"

    .line 78
    invoke-static {p2}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 81
    iget p2, p0, Lcom/bytedance/labcv/core/opengl/Program;->mProgramHandle:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string p2, "glUseProgram"

    .line 82
    invoke-static {p2}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    const p2, 0x84c0

    .line 85
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const p2, 0x8d65

    .line 86
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 89
    iget p1, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;->muMVPMatrixLoc:I

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-static {p1, p3, v0, p4, v0}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string p1, "glUniformMatrix4fv"

    .line 90
    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 94
    iget p1, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p1, "glEnableVertexAttribArray"

    .line 95
    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 98
    iget v1, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;->maPositionLoc:I

    iget-object p3, p0, Lcom/bytedance/labcv/core/opengl/Program;->mDrawable2d:Lcom/bytedance/labcv/core/opengl/Drawable2d;

    .line 99
    invoke-virtual {p3}, Lcom/bytedance/labcv/core/opengl/Drawable2d;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v6

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 98
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string p3, "glVertexAttribPointer"

    .line 100
    invoke-static {p3}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 103
    iget p4, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;->maTextureCoordLoc:I

    invoke-static {p4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 104
    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 107
    iget v1, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;->maTextureCoordLoc:I

    iget-object p1, p0, Lcom/bytedance/labcv/core/opengl/Program;->mDrawable2d:Lcom/bytedance/labcv/core/opengl/Drawable2d;

    .line 108
    invoke-virtual {p1}, Lcom/bytedance/labcv/core/opengl/Drawable2d;->getTexCoordArray()Ljava/nio/FloatBuffer;

    move-result-object v6

    .line 107
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 109
    invoke-static {p3}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/bytedance/labcv/core/opengl/Program;->mDrawable2d:Lcom/bytedance/labcv/core/opengl/Drawable2d;

    invoke-virtual {p1}, Lcom/bytedance/labcv/core/opengl/Drawable2d;->getVertexCount()I

    move-result p1

    const/4 p3, 0x5

    invoke-static {p3, v0, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string p1, "glDrawArrays"

    .line 114
    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 117
    iget p1, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 118
    iget p0, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;->maTextureCoordLoc:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 119
    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 120
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method protected getDrawable2d()Lcom/bytedance/labcv/core/opengl/Drawable2d;
    .locals 1

    .line 63
    new-instance p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;

    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;->FULL_RECTANGLE:Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

    invoke-direct {p0, v0}, Lcom/bytedance/labcv/core/opengl/Drawable2d;-><init>(Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;)V

    return-object p0
.end method

.method protected getLocations()V
    .locals 2

    .line 68
    iget v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mProgramHandle:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;->maPositionLoc:I

    .line 69
    invoke-static {v0, v1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 70
    iget v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mProgramHandle:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;->maTextureCoordLoc:I

    .line 71
    invoke-static {v0, v1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 72
    iget v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mProgramHandle:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureOES;->muMVPMatrixLoc:I

    .line 73
    invoke-static {v0, v1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkLocation(ILjava/lang/String;)V

    return-void
.end method

.method public readBuffer(III)Ljava/nio/ByteBuffer;
    .locals 12

    const/4 p0, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    mul-int v0, p2, p3

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    mul-int/lit8 v0, v0, 0x4

    .line 268
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v0, 0x0

    .line 270
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v8, 0x1

    new-array v9, v8, [I

    .line 272
    invoke-static {v8, v9, v0}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    const v10, 0x8d65

    .line 273
    invoke-static {v10, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    .line 274
    invoke-static {v10, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2801

    .line 276
    invoke-static {v10, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    const v2, 0x47012f00    # 33071.0f

    .line 278
    invoke-static {v10, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2803

    .line 280
    invoke-static {v10, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    aget v1, v9, v0

    const v11, 0x8d40

    .line 283
    invoke-static {v11, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v1, 0x8ce0

    const/16 v2, 0xde1

    .line 284
    invoke-static {v11, v1, v2, p1, v0}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v3, p2

    move v4, p3

    move-object v7, p0

    .line 286
    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 289
    invoke-static {v10, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 290
    invoke-static {v11, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 292
    invoke-static {v8, v9, v0}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    return-object p0
.end method
