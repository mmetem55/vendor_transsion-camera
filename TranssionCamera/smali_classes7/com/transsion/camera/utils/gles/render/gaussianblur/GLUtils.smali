.class Lcom/transsion/camera/utils/gles/render/gaussianblur/GLUtils;
.super Ljava/lang/Object;
.source "GLUtils.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/utils/gles/render/gaussianblur/GLUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GLUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkGlError(Ljava/lang/String;)V
    .locals 2

    .line 64
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 66
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

    .line 67
    sget-object v0, Lcom/transsion/camera/utils/gles/render/gaussianblur/GLUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getFbo(II)[I
    .locals 17

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    .line 28
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    aget v2, v2, v3

    const v4, 0x8d40

    .line 31
    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    new-array v5, v1, [I

    .line 34
    invoke-static {v1, v5, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v5, v5, v3

    const/16 v6, 0xde1

    .line 37
    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v7, 0x2802

    const v8, 0x812f

    .line 39
    invoke-static {v6, v7, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v7, 0x2803

    .line 40
    invoke-static {v6, v7, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v7, 0x2800

    const/16 v8, 0x2601

    .line 41
    invoke-static {v6, v7, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v7, 0x2801

    .line 42
    invoke-static {v6, v7, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const v7, 0x8ce0

    .line 44
    invoke-static {v4, v7, v6, v5, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const/16 v8, 0xde1

    const/4 v9, 0x0

    const/16 v10, 0x1908

    const/4 v13, 0x0

    const/16 v14, 0x1908

    const/16 v15, 0x1401

    const/16 v16, 0x0

    move/from16 v11, p0

    move/from16 v12, p1

    .line 47
    invoke-static/range {v8 .. v16}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 50
    invoke-static {v4}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result v7

    const v8, 0x8cd5

    if-eq v7, v8, :cond_0

    .line 51
    sget-object v7, Lcom/transsion/camera/utils/gles/render/gaussianblur/GLUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v8, "glFramebufferTexture2D error"

    invoke-static {v7, v8}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 54
    :cond_0
    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 55
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    aput v2, v0, v3

    aput v5, v0, v1

    return-object v0
.end method
