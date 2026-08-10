.class public Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;
.super Lcom/bytedance/labcv/core/opengl/Program;
.source "ProgramTextureYUV.java"


# static fields
.field public static final FRAGMENT:Ljava/lang/String; = "varying highp vec2 vTextureCoord;\n uniform sampler2D yTexture;\n uniform sampler2D uTexture;\n uniform sampler2D vTexture;\n void main()\n {\n     mediump vec3 yuv;\n     lowp vec3 rgb;\n     yuv.x = texture2D(yTexture, vTextureCoord).a - 0.065;\n     yuv.y = texture2D(uTexture, vTextureCoord).r - 0.5;\n     yuv.z = texture2D(vTexture, vTextureCoord).r - 0.5;\n     rgb.x = yuv.x + 1.4075 * yuv.z;\n     rgb.y = yuv.x - 0.3455 * yuv.y - 0.7169 * yuv.z;\n     rgb.z = yuv.x + 1.779 * yuv.y;\n     gl_FragColor = vec4(rgb.x, rgb.y, rgb.z, 1);\n }"

.field public static final VERTEX:Ljava/lang/String; = "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = aTextureCoord;\n}\n"


# instance fields
.field private mUTextureLoc:I

.field private mVTextureLoc:I

.field private mYTextureLoc:I

.field private maPositionLoc:I

.field private maTextureCoordLoc:I

.field private muMVPMatrixLoc:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * aPosition;\n    vTextureCoord = aTextureCoord;\n}\n"

    const-string v1, "varying highp vec2 vTextureCoord;\n uniform sampler2D yTexture;\n uniform sampler2D uTexture;\n uniform sampler2D vTexture;\n void main()\n {\n     mediump vec3 yuv;\n     lowp vec3 rgb;\n     yuv.x = texture2D(yTexture, vTextureCoord).a - 0.065;\n     yuv.y = texture2D(uTexture, vTextureCoord).r - 0.5;\n     yuv.z = texture2D(vTexture, vTextureCoord).r - 0.5;\n     rgb.x = yuv.x + 1.4075 * yuv.z;\n     rgb.y = yuv.x - 0.3455 * yuv.y - 0.7169 * yuv.z;\n     rgb.z = yuv.x + 1.779 * yuv.y;\n     gl_FragColor = vec4(rgb.x, rgb.y, rgb.z, 1);\n }"

    .line 20
    invoke-direct {p0, v0, v1}, Lcom/bytedance/labcv/core/opengl/Program;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public drawFrameOffScreen(IIIII[F)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    const-string v3, "draw start"

    .line 45
    invoke-static {v3}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/labcv/core/opengl/Program;->initFrameBufferIfNeed(II)V

    const-string v3, "initFrameBufferIfNeed"

    .line 48
    invoke-static {v3}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 51
    iget v3, v0, Lcom/bytedance/labcv/core/opengl/Program;->mProgramHandle:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v3, "glUseProgram"

    .line 52
    invoke-static {v3}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    const v3, 0x84c0

    .line 54
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v4, 0xde1

    move/from16 v5, p1

    .line 55
    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v5, "glBindTexture"

    .line 56
    invoke-static {v5}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    const v6, 0x84c1

    .line 58
    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    move/from16 v7, p2

    .line 59
    invoke-static {v4, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 60
    invoke-static {v5}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    const v7, 0x84c2

    .line 62
    invoke-static {v7}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    move/from16 v8, p3

    .line 63
    invoke-static {v4, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 64
    invoke-static {v5}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 66
    iget-object v5, v0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBuffers:[I

    const/4 v8, 0x0

    aget v5, v5, v8

    const v9, 0x8d40

    invoke-static {v9, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 68
    iget v5, v0, Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;->muMVPMatrixLoc:I

    const/4 v10, 0x1

    move-object/from16 v11, p6

    invoke-static {v5, v10, v8, v11, v8}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 70
    iget v5, v0, Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;->maPositionLoc:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 71
    iget v11, v0, Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;->maPositionLoc:I

    iget-object v5, v0, Lcom/bytedance/labcv/core/opengl/Program;->mDrawable2d:Lcom/bytedance/labcv/core/opengl/Drawable2d;

    .line 72
    invoke-virtual {v5}, Lcom/bytedance/labcv/core/opengl/Drawable2d;->getVertexArray()Ljava/nio/FloatBuffer;

    move-result-object v16

    const/4 v12, 0x2

    const/16 v13, 0x1406

    const/4 v14, 0x0

    const/16 v15, 0x8

    .line 71
    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 74
    iget v5, v0, Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;->maTextureCoordLoc:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 75
    iget v11, v0, Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;->maTextureCoordLoc:I

    iget-object v5, v0, Lcom/bytedance/labcv/core/opengl/Program;->mDrawable2d:Lcom/bytedance/labcv/core/opengl/Drawable2d;

    .line 76
    invoke-virtual {v5}, Lcom/bytedance/labcv/core/opengl/Drawable2d;->getTexCoorArrayFB()Ljava/nio/FloatBuffer;

    move-result-object v16

    .line 75
    invoke-static/range {v11 .. v16}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 78
    iget v5, v0, Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;->mYTextureLoc:I

    invoke-static {v5, v8}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 79
    iget v5, v0, Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;->mUTextureLoc:I

    invoke-static {v5, v10}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 80
    iget v5, v0, Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;->mVTextureLoc:I

    const/4 v10, 0x2

    invoke-static {v5, v10}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 82
    invoke-static {v8, v8, v1, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 83
    iget-object v1, v0, Lcom/bytedance/labcv/core/opengl/Program;->mDrawable2d:Lcom/bytedance/labcv/core/opengl/Drawable2d;

    invoke-virtual {v1}, Lcom/bytedance/labcv/core/opengl/Drawable2d;->getVertexCount()I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v2, v8, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 85
    iget v1, v0, Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;->maPositionLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 86
    iget v1, v0, Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;->maTextureCoordLoc:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 87
    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 88
    invoke-static {v4, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 89
    invoke-static {v7}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 90
    invoke-static {v4, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 91
    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 92
    invoke-static {v4, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 93
    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 94
    invoke-static {v8}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 95
    iget-object v0, v0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBufferTextures:[I

    aget v0, v0, v8

    return v0
.end method

.method public drawFrameOffScreen(III[F)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public drawFrameOffScreen(IIII[F)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public drawFrameOnScreen(III[F)V
    .locals 0

    return-void
.end method

.method protected getDrawable2d()Lcom/bytedance/labcv/core/opengl/Drawable2d;
    .locals 1

    .line 25
    new-instance p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;

    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;->FULL_RECTANGLE:Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

    invoke-direct {p0, v0}, Lcom/bytedance/labcv/core/opengl/Drawable2d;-><init>(Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;)V

    return-object p0
.end method

.method protected getLocations()V
    .locals 2

    .line 30
    iget v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mProgramHandle:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;->maPositionLoc:I

    .line 31
    invoke-static {v0, v1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 32
    iget v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mProgramHandle:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;->maTextureCoordLoc:I

    .line 33
    invoke-static {v0, v1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 34
    iget v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mProgramHandle:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;->muMVPMatrixLoc:I

    .line 35
    invoke-static {v0, v1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 36
    iget v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mProgramHandle:I

    const-string v1, "yTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;->mYTextureLoc:I

    .line 37
    iget v0, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;->muMVPMatrixLoc:I

    invoke-static {v0, v1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 38
    iget v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mProgramHandle:I

    const-string v1, "uTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;->mUTextureLoc:I

    .line 39
    iget v0, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;->muMVPMatrixLoc:I

    invoke-static {v0, v1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkLocation(ILjava/lang/String;)V

    .line 40
    iget v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mProgramHandle:I

    const-string v1, "vTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;->mVTextureLoc:I

    .line 41
    iget p0, p0, Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;->muMVPMatrixLoc:I

    invoke-static {p0, v1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkLocation(ILjava/lang/String;)V

    return-void
.end method

.method public readBuffer(III)Ljava/nio/ByteBuffer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
