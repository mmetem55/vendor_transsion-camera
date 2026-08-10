.class public Lcom/transsion/camera/utils/gles/ProgramTexture2d;
.super Lcom/transsion/camera/utils/gles/core/Program;
.source "ProgramTexture2d.java"


# instance fields
.field private maPositionLoc:I

.field private maTextureCoordLoc:I

.field private muMVPMatrixLoc:I

.field private muTexMatrixLoc:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "uniform mat4 uMVPMatrix;\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n"

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n    gl_FragColor = vec4(texture2D(sTexture, vTextureCoord).rgb, 1.0);\n}\n"

    .line 54
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/utils/gles/core/Program;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public drawFrame(I[F[F)V
    .locals 9

    const-string v0, "draw start"

    .line 76
    invoke-static {v0}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 79
    iget v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v0, "glUseProgram"

    .line 80
    invoke-static {v0}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    const v0, 0x84c0

    .line 83
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 84
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 87
    iget p1, p0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;->muMVPMatrixLoc:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, p3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const-string p1, "glUniformMatrix4fv"

    .line 88
    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 91
    iget p3, p0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;->muTexMatrixLoc:I

    invoke-static {p3, v1, v2, p2, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 92
    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 95
    iget p1, p0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string p1, "glEnableVertexAttribArray"

    .line 96
    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 99
    iget v3, p0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;->maPositionLoc:I

    iget-object p2, p0, Lcom/transsion/camera/utils/gles/core/Program;->mDrawable2d:Lcom/transsion/camera/utils/gles/core/Drawable2d;

    .line 100
    invoke-virtual {p2}, Lcom/transsion/camera/utils/gles/core/Drawable2d;->vertexArray()Ljava/nio/FloatBuffer;

    move-result-object v8

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x8

    .line 99
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string p2, "glVertexAttribPointer"

    .line 101
    invoke-static {p2}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 104
    iget p3, p0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;->maTextureCoordLoc:I

    invoke-static {p3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 105
    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 108
    iget v3, p0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;->maTextureCoordLoc:I

    iget-object p1, p0, Lcom/transsion/camera/utils/gles/core/Program;->mDrawable2d:Lcom/transsion/camera/utils/gles/core/Drawable2d;

    .line 109
    invoke-virtual {p1}, Lcom/transsion/camera/utils/gles/core/Drawable2d;->texCoordArray()Ljava/nio/FloatBuffer;

    move-result-object v8

    .line 108
    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 110
    invoke-static {p2}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/transsion/camera/utils/gles/core/Program;->mDrawable2d:Lcom/transsion/camera/utils/gles/core/Drawable2d;

    invoke-virtual {p1}, Lcom/transsion/camera/utils/gles/core/Drawable2d;->vertexCount()I

    move-result p1

    const/4 p2, 0x5

    invoke-static {p2, v2, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const-string p1, "glDrawArrays"

    .line 114
    invoke-static {p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 117
    iget p1, p0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;->maPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 118
    iget p0, p0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;->maTextureCoordLoc:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 119
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 120
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method protected getDrawable2d()Lcom/transsion/camera/utils/gles/core/Drawable2d;
    .locals 0

    .line 59
    new-instance p0, Lcom/transsion/camera/utils/gles/Drawable2dFull;

    invoke-direct {p0}, Lcom/transsion/camera/utils/gles/Drawable2dFull;-><init>()V

    return-object p0
.end method

.method protected getLocations()V
    .locals 2

    .line 64
    iget v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;->maPositionLoc:I

    .line 65
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 66
    iget v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;->maTextureCoordLoc:I

    .line 67
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 68
    iget v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;->muMVPMatrixLoc:I

    .line 69
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 70
    iget v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    const-string v1, "uTexMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/gles/ProgramTexture2d;->muTexMatrixLoc:I

    .line 71
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkLocation(ILjava/lang/String;)V

    return-void
.end method
