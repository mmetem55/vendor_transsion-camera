.class public abstract Lcom/transsion/camera/utils/gles/core/GlUtil;
.super Ljava/lang/Object;
.source "GlUtil.java"


# static fields
.field public static final IDENTITY_MATRIX:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 44
    sput-object v0, Lcom/transsion/camera/utils/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    const/4 v1, 0x0

    .line 45
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 2

    .line 119
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 121
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

    const-string v0, "Grafika"

    .line 122
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static checkLocation(ILjava/lang/String;)V
    .locals 1

    if-gez p0, :cond_0

    .line 134
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to locate \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' in program"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Grafika"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static createFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 2

    .line 211
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 212
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 213
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 214
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 p0, 0x0

    .line 215
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    const v0, 0x8b31

    .line 60
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/gles/core/GlUtil;->loadShader(ILjava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    const-string v1, "Grafika"

    if-nez p0, :cond_0

    const-string p0, "createProgram loadShader GL_VERTEX_SHADER fail"

    .line 62
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const v2, 0x8b30

    .line 65
    invoke-static {v2, p1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->loadShader(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "createProgram loadShader GL_FRAGMENT_SHADER fail"

    .line 67
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 71
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    const-string v3, "glCreateProgram"

    .line 72
    invoke-static {v3}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    if-nez v2, :cond_2

    const-string v3, "Could not create program"

    .line 74
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_2
    invoke-static {v2, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v3, "glAttachShader"

    .line 77
    invoke-static {v3}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 78
    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 79
    invoke-static {v3}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 80
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x8b82

    .line 82
    invoke-static {v2, v5, v4, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v4, v4, v0

    if-eq v4, v3, :cond_3

    const-string v3, "Could not link program: "

    .line 84
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 89
    :goto_0
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 90
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v0
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 3

    .line 100
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glCreateShader type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 102
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 103
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v1, 0x8b81

    const/4 v2, 0x0

    .line 105
    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p1, p1, v2

    if-nez p1, :cond_0

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not compile shader "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Grafika"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
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

    .line 109
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v2

    :cond_0
    return v0
.end method
