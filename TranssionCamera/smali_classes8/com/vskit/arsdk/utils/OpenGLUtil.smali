.class public Lcom/vskit/arsdk/utils/OpenGLUtil;
.super Ljava/lang/Object;
.source "OpenGLUtil.java"


# static fields
.field public static final IDENTITY_MATRIX:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 25
    sput-object v0, Lcom/vskit/arsdk/utils/OpenGLUtil;->IDENTITY_MATRIX:[F

    const/4 v1, 0x0

    .line 26
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 2

    .line 107
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 109
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

    const-string v0, "OpenGLUtils"

    .line 110
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static createFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 2

    .line 121
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 122
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 123
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 124
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 p0, 0x0

    .line 125
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static createFrameBuffer([I[III)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 138
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 139
    array-length v2, v1

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    move v2, v3

    .line 140
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 141
    aget v4, v1, v2

    const/16 v5, 0xde1

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v6, 0xde1

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/4 v11, 0x0

    const/16 v12, 0x1908

    const/16 v13, 0x1401

    const/4 v14, 0x0

    move/from16 v9, p2

    move/from16 v10, p3

    .line 142
    invoke-static/range {v6 .. v14}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v4, 0x2800

    const v6, 0x46180400    # 9729.0f

    .line 143
    invoke-static {v5, v4, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v4, 0x2801

    .line 144
    invoke-static {v5, v4, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v4, 0x2802

    const v6, 0x47012f00    # 33071.0f

    .line 145
    invoke-static {v5, v4, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v4, 0x2803

    .line 146
    invoke-static {v5, v4, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 147
    aget v4, v0, v2

    const v6, 0x8d40

    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v4, 0x8ce0

    .line 148
    aget v7, v1, v2

    invoke-static {v6, v4, v5, v7, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 149
    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 150
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "createFrameBuffer"

    .line 152
    invoke-static {v0}, Lcom/vskit/arsdk/utils/OpenGLUtil;->checkGlError(Ljava/lang/String;)V

    return-void
.end method

.method public static createImageTexture(Landroid/graphics/Bitmap;)I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 197
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    const-string v1, "glGenTextures"

    .line 199
    invoke-static {v1}, Lcom/faceunity/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "textureHandle = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "LSArManager"

    invoke-static {v3, v1}, Lcom/vskit/arsdk/utils/LogHelper;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xde1

    .line 203
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0x2801

    const/16 v4, 0x2601

    .line 207
    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v3, 0x2800

    .line 209
    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v3, "loadImageTexture"

    .line 211
    invoke-static {v3}, Lcom/faceunity/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 214
    invoke-static {v1, v2, p0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 215
    invoke-static {v3}, Lcom/faceunity/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    return v0
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    const v0, 0x8b31

    .line 43
    invoke-static {v0, p0}, Lcom/vskit/arsdk/utils/OpenGLUtil;->loadShader(ILjava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const v1, 0x8b30

    .line 47
    invoke-static {v1, p1}, Lcom/vskit/arsdk/utils/OpenGLUtil;->loadShader(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 52
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    const-string v2, "glCreateProgram"

    .line 53
    invoke-static {v2}, Lcom/vskit/arsdk/utils/OpenGLUtil;->checkGlError(Ljava/lang/String;)V

    const-string v2, "OpenGLUtils"

    if-nez v1, :cond_2

    const-string v3, "Could not create program"

    .line 55
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_2
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v3, "glAttachShader"

    .line 58
    invoke-static {v3}, Lcom/vskit/arsdk/utils/OpenGLUtil;->checkGlError(Ljava/lang/String;)V

    .line 59
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 60
    invoke-static {v3}, Lcom/vskit/arsdk/utils/OpenGLUtil;->checkGlError(Ljava/lang/String;)V

    .line 61
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x8b82

    .line 63
    invoke-static {v1, v5, v4, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v4, v4, v0

    if-eq v4, v3, :cond_3

    const-string v3, "Could not link program: "

    .line 65
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 71
    :goto_0
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 72
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const-string p0, "glDeleteShader"

    .line 73
    invoke-static {p0}, Lcom/vskit/arsdk/utils/OpenGLUtil;->checkGlError(Ljava/lang/String;)V

    return v0
.end method

.method public static deleteTexture(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 228
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 3

    .line 86
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glCreateShader type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vskit/arsdk/utils/OpenGLUtil;->checkGlError(Ljava/lang/String;)V

    .line 88
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 89
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v1, 0x8b81

    const/4 v2, 0x0

    .line 91
    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p1, p1, v2

    if-nez p1, :cond_0

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not compile shader "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpenGLUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
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

    .line 95
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v2

    :cond_0
    return v0
.end method
