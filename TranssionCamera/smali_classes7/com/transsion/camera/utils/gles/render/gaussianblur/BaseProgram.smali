.class Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;
.super Ljava/lang/Object;
.source "BaseProgram.java"


# static fields
.field private static final TEXTURE_COORDINATE:[F

.field private static final VERTEX_COORDINATE:[F


# instance fields
.field private mBindFbo:Z

.field private mFboId:I

.field private mFboTextureId:I

.field private final mFragmentShader:Ljava/lang/String;

.field private mHeight:I

.field private mPositionLoc:I

.field protected mProgram:I

.field protected mSamplerLoc:I

.field private mTextureCoordinateBuffer:Ljava/nio/FloatBuffer;

.field private mTextureCoordinateLoc:I

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private final mVertexShader:Ljava/lang/String;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 41
    fill-array-data v1, :array_0

    sput-object v1, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->VERTEX_COORDINATE:[F

    new-array v0, v0, [F

    .line 48
    fill-array-data v0, :array_1

    sput-object v0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->TEXTURE_COORDINATE:[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2

    const-string v0, "attribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position =  aPosition;\n    vTextureCoord = aTextureCoord.xy;\n}\n"

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D uSampler;\nvoid main() {\n    gl_FragColor = texture2D(uSampler, vTextureCoord);\n}\n"

    .line 77
    invoke-direct {p0, v0, v1}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mVertexShader:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mFragmentShader:Ljava/lang/String;

    .line 84
    invoke-virtual {p0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->onCreate()V

    return-void
.end method


# virtual methods
.method public draw(III)Z
    .locals 12

    .line 127
    iget v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 129
    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->onInitFbo(II)V

    .line 130
    invoke-virtual {p0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->onBindFbo()V

    .line 131
    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->onActiveTexture(I)V

    const/4 p1, 0x0

    .line 133
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 p2, 0x0

    .line 135
    invoke-static {p2, p2, p2, p2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p2, 0x4500

    .line 136
    invoke-static {p2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 138
    iget p2, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mPositionLoc:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 139
    iget p2, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mTextureCoordinateLoc:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 141
    iget v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mPositionLoc:I

    iget-object v5, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 143
    iget v6, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mTextureCoordinateLoc:I

    iget-object v11, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mTextureCoordinateBuffer:Ljava/nio/FloatBuffer;

    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 146
    invoke-virtual {p0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->onSetOtherData()V

    const/4 p2, 0x5

    const/4 p3, 0x4

    .line 148
    invoke-static {p2, p1, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 150
    iget p1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mPositionLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 151
    iget p1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mTextureCoordinateLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 153
    invoke-virtual {p0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->onUnBind()V

    const/4 p0, 0x1

    return p0
.end method

.method public getFboTextureId()I
    .locals 0

    .line 92
    iget p0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mFboTextureId:I

    return p0
.end method

.method protected getHeight()I
    .locals 0

    .line 100
    iget p0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mHeight:I

    return p0
.end method

.method protected getWidth()I
    .locals 0

    .line 96
    iget p0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mWidth:I

    return p0
.end method

.method protected onActiveTexture(I)V
    .locals 1

    const v0, 0x84c0

    .line 190
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 191
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 192
    iget p0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mSamplerLoc:I

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method protected onBindFbo()V
    .locals 4

    .line 181
    iget-boolean v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mBindFbo:Z

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    iget v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mFboId:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v0, 0x8ce0

    const/16 v2, 0xde1

    .line 185
    iget p0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mFboTextureId:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, p0, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    return-void
.end method

.method protected onCreate()V
    .locals 0

    .line 104
    invoke-virtual {p0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->onInitProgram()V

    .line 105
    invoke-virtual {p0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->onInitLocation()V

    .line 106
    invoke-virtual {p0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->onInitBuffers()V

    const-string p0, "onCreate"

    .line 107
    invoke-static {p0}, Lcom/transsion/camera/utils/gles/render/gaussianblur/GLUtils;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method protected onInitBuffers()V
    .locals 1

    .line 122
    sget-object v0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->VERTEX_COORDINATE:[F

    invoke-static {v0}, Lcom/transsion/camera/utils/gles/core/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 123
    sget-object v0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->TEXTURE_COORDINATE:[F

    invoke-static {v0}, Lcom/transsion/camera/utils/gles/core/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mTextureCoordinateBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method

.method protected onInitFbo(II)V
    .locals 11

    .line 159
    iget-boolean v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mBindFbo:Z

    if-nez v0, :cond_0

    .line 160
    iput p1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mWidth:I

    .line 161
    iput p2, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mHeight:I

    return-void

    .line 164
    :cond_0
    iget v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mWidth:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mHeight:I

    if-eq p2, v0, :cond_3

    .line 165
    :cond_1
    iput p1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mWidth:I

    .line 166
    iput p2, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mHeight:I

    .line 167
    iget v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mFboId:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mFboTextureId:I

    if-lez v0, :cond_2

    const/16 p0, 0xde1

    .line 168
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    const/4 v10, 0x0

    move v5, p1

    move v6, p2

    .line 169
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 171
    invoke-static {p0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_0

    .line 173
    :cond_2
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/gles/render/gaussianblur/GLUtils;->getFbo(II)[I

    move-result-object p1

    .line 174
    aget p2, p1, v1

    iput p2, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mFboId:I

    const/4 p2, 0x1

    .line 175
    aget p1, p1, p2

    iput p1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mFboTextureId:I

    :cond_3
    :goto_0
    return-void
.end method

.method protected onInitLocation()V
    .locals 2

    .line 115
    iget v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mPositionLoc:I

    .line 116
    iget v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mProgram:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mTextureCoordinateLoc:I

    .line 118
    iget v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mProgram:I

    const-string v1, "uSampler"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mSamplerLoc:I

    return-void
.end method

.method protected onInitProgram()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mVertexShader:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mFragmentShader:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mProgram:I

    return-void
.end method

.method public onRelease()V
    .locals 4

    .line 205
    iget v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 206
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 208
    iput-object v1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mTextureCoordinateBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 212
    iput-object v1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mTextureCoordinateBuffer:Ljava/nio/FloatBuffer;

    .line 214
    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mBindFbo:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mFboTextureId:I

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mFboId:I

    if-lez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 215
    iget v2, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mFboTextureId:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    new-array v1, v0, [I

    .line 216
    iget p0, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mFboId:I

    aput p0, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    :cond_3
    return-void
.end method

.method protected onSetOtherData()V
    .locals 0

    return-void
.end method

.method protected onUnBind()V
    .locals 1

    const/16 p0, 0xde1

    const/4 v0, 0x0

    .line 200
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const p0, 0x8d40

    .line 201
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method public setBindFbo(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/transsion/camera/utils/gles/render/gaussianblur/BaseProgram;->mBindFbo:Z

    return-void
.end method
