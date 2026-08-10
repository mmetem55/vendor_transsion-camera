.class public Lcom/transsion/camera/app/ui/opengl/GLUtils;
.super Ljava/lang/Object;
.source "GLUtils.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/opengl/GLUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/opengl/GLUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 2

    .line 153
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
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

    .line 156
    sget-object v0, Lcom/transsion/camera/app/ui/opengl/GLUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 157
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 2

    .line 166
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 167
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 168
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 p0, 0x0

    .line 170
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static createOESTexture()I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 26
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string v0, "glGenTextures"

    .line 27
    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->checkGlError(Ljava/lang/String;)V

    aget v0, v1, v2

    const v1, 0x8d65

    .line 30
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glBindTexture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->checkGlError(Ljava/lang/String;)V

    const/16 v2, 0x2801

    const/16 v3, 0x2601

    .line 34
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    .line 35
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2802

    const v3, 0x812f

    .line 37
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    .line 38
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    return v0
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const v0, 0x8b31

    .line 84
    invoke-static {v0, p0}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->loadShader(ILjava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const v1, 0x8b30

    .line 88
    invoke-static {v1, p1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->loadShader(ILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 93
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v1

    const-string v2, "glCreateProgram"

    .line 94
    invoke-static {v2}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->checkGlError(Ljava/lang/String;)V

    if-nez v1, :cond_2

    .line 96
    sget-object v2, Lcom/transsion/camera/app/ui/opengl/GLUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "Could not create program"

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 98
    :cond_2
    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string v2, "glAttachShader"

    .line 99
    invoke-static {v2}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->checkGlError(Ljava/lang/String;)V

    .line 100
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 101
    invoke-static {v2}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->checkGlError(Ljava/lang/String;)V

    .line 102
    invoke-static {v1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v2, 0x1

    new-array v3, v2, [I

    const v4, 0x8b82

    .line 104
    invoke-static {v1, v4, v3, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v3, v3, v0

    if-eq v3, v2, :cond_3

    .line 106
    sget-object v2, Lcom/transsion/camera/app/ui/opengl/GLUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "Could not link program: "

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 107
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 111
    :goto_0
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 112
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return v0
.end method

.method public static createTexture()I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 48
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    const-string v0, "glGenTextures"

    .line 49
    invoke-static {v0}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->checkGlError(Ljava/lang/String;)V

    aget v0, v1, v2

    const/16 v1, 0xde1

    .line 52
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glBindTexture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->checkGlError(Ljava/lang/String;)V

    const/16 v2, 0x2801

    const/16 v3, 0x2600

    .line 55
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2800

    const/16 v3, 0x2601

    .line 56
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2802

    const v3, 0x812f

    .line 57
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v2, 0x2803

    .line 58
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    return v0
.end method

.method public static initTextureId(II)I
    .locals 11

    .line 64
    invoke-static {}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->createTexture()I

    move-result v0

    const/16 v1, 0xde1

    .line 65
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    const/4 v10, 0x0

    move v5, p0

    move v6, p1

    .line 66
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return v0
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 4

    .line 122
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "glCreateShader type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/camera/app/ui/opengl/GLUtils;->checkGlError(Ljava/lang/String;)V

    .line 124
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 125
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v1, 0x8b81

    const/4 v2, 0x0

    .line 127
    invoke-static {v0, v1, p1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p1, p1, v2

    if-nez p1, :cond_0

    .line 129
    sget-object p1, Lcom/transsion/camera/app/ui/opengl/GLUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

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

    .line 130
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 131
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v2

    :cond_0
    return v0
.end method

.method public static updateTextureId(III)I
    .locals 10

    const/16 v0, 0xde1

    .line 72
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    const/4 v9, 0x0

    move v4, p1

    move v5, p2

    .line 73
    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return p0
.end method
