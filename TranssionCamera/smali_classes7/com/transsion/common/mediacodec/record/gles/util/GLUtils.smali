.class public Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;
.super Ljava/lang/Object;
.source "GLUtils.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 2

    .line 131
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 133
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

    .line 134
    sget-object v0, Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static createFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 2

    .line 144
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 145
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 146
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 147
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 p0, 0x0

    .line 148
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static createOESTexture()I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 23
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string v0, "glGenTextures"

    .line 24
    invoke-static {v0}, Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;->checkGlError(Ljava/lang/String;)V

    aget v0, v1, v2

    const v1, 0x8d65

    .line 26
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glBindTexture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;->checkGlError(Ljava/lang/String;)V

    const/16 v2, 0x2801

    const/16 v3, 0x2601

    .line 28
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    .line 29
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2802

    const v3, 0x812f

    .line 31
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    .line 32
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    return v0
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const v0, 0x8b31

    .line 60
    invoke-static {v0, p0}, Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;->loadShader(ILjava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const v1, 0x8b30

    .line 64
    invoke-static {v1, p1}, Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;->loadShader(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 69
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    const-string v2, "glCreateProgram"

    .line 70
    invoke-static {v2}, Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;->checkGlError(Ljava/lang/String;)V

    if-nez v1, :cond_2

    .line 72
    sget-object v2, Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "Could not create program"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 74
    :cond_2
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v2, "glAttachShader"

    .line 75
    invoke-static {v2}, Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;->checkGlError(Ljava/lang/String;)V

    .line 76
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 77
    invoke-static {v2}, Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;->checkGlError(Ljava/lang/String;)V

    .line 78
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x8b82

    .line 80
    invoke-static {v1, v4, v3, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v3, v3, v0

    if-eq v3, v2, :cond_3

    .line 82
    sget-object v2, Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "Could not link program: "

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 83
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 84
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 87
    :goto_0
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 88
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const-string p0, "glDeleteShader"

    .line 89
    invoke-static {p0}, Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;->checkGlError(Ljava/lang/String;)V

    return v0
.end method

.method public static createTexture()I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 41
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string v0, "glGenTextures"

    .line 42
    invoke-static {v0}, Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;->checkGlError(Ljava/lang/String;)V

    aget v0, v1, v2

    const/16 v1, 0xde1

    .line 44
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glBindTexture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;->checkGlError(Ljava/lang/String;)V

    const/16 v2, 0x2801

    const/16 v3, 0x2600

    .line 46
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    const/16 v3, 0x2601

    .line 47
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2802

    const v3, 0x812f

    .line 48
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    .line 49
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    return v0
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 4

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

    invoke-static {v1}, Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;->checkGlError(Ljava/lang/String;)V

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
    sget-object p1, Lcom/transsion/common/mediacodec/record/gles/util/GLUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not compile shader "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 109
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v2

    :cond_0
    return v0
.end method
