.class public abstract Lcom/bytedance/labcv/core/opengl/GlUtil;
.super Ljava/lang/Object;
.source "GlUtil.java"


# static fields
.field public static final IDENTITY_MATRIX:[F

.field public static final NO_TEXTURE:I = -0x1

.field private static final SIZEOF_FLOAT:I = 0x4

.field public static final TAG:Ljava/lang/String; = "GlUtil"

.field public static x_scale:F = 1.0f

.field public static y_scale:F = 1.0f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 61
    sput-object v0, Lcom/bytedance/labcv/core/opengl/GlUtil;->IDENTITY_MATRIX:[F

    const/4 v1, 0x0

    .line 62
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeMVPMatrixCrop(FFFF)[F
    .locals 2

    mul-float/2addr p0, p3

    div-float/2addr p0, p1

    div-float/2addr p0, p2

    const/16 p1, 0x10

    new-array p1, p1, [F

    const/4 p2, 0x0

    .line 244
    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float v0, p0, p3

    if-lez v0, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    div-float v1, p3, p0

    :goto_0
    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move p0, p3

    .line 245
    :goto_1
    invoke-static {p1, p2, v1, p0, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-object p1
.end method

.method public static changeMVPMatrixCrop([FFFFF)[F
    .locals 7

    mul-float/2addr p1, p4

    div-float/2addr p1, p2

    div-float/2addr p1, p3

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p3, p1, p2

    if-nez p3, :cond_0

    .line 317
    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    return-object p0

    :cond_0
    const/16 p4, 0x10

    new-array v6, p4, [F

    new-array v2, p4, [F

    const/4 p4, 0x0

    .line 321
    invoke-static {v2, p4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    if-lez p3, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    div-float v0, p2, p1

    :goto_0
    if-lez p3, :cond_2

    goto :goto_1

    :cond_2
    move p1, p2

    .line 322
    :goto_1
    invoke-static {v2, p4, v0, p1, p2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v4, p0

    .line 323
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-object v6
.end method

.method public static changeMVPMatrixInside(FFFF)[F
    .locals 2

    mul-float/2addr p0, p3

    div-float/2addr p0, p1

    div-float/2addr p0, p2

    const/16 p1, 0x10

    new-array p1, p1, [F

    const/4 p2, 0x0

    .line 400
    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float v0, p0, p3

    if-lez v0, :cond_0

    div-float v1, p3, p0

    goto :goto_0

    :cond_0
    move v1, p3

    :goto_0
    if-lez v0, :cond_1

    move p0, p3

    .line 401
    :cond_1
    invoke-static {p1, p2, v1, p0, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-object p1
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 2

    .line 136
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": glError 0x"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 139
    sget-object v0, Lcom/bytedance/labcv/core/opengl/GlUtil;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static checkLocation(ILjava/lang/String;)V
    .locals 2

    if-gez p0, :cond_0

    .line 151
    sget-object p0, Lcom/bytedance/labcv/core/opengl/GlUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to locate \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in program"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static createFBO([I[III)V
    .locals 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 287
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 289
    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 292
    aget p1, p1, v1

    const v0, 0x8d40

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 294
    aget p1, p0, v1

    const/16 v2, 0xde1

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1908

    const/4 v8, 0x0

    const/16 v9, 0x1908

    const/16 v10, 0x1401

    const/4 v11, 0x0

    move v6, p2

    move v7, p3

    .line 296
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 p1, 0x2802

    const p2, 0x812f

    .line 297
    invoke-static {v2, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    .line 298
    invoke-static {v2, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2800

    const/16 p2, 0x2601

    .line 299
    invoke-static {v2, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2801

    .line 300
    invoke-static {v2, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 302
    aget p0, p0, v1

    const p1, 0x8ce0

    invoke-static {v0, p1, v2, p0, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 304
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 305
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method public static createFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 2

    .line 233
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 234
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 235
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 236
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 p0, 0x0

    .line 237
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static createImageTexture(Landroid/graphics/Bitmap;)I
    .locals 5

    if-eqz p0, :cond_1

    .line 199
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 202
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string v0, "glGenTextures"

    .line 203
    invoke-static {v0}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    aget v0, v1, v2

    const/16 v1, 0xde1

    .line 209
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string v3, "glBindTexture"

    .line 210
    invoke-static {v3}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/16 v3, 0x2801

    const/16 v4, 0x2601

    .line 215
    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2800

    .line 217
    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v3, "loadImageTexture"

    .line 219
    invoke-static {v3}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 222
    invoke-static {v1, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 223
    invoke-static {v3}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    return v0

    :cond_1
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public static createImageTexture(Ljava/nio/ByteBuffer;III)I
    .locals 11

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 169
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    const-string v1, "glGenTextures"

    .line 171
    invoke-static {v1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/16 v1, 0xde1

    .line 174
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2801

    const/16 v3, 0x2601

    .line 178
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    .line 180
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v1, "loadImageTexture"

    .line 182
    invoke-static {v1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x1401

    move v4, p3

    move v5, p1

    move v6, p2

    move v8, p3

    move-object v10, p0

    .line 185
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 187
    invoke-static {v1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    return v0
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const v0, 0x8b31

    .line 77
    invoke-static {v0, p0}, Lcom/bytedance/labcv/core/opengl/GlUtil;->loadShader(ILjava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const v1, 0x8b30

    .line 81
    invoke-static {v1, p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->loadShader(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 86
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    const-string v2, "glCreateProgram"

    .line 87
    invoke-static {v2}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    if-nez v1, :cond_2

    .line 89
    sget-object v2, Lcom/bytedance/labcv/core/opengl/GlUtil;->TAG:Ljava/lang/String;

    const-string v3, "Could not create program"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_2
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v2, "glAttachShader"

    .line 92
    invoke-static {v2}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 93
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 94
    invoke-static {v2}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 95
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 96
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 97
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const/4 p0, 0x1

    new-array p1, p0, [I

    const v2, 0x8b82

    .line 100
    invoke-static {v1, v2, p1, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget p1, p1, v0

    if-eq p1, p0, :cond_3

    .line 102
    sget-object p0, Lcom/bytedance/labcv/core/opengl/GlUtil;->TAG:Ljava/lang/String;

    const-string p1, "Could not link program: "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 107
    :goto_0
    sget-object p0, Lcom/bytedance/labcv/core/opengl/GlUtil;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createProgram: program="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static createTextureObject(I)I
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 256
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string v0, "glGenTextures"

    .line 257
    invoke-static {v0}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    aget v0, v1, v2

    .line 260
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glBindTexture "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/16 v1, 0x2801

    const v2, 0x46180400    # 9729.0f

    .line 263
    invoke-static {p0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2800

    .line 264
    invoke-static {p0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    const v2, 0x812f

    .line 265
    invoke-static {p0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    .line 266
    invoke-static {p0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string p0, "glTexParameter"

    .line 267
    invoke-static {p0}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    return v0
.end method

.method public static deleteFBO([I)V
    .locals 2

    if-eqz p0, :cond_0

    .line 309
    array-length v0, p0

    if-lez v0, :cond_0

    .line 310
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    :cond_0
    return-void
.end method

.method public static deleteTextureId(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 281
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public static deleteTextureId([I)V
    .locals 2

    if-eqz p0, :cond_0

    .line 273
    array-length v0, p0

    if-lez v0, :cond_0

    .line 274
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :cond_0
    return-void
.end method

.method public static flip([FZZ)[F
    .locals 3

    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 429
    :goto_1
    invoke-static {p0, v0, p1, v1, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_3
    return-object p0
.end method

.method public static getExternalOESTextureID()I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 475
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    const v3, 0x8d65

    .line 476
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const v4, 0x46180400    # 9729.0f

    .line 477
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    .line 479
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v4, 0x812f

    .line 481
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 483
    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    aget v0, v1, v2

    return v0
.end method

.method public static getShowMatrix([FIIII)V
    .locals 11

    if-lez p2, :cond_1

    if-lez p1, :cond_1

    if-lez p3, :cond_1

    if-lez p4, :cond_1

    int-to-float p3, p3

    int-to-float p4, p4

    div-float/2addr p3, p4

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/16 p2, 0x10

    new-array p4, p2, [F

    new-array p2, p2, [F

    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    const/4 v1, 0x0

    neg-float v0, p3

    div-float v2, v0, p1

    div-float v3, p3, p1

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x40400000    # 3.0f

    move-object v0, p4

    .line 336
    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    neg-float v0, p1

    div-float v4, v0, p3

    div-float v5, p1, p3

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x40400000    # 3.0f

    move-object v0, p4

    .line 338
    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object v0, p2

    .line 340
    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p4

    move-object v4, p2

    .line 341
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    :cond_1
    return-void
.end method

.method public static getShowMatrix([FLandroid/widget/ImageView$ScaleType;IIII)V
    .locals 25

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    if-lez v1, :cond_a

    if-lez v0, :cond_a

    if-lez v2, :cond_a

    if-lez v3, :cond_a

    const/16 v4, 0x10

    new-array v13, v4, [F

    new-array v4, v4, [F

    .line 351
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v15, p1

    if-ne v15, v5, :cond_0

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x40400000    # 3.0f

    move-object v5, v13

    .line 352
    invoke-static/range {v5 .. v12}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    move-object v14, v4

    move v15, v5

    .line 353
    invoke-static/range {v14 .. v24}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object v7, v13

    move-object v9, v4

    .line 354
    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    :cond_0
    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpl-float v1, v0, v2

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v14, 0x3f800000    # 1.0f

    if-lez v1, :cond_5

    .line 359
    sget-object v1, Lcom/bytedance/labcv/core/opengl/GlUtil$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v10

    aget v1, v1, v10

    if-eq v1, v8, :cond_4

    if-eq v1, v7, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_1

    goto/16 :goto_0

    :cond_1
    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v0, v9

    div-float/2addr v0, v2

    sub-float v10, v0, v14

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x40400000    # 3.0f

    move-object v5, v13

    move v9, v1

    .line 371
    invoke-static/range {v5 .. v12}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto/16 :goto_0

    :cond_2
    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v0, v9

    div-float/2addr v0, v2

    sub-float v9, v14, v0

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x40400000    # 3.0f

    move-object v5, v13

    .line 368
    invoke-static/range {v5 .. v12}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto/16 :goto_0

    :cond_3
    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    neg-float v1, v0

    div-float v9, v1, v2

    div-float v10, v0, v2

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x40400000    # 3.0f

    move-object v5, v13

    .line 365
    invoke-static/range {v5 .. v12}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto/16 :goto_0

    :cond_4
    const/4 v6, 0x0

    neg-float v1, v2

    div-float v7, v1, v0

    div-float v8, v2, v0

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x40400000    # 3.0f

    move-object v5, v13

    .line 361
    invoke-static/range {v5 .. v12}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 362
    sget v0, Lcom/bytedance/labcv/core/opengl/GlUtil;->x_scale:F

    sget v1, Lcom/bytedance/labcv/core/opengl/GlUtil;->y_scale:F

    invoke-static {v13, v3, v0, v1, v14}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_0

    .line 375
    :cond_5
    sget-object v1, Lcom/bytedance/labcv/core/opengl/GlUtil$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v10

    aget v1, v1, v10

    if-eq v1, v8, :cond_9

    if-eq v1, v7, :cond_8

    if-eq v1, v6, :cond_7

    if-eq v1, v5, :cond_6

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    mul-float/2addr v2, v9

    div-float/2addr v2, v0

    sub-float v7, v14, v2

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x40400000    # 3.0f

    move-object v5, v13

    .line 387
    invoke-static/range {v5 .. v12}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto :goto_0

    :cond_7
    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    mul-float/2addr v2, v9

    div-float/2addr v2, v0

    sub-float v8, v2, v14

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x40400000    # 3.0f

    move-object v5, v13

    .line 384
    invoke-static/range {v5 .. v12}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto :goto_0

    :cond_8
    const/4 v6, 0x0

    neg-float v1, v2

    div-float v7, v1, v0

    div-float v8, v2, v0

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x40400000    # 3.0f

    move-object v5, v13

    .line 381
    invoke-static/range {v5 .. v12}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto :goto_0

    :cond_9
    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    neg-float v1, v0

    div-float v9, v1, v2

    div-float v10, v0, v2

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x40400000    # 3.0f

    move-object v5, v13

    .line 377
    invoke-static/range {v5 .. v12}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 378
    sget v0, Lcom/bytedance/labcv/core/opengl/GlUtil;->x_scale:F

    sget v1, Lcom/bytedance/labcv/core/opengl/GlUtil;->y_scale:F

    invoke-static {v13, v3, v0, v1, v14}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :goto_0
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/high16 v23, 0x3f800000    # 1.0f

    const/16 v24, 0x0

    move-object v14, v4

    .line 392
    invoke-static/range {v14 .. v24}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move/from16 p1, v0

    move-object/from16 p2, v13

    move/from16 p3, v1

    move-object/from16 p4, v4

    move/from16 p5, v2

    .line 393
    invoke-static/range {p0 .. p5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    :cond_a
    return-void
.end method

.method public static getSupportGLVersion(Landroid/content/Context;)I
    .locals 5

    const-string v0, "activity"

    .line 412
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 413
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p0

    .line 414
    iget v0, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v1, 0x30000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 415
    :goto_0
    invoke-virtual {p0}, Landroid/content/pm/ConfigurationInfo;->getGlEsVersion()Ljava/lang/String;

    move-result-object v1

    .line 416
    sget-object v2, Lcom/bytedance/labcv/core/opengl/GlUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reqGlEsVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", glEsVersion: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", return: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 4

    .line 117
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glCreateShader type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 119
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 120
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v1, 0x8b81

    const/4 v2, 0x0

    .line 122
    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p1, p1, v2

    if-nez p1, :cond_0

    .line 124
    sget-object p1, Lcom/bytedance/labcv/core/opengl/GlUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not compile shader "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v2

    :cond_0
    return v0
.end method

.method public static readPixlesBuffer(III)Ljava/nio/ByteBuffer;
    .locals 13

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    return-object v0

    :cond_0
    mul-int v1, p1, p2

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    mul-int/lit8 v1, v1, 0x4

    .line 443
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 445
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v9, 0x1

    new-array v10, v9, [I

    .line 447
    invoke-static {v9, v10, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    const/16 v11, 0xde1

    .line 448
    invoke-static {v11, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0x2800

    const v3, 0x46180400    # 9729.0f

    .line 449
    invoke-static {v11, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2801

    .line 451
    invoke-static {v11, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2802

    const v3, 0x47012f00    # 33071.0f

    .line 453
    invoke-static {v11, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v2, 0x2803

    .line 455
    invoke-static {v11, v2, v3}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    aget v2, v10, v1

    const v12, 0x8d40

    .line 458
    invoke-static {v12, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v2, 0x8ce0

    .line 459
    invoke-static {v12, v2, v11, p0, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move v4, p1

    move v5, p2

    move-object v8, v0

    .line 461
    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 464
    invoke-static {v11, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 465
    invoke-static {v12, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 467
    invoke-static {v9, v10, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    return-object v0
.end method

.method public static rotate([FF)[F
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v2, p1

    .line 423
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-object p0
.end method
