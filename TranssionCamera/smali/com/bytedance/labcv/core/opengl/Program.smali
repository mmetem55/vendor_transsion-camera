.class public abstract Lcom/bytedance/labcv/core/opengl/Program;
.super Ljava/lang/Object;
.source "Program.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected FRAME_BUFFER_NUM:I

.field protected mDrawable2d:Lcom/bytedance/labcv/core/opengl/Drawable2d;

.field protected mFrameBufferShape:Landroid/graphics/Point;

.field protected mFrameBufferShapeOut:Landroid/graphics/Point;

.field protected mFrameBufferTextures:[I

.field protected mFrameBuffers:[I

.field protected mFrameBuffersOut:[I

.field protected mProgramHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    sget-object v0, Lcom/bytedance/labcv/core/opengl/GlUtil;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/bytedance/labcv/core/opengl/Program;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 36
    invoke-static {p1, p2}, Lcom/bytedance/labcv/core/opengl/Extensions;->readTextFileFromResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3}, Lcom/bytedance/labcv/core/opengl/Extensions;->readTextFileFromResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/bytedance/labcv/core/opengl/Program;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->FRAME_BUFFER_NUM:I

    .line 30
    invoke-static {p1, p2}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/labcv/core/opengl/Program;->mProgramHandle:I

    .line 31
    invoke-virtual {p0}, Lcom/bytedance/labcv/core/opengl/Program;->getDrawable2d()Lcom/bytedance/labcv/core/opengl/Drawable2d;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/labcv/core/opengl/Program;->mDrawable2d:Lcom/bytedance/labcv/core/opengl/Drawable2d;

    .line 32
    invoke-virtual {p0}, Lcom/bytedance/labcv/core/opengl/Program;->getLocations()V

    return-void
.end method

.method private bindFrameBuffer(IIII)V
    .locals 9

    const/16 p0, 0xde1

    .line 142
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

    .line 143
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 p3, 0x2800

    const p4, 0x46180400    # 9729.0f

    .line 145
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p3, 0x2801

    .line 147
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p3, 0x2802

    const p4, 0x47012f00    # 33071.0f

    .line 149
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p3, 0x2803

    .line 151
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const p3, 0x8d40

    .line 154
    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const p2, 0x8ce0

    const/4 p4, 0x0

    .line 155
    invoke-static {p3, p2, p0, p1, p4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 158
    invoke-static {p0, p4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 159
    invoke-static {p3, p4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method private destroyFrameBuffers()V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBufferTextures:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 113
    iget v3, p0, Lcom/bytedance/labcv/core/opengl/Program;->FRAME_BUFFER_NUM:I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 114
    iput-object v1, p0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBufferTextures:[I

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBuffers:[I

    if-eqz v0, :cond_1

    .line 117
    iget v3, p0, Lcom/bytedance/labcv/core/opengl/Program;->FRAME_BUFFER_NUM:I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 118
    iput-object v1, p0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBuffers:[I

    :cond_1
    return-void
.end method

.method private destroyFrameBuffersOut()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBuffersOut:[I

    if-eqz v0, :cond_0

    .line 124
    iget v1, p0, Lcom/bytedance/labcv/core/opengl/Program;->FRAME_BUFFER_NUM:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBuffersOut:[I

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract drawFrameOffScreen(III[F)I
.end method

.method public abstract drawFrameOffScreen(IIII[F)Z
.end method

.method public abstract drawFrameOnScreen(III[F)V
.end method

.method protected abstract getDrawable2d()Lcom/bytedance/labcv/core/opengl/Drawable2d;
.end method

.method protected abstract getLocations()V
.end method

.method protected initFrameBufferIfNeed(II)V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBufferShape:Landroid/graphics/Point;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ne v3, p1, :cond_1

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 74
    :goto_1
    iget-object v3, p0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBuffers:[I

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBufferTextures:[I

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :cond_3
    :goto_2
    if-eqz v1, :cond_5

    .line 78
    invoke-direct {p0}, Lcom/bytedance/labcv/core/opengl/Program;->destroyFrameBuffers()V

    .line 79
    iget v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->FRAME_BUFFER_NUM:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBuffers:[I

    .line 80
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBufferTextures:[I

    .line 81
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 82
    iget v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->FRAME_BUFFER_NUM:I

    iget-object v1, p0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBufferTextures:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 83
    :goto_3
    iget v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->FRAME_BUFFER_NUM:I

    if-ge v2, v0, :cond_4

    .line 84
    iget-object v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBufferTextures:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBuffers:[I

    aget v1, v1, v2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/bytedance/labcv/core/opengl/Program;->bindFrameBuffer(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 86
    :cond_4
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBufferShape:Landroid/graphics/Point;

    :cond_5
    return-void
.end method

.method protected initFrameBufferWithTexture(III)V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBufferShapeOut:Landroid/graphics/Point;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ne v3, p1, :cond_1

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 97
    :goto_1
    iget-object v3, p0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBuffersOut:[I

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    if-eqz v1, :cond_3

    .line 101
    invoke-direct {p0}, Lcom/bytedance/labcv/core/opengl/Program;->destroyFrameBuffersOut()V

    .line 102
    iget v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->FRAME_BUFFER_NUM:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBuffersOut:[I

    .line 103
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 104
    iget-object v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBuffersOut:[I

    aget v0, v0, v2

    invoke-direct {p0, p3, v0, p1, p2}, Lcom/bytedance/labcv/core/opengl/Program;->bindFrameBuffer(IIII)V

    .line 105
    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object p3, p0, Lcom/bytedance/labcv/core/opengl/Program;->mFrameBufferShapeOut:Landroid/graphics/Point;

    :cond_3
    return-void
.end method

.method public abstract readBuffer(III)Ljava/nio/ByteBuffer;
.end method

.method public release()V
    .locals 1

    .line 169
    invoke-direct {p0}, Lcom/bytedance/labcv/core/opengl/Program;->destroyFrameBuffers()V

    .line 170
    invoke-direct {p0}, Lcom/bytedance/labcv/core/opengl/Program;->destroyFrameBuffersOut()V

    .line 171
    iget v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, -0x1

    .line 172
    iput v0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mProgramHandle:I

    return-void
.end method

.method public updateTexCoordArray([F)V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mDrawable2d:Lcom/bytedance/labcv/core/opengl/Drawable2d;

    invoke-virtual {p0, p1}, Lcom/bytedance/labcv/core/opengl/Drawable2d;->updateTexCoordArray([F)V

    return-void
.end method

.method public updateTexCoordArrayFB([F)V
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mDrawable2d:Lcom/bytedance/labcv/core/opengl/Drawable2d;

    invoke-virtual {p0, p1}, Lcom/bytedance/labcv/core/opengl/Drawable2d;->updateTexCoordArrayFB([F)V

    return-void
.end method

.method public updateVertexArray([F)V
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/bytedance/labcv/core/opengl/Program;->mDrawable2d:Lcom/bytedance/labcv/core/opengl/Drawable2d;

    invoke-virtual {p0, p1}, Lcom/bytedance/labcv/core/opengl/Drawable2d;->updateVertexArray([F)V

    return-void
.end method
