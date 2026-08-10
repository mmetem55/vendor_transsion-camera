.class public Lcom/bytedance/labcv/core/util/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/labcv/core/util/ImageUtil$Transition;
    }
.end annotation


# instance fields
.field protected FRAME_BUFFER_NUM:I

.field protected mFrameBufferShape:Landroid/graphics/Point;

.field protected mFrameBufferTextures:[I

.field protected mFrameBuffers:[I

.field private mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

.field private mYUVProgram:Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->FRAME_BUFFER_NUM:I

    return-void
.end method

.method private bindFrameBuffer(IIII)V
    .locals 9

    const/16 p0, 0xde1

    .line 146
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

    .line 147
    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 p3, 0x2800

    const p4, 0x46180400    # 9729.0f

    .line 149
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p3, 0x2801

    .line 151
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p3, 0x2802

    const p4, 0x47012f00    # 33071.0f

    .line 153
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p3, 0x2803

    .line 155
    invoke-static {p0, p3, p4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const p3, 0x8d40

    .line 158
    invoke-static {p3, p2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const p2, 0x8ce0

    const/4 p4, 0x0

    .line 159
    invoke-static {p3, p2, p0, p1, p4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 162
    invoke-static {p0, p4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 163
    invoke-static {p3, p4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method private create2DTexture(Ljava/nio/ByteBuffer;III)I
    .locals 10

    const/4 p0, 0x1

    new-array v0, p0, [I

    const/4 v1, 0x0

    .line 487
    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget p0, v0, v1

    const-string v0, "glGenTextures"

    .line 489
    invoke-static {v0}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/16 v0, 0xde1

    .line 492
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2801

    const/16 v2, 0x2601

    .line 496
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    .line 498
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const-string v0, "loadImageTexture"

    .line 500
    invoke-static {v0}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x1401

    move v3, p4

    move v4, p2

    move v5, p3

    move v7, p4

    move-object v9, p1

    .line 503
    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 505
    invoke-static {v0}, Lcom/bytedance/labcv/core/opengl/GlUtil;->checkGlError(Ljava/lang/String;)V

    return p0
.end method

.method private destroyFrameBuffers()V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBufferTextures:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 124
    iget v3, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->FRAME_BUFFER_NUM:I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 125
    iput-object v1, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBufferTextures:[I

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBuffers:[I

    if-eqz v0, :cond_1

    .line 128
    iget v3, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->FRAME_BUFFER_NUM:I

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 129
    iput-object v1, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBuffers:[I

    :cond_1
    return-void
.end method

.method private initFrameBufferIfNeed(II)V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBufferShape:Landroid/graphics/Point;

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
    iget-object v3, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBuffers:[I

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBufferTextures:[I

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :cond_3
    :goto_2
    if-eqz v1, :cond_5

    .line 101
    invoke-direct {p0}, Lcom/bytedance/labcv/core/util/ImageUtil;->destroyFrameBuffers()V

    .line 102
    iget v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->FRAME_BUFFER_NUM:I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBuffers:[I

    .line 103
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBufferTextures:[I

    .line 104
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 105
    iget v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->FRAME_BUFFER_NUM:I

    iget-object v1, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBufferTextures:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 106
    :goto_3
    iget v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->FRAME_BUFFER_NUM:I

    if-ge v2, v0, :cond_4

    .line 107
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBufferTextures:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBuffers:[I

    aget v1, v1, v2

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/bytedance/labcv/core/util/ImageUtil;->bindFrameBuffer(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 109
    :cond_4
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBufferShape:Landroid/graphics/Point;

    :cond_5
    return-void
.end method


# virtual methods
.method public captureRenderResult(II)Ljava/nio/ByteBuffer;
    .locals 13

    .line 203
    iget-object p0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBufferTextures:[I

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 204
    aget v2, p0, v1

    if-eqz p0, :cond_3

    const/4 p0, -0x1

    if-ne v2, p0, :cond_1

    goto :goto_0

    :cond_1
    mul-int p0, p1, p2

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    mul-int/lit8 p0, p0, 0x4

    .line 211
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 213
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v0, 0x1

    new-array v10, v0, [I

    .line 215
    invoke-static {v0, v10, v1}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    const/16 v11, 0xde1

    .line 216
    invoke-static {v11, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0x2800

    const v4, 0x46180400    # 9729.0f

    .line 217
    invoke-static {v11, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2801

    .line 219
    invoke-static {v11, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2802

    const v4, 0x47012f00    # 33071.0f

    .line 221
    invoke-static {v11, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2803

    .line 223
    invoke-static {v11, v3, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    aget v3, v10, v1

    const v12, 0x8d40

    .line 226
    invoke-static {v12, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v3, 0x8ce0

    .line 227
    invoke-static {v12, v3, v11, v2, v1}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    move v5, p1

    move v6, p2

    move-object v9, p0

    .line 229
    invoke-static/range {v3 .. v9}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 232
    invoke-static {v11, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 233
    invoke-static {v12, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 235
    invoke-static {v0, v10, v1}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public captureRenderResult(III)Ljava/nio/ByteBuffer;
    .locals 12

    const/4 p0, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    mul-int v0, p2, p3

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    mul-int/lit8 v0, v0, 0x4

    .line 263
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v8, 0x1

    new-array v9, v8, [I

    .line 267
    invoke-static {v8, v9, v0}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    const/16 v10, 0xde1

    .line 268
    invoke-static {v10, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    .line 269
    invoke-static {v10, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2801

    .line 271
    invoke-static {v10, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    const v2, 0x47012f00    # 33071.0f

    .line 273
    invoke-static {v10, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2803

    .line 275
    invoke-static {v10, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    aget v1, v9, v0

    const v11, 0x8d40

    .line 278
    invoke-static {v11, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v1, 0x8ce0

    .line 279
    invoke-static {v11, v1, v10, p1, v0}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v3, p2

    move v4, p3

    move-object v7, p0

    .line 281
    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 284
    invoke-static {v10, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 285
    invoke-static {v11, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 287
    invoke-static {v8, v9, v0}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    return-object p0
.end method

.method public copyTexture(IIII)Z
    .locals 15

    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    mul-int v2, p3, p4

    if-nez v2, :cond_1

    return v3

    :cond_1
    const/4 v2, 0x1

    new-array v12, v2, [I

    .line 319
    invoke-static {v2, v12, v3}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    aget v4, v12, v3

    const v13, 0x8d40

    .line 320
    invoke-static {v13, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v4, 0x8ce0

    const/16 v14, 0xde1

    .line 321
    invoke-static {v13, v4, v14, v0, v3}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 324
    invoke-static {v14, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v4, 0xde1

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move/from16 v9, p3

    move/from16 v10, p4

    .line 325
    invoke-static/range {v4 .. v11}, Landroid/opengl/GLES20;->glCopyTexImage2D(IIIIIIII)V

    .line 326
    invoke-static {v14, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 327
    invoke-static {v13, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 329
    invoke-static {v2, v12, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 331
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    return v3

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v3
.end method

.method public drawFrameOnScreen(ILcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;II[F)V
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

    if-nez v0, :cond_0

    .line 583
    new-instance v0, Lcom/bytedance/labcv/core/opengl/ProgramManager;

    invoke-direct {v0}, Lcom/bytedance/labcv/core/opengl/ProgramManager;-><init>()V

    iput-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

    .line 586
    :cond_0
    iget-object p0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

    invoke-virtual {p0, p2}, Lcom/bytedance/labcv/core/opengl/ProgramManager;->getProgram(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;)Lcom/bytedance/labcv/core/opengl/Program;

    move-result-object p0

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/bytedance/labcv/core/opengl/Program;->drawFrameOnScreen(III[F)V

    return-void
.end method

.method public getOutputTexture()I
    .locals 1

    .line 74
    iget-object p0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBufferTextures:[I

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 75
    aget p0, p0, v0

    return p0
.end method

.method public prepareTexture(II)I
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/bytedance/labcv/core/util/ImageUtil;->initFrameBufferIfNeed(II)V

    .line 59
    iget-object p0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mFrameBufferTextures:[I

    const/4 p1, 0x0

    aget p0, p0, p1

    return p0
.end method

.method public release()V
    .locals 1

    .line 176
    invoke-direct {p0}, Lcom/bytedance/labcv/core/util/ImageUtil;->destroyFrameBuffers()V

    .line 177
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Lcom/bytedance/labcv/core/opengl/ProgramManager;->release()V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mYUVProgram:Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {v0}, Lcom/bytedance/labcv/core/opengl/Program;->release()V

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mYUVProgram:Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;

    :cond_1
    return-void
.end method

.method public transferBufferToBitmap(Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;II)Landroid/graphics/Bitmap;
    .locals 0

    .line 555
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 p2, 0x0

    .line 557
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 558
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 559
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public transferBufferToBuffer(Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;II)Ljava/nio/ByteBuffer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public transferBufferToTexture(Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;II)I
    .locals 2

    .line 470
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->RGBA8888:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

    const/4 v1, -0x1

    if-eq p2, v0, :cond_0

    const-string p0, "inputFormat support RGBA8888 only"

    .line 471
    invoke-static {p0}, Lcom/bytedance/labcv/core/util/LogUtils;->e(Ljava/lang/String;)V

    return v1

    .line 475
    :cond_0
    sget-object p2, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;->Texure2D:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;

    if-eq p3, p2, :cond_1

    const-string p0, "outputFormat support Texure2D only"

    .line 476
    invoke-static {p0}, Lcom/bytedance/labcv/core/util/LogUtils;->e(Ljava/lang/String;)V

    return v1

    :cond_1
    const/16 p2, 0x1908

    .line 480
    invoke-direct {p0, p1, p4, p5, p2}, Lcom/bytedance/labcv/core/util/ImageUtil;->create2DTexture(Ljava/nio/ByteBuffer;III)I

    move-result p0

    return p0
.end method

.method public transferTextureToBitmap(ILcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;II)Landroid/graphics/Bitmap;
    .locals 8

    .line 439
    sget-object v7, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->RGBA8888:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v7

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/labcv/core/util/ImageUtil;->transferTextureToBuffer(ILcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;IIF)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 444
    :cond_0
    invoke-virtual {p0, p1, v7, p3, p4}, Lcom/bytedance/labcv/core/util/ImageUtil;->transferBufferToBitmap(Ljava/nio/ByteBuffer;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public transferTextureToBuffer(ILcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;IIF)Ljava/nio/ByteBuffer;
    .locals 1

    .line 427
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;->RGBA8888:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$PixlFormat;

    if-eq p3, v0, :cond_0

    const-string p0, "the outputFormat is not supported,please use RGBA8888 as output texture format"

    .line 428
    invoke-static {p0}, Lcom/bytedance/labcv/core/util/LogUtils;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 431
    :cond_0
    iget-object p3, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

    if-nez p3, :cond_1

    .line 432
    new-instance p3, Lcom/bytedance/labcv/core/opengl/ProgramManager;

    invoke-direct {p3}, Lcom/bytedance/labcv/core/opengl/ProgramManager;-><init>()V

    iput-object p3, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

    .line 434
    :cond_1
    iget-object p0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

    invoke-virtual {p0, p2}, Lcom/bytedance/labcv/core/opengl/ProgramManager;->getProgram(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;)Lcom/bytedance/labcv/core/opengl/Program;

    move-result-object p0

    int-to-float p2, p4

    mul-float/2addr p2, p6

    float-to-int p2, p2

    int-to-float p3, p5

    mul-float/2addr p3, p6

    float-to-int p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/labcv/core/opengl/Program;->readBuffer(III)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public transferTextureToTexture(ILcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;IILcom/bytedance/labcv/core/util/ImageUtil$Transition;)I
    .locals 1

    .line 364
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;->Texure2D:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;

    if-eq p3, v0, :cond_0

    const-string p0, "the inputTexture is not supported,please use Texure2D as output texture format"

    .line 365
    invoke-static {p0}, Lcom/bytedance/labcv/core/util/LogUtils;->e(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 368
    :cond_0
    iget-object p3, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

    if-nez p3, :cond_1

    .line 369
    new-instance p3, Lcom/bytedance/labcv/core/opengl/ProgramManager;

    invoke-direct {p3}, Lcom/bytedance/labcv/core/opengl/ProgramManager;-><init>()V

    iput-object p3, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

    .line 372
    :cond_1
    invoke-virtual {p6}, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->getAngle()I

    move-result p3

    rem-int/lit16 p3, p3, 0xb4

    const/16 v0, 0x5a

    if-ne p3, v0, :cond_2

    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    .line 373
    :goto_0
    iget-object p0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

    invoke-virtual {p0, p2}, Lcom/bytedance/labcv/core/opengl/ProgramManager;->getProgram(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;)Lcom/bytedance/labcv/core/opengl/Program;

    move-result-object p0

    if-eqz p3, :cond_3

    move p2, p5

    goto :goto_1

    :cond_3
    move p2, p4

    :goto_1
    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    move p4, p5

    :goto_2
    invoke-virtual {p6}, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->getMatrix()[F

    move-result-object p3

    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/bytedance/labcv/core/opengl/Program;->drawFrameOffScreen(III[F)I

    move-result p0

    return p0
.end method

.method public transferTextureToTexture(IILcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;IILcom/bytedance/labcv/core/util/ImageUtil$Transition;)Z
    .locals 8

    .line 379
    sget-object v0, Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;->Texure2D:Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;

    const/4 v1, 0x0

    if-eq p4, v0, :cond_0

    const-string p0, "the inputTexture is not supported,please use Texure2D as output texture format"

    .line 380
    invoke-static {p0}, Lcom/bytedance/labcv/core/util/LogUtils;->e(Ljava/lang/String;)V

    return v1

    .line 383
    :cond_0
    iget-object p4, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

    if-nez p4, :cond_1

    .line 384
    new-instance p4, Lcom/bytedance/labcv/core/opengl/ProgramManager;

    invoke-direct {p4}, Lcom/bytedance/labcv/core/opengl/ProgramManager;-><init>()V

    iput-object p4, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

    .line 387
    :cond_1
    invoke-virtual {p7}, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->getAngle()I

    move-result p4

    rem-int/lit16 p4, p4, 0xb4

    const/16 v0, 0x5a

    if-ne p4, v0, :cond_2

    const/4 v1, 0x1

    .line 388
    :cond_2
    iget-object p0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mProgramManager:Lcom/bytedance/labcv/core/opengl/ProgramManager;

    invoke-virtual {p0, p3}, Lcom/bytedance/labcv/core/opengl/ProgramManager;->getProgram(Lcom/bytedance/labcv/effectsdk/BytedEffectConstants$TextureFormat;)Lcom/bytedance/labcv/core/opengl/Program;

    move-result-object v2

    if-eqz v1, :cond_3

    move v5, p6

    goto :goto_0

    :cond_3
    move v5, p5

    :goto_0
    if-eqz v1, :cond_4

    move v6, p5

    goto :goto_1

    :cond_4
    move v6, p6

    :goto_1
    invoke-virtual {p7}, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->getMatrix()[F

    move-result-object v7

    move v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/labcv/core/opengl/Program;->drawFrameOffScreen(IIII[F)Z

    move-result p0

    return p0
.end method

.method public transferYUVToTexture(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IILcom/bytedance/labcv/core/util/ImageUtil$Transition;)I
    .locals 8

    .line 395
    iget-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mYUVProgram:Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;

    invoke-direct {v0}, Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;-><init>()V

    iput-object v0, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mYUVProgram:Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;

    :cond_0
    const/16 v0, 0x1906

    .line 399
    invoke-static {p1, p4, p5, v0}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createImageTexture(Ljava/nio/ByteBuffer;III)I

    move-result v2

    .line 400
    div-int/lit8 p1, p4, 0x2

    div-int/lit8 v0, p5, 0x2

    const/16 v1, 0x190a

    invoke-static {p2, p1, v0, v1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createImageTexture(Ljava/nio/ByteBuffer;III)I

    move-result v3

    .line 401
    invoke-static {p3, p1, v0, v1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createImageTexture(Ljava/nio/ByteBuffer;III)I

    move-result v4

    .line 402
    iget-object v1, p0, Lcom/bytedance/labcv/core/util/ImageUtil;->mYUVProgram:Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;

    invoke-virtual {p6}, Lcom/bytedance/labcv/core/util/ImageUtil$Transition;->getMatrix()[F

    move-result-object v7

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/labcv/core/opengl/ProgramTextureYUV;->drawFrameOffScreen(IIIII[F)I

    move-result p0

    return p0
.end method
