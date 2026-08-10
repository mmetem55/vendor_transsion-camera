.class public abstract Lcom/transsion/camera/utils/gles/core/Program;
.super Ljava/lang/Object;
.source "Program.java"


# instance fields
.field protected mDrawable2d:Lcom/transsion/camera/utils/gles/core/Drawable2d;

.field protected mFrameBufferShape:Landroid/graphics/Point;

.field protected mFrameBufferTextures:[I

.field protected mFrameBuffers:[I

.field protected mProgramHandle:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/gles/core/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    .line 39
    invoke-virtual {p0}, Lcom/transsion/camera/utils/gles/core/Program;->getDrawable2d()Lcom/transsion/camera/utils/gles/core/Drawable2d;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/utils/gles/core/Program;->mDrawable2d:Lcom/transsion/camera/utils/gles/core/Drawable2d;

    .line 40
    invoke-virtual {p0}, Lcom/transsion/camera/utils/gles/core/Program;->getLocations()V

    return-void
.end method

.method private bindFrameBuffer(IIII)V
    .locals 9

    const/16 p0, 0xde1

    .line 106
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1908

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    const/4 v8, 0x0

    move v3, p3

    move v4, p4

    .line 107
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 p3, 0x2800

    const p4, 0x46180400    # 9729.0f

    .line 108
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p3, 0x2801

    .line 109
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p3, 0x2802

    const p4, 0x47012f00    # 33071.0f

    .line 110
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p3, 0x2803

    .line 111
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const p3, 0x8d40

    .line 112
    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const p2, 0x8ce0

    const/4 p4, 0x0

    .line 113
    invoke-static {p3, p2, p0, p1, p4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 114
    invoke-static {p0, p4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 115
    invoke-static {p3, p4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method private destroyFrameBuffers()V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBufferTextures:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 120
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 121
    iput-object v1, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBufferTextures:[I

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBuffers:[I

    if-eqz v0, :cond_1

    .line 125
    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 126
    iput-object v1, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBuffers:[I

    :cond_1
    return-void
.end method


# virtual methods
.method public drawFrame(I[F)V
    .locals 1

    .line 68
    sget-object v0, Lcom/transsion/camera/utils/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/utils/gles/core/Program;->drawFrame(I[F[F)V

    return-void
.end method

.method public abstract drawFrame(I[F[F)V
.end method

.method protected abstract getDrawable2d()Lcom/transsion/camera/utils/gles/core/Drawable2d;
.end method

.method protected abstract getLocations()V
.end method

.method protected initFrameBufferIfNeed(II)V
    .locals 4

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBufferShape:Landroid/graphics/Point;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ne v3, p1, :cond_1

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 84
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/utils/gles/core/Program;->destroyFrameBuffers()V

    move v0, v2

    .line 88
    :goto_1
    iget-object v3, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBuffers:[I

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBufferTextures:[I

    if-nez v3, :cond_3

    .line 89
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/utils/gles/core/Program;->destroyFrameBuffers()V

    move v0, v2

    :cond_3
    if-eqz v0, :cond_5

    new-array v0, v2, [I

    .line 93
    iput-object v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBuffers:[I

    new-array v3, v2, [I

    .line 94
    iput-object v3, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBufferTextures:[I

    .line 95
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBufferTextures:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    :goto_2
    if-ge v1, v2, :cond_4

    .line 99
    iget-object v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBufferTextures:[I

    aget v0, v0, v1

    iget-object v3, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBuffers:[I

    aget v3, v3, v1

    invoke-direct {p0, v0, v3, p1, p2}, Lcom/transsion/camera/utils/gles/core/Program;->bindFrameBuffer(IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 101
    :cond_4
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mFrameBufferShape:Landroid/graphics/Point;

    :cond_5
    return-void
.end method

.method public release()V
    .locals 1

    .line 137
    invoke-direct {p0}, Lcom/transsion/camera/utils/gles/core/Program;->destroyFrameBuffers()V

    .line 138
    iget v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lcom/transsion/camera/utils/gles/core/Program;->mProgramHandle:I

    return-void
.end method
