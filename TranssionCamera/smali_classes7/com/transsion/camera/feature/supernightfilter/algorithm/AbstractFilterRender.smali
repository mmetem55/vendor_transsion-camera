.class public abstract Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;
.super Ljava/lang/Object;
.source "AbstractFilterRender.java"

# interfaces
.implements Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/feature/supernightfilter/algorithm/IFilterRender<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TEXTURE_NUM:I = 0x2

.field private static final TEXTURE_PAIR:I = 0x2


# instance fields
.field private mConvertProgramID:I

.field private mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

.field private mDrawTextureBuffer:Ljava/nio/FloatBuffer;

.field private mFrameBuffers:[I

.field private mGLCubeBuffer:Ljava/nio/FloatBuffer;

.field private mTextureBuffer:Ljava/nio/FloatBuffer;

.field private final mTextureId:[I

.field private final mTextures:[Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;

.field private m_drawTextureProgramID:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mConvertProgramID:I

    .line 17
    iput v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->m_drawTextureProgramID:I

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mFrameBuffers:[I

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;

    .line 52
    iput-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mTextures:[Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;

    new-array v0, v0, [I

    .line 53
    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mTextureId:[I

    return-void
.end method

.method static synthetic access$000(III)V
    .locals 0

    .line 12
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->initTextureParameter(III)V

    return-void
.end method

.method static synthetic access$100(III)V
    .locals 0

    .line 12
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->updateTextureSize(III)V

    return-void
.end method

.method private destroyConvertProgram()V
    .locals 1

    .line 117
    iget v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mConvertProgramID:I

    if-lez v0, :cond_0

    .line 118
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_0
    const/4 v0, -0x1

    .line 120
    iput v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mConvertProgramID:I

    return-void
.end method

.method private destroyDrawTextureProgram()V
    .locals 1

    .line 124
    iget v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->m_drawTextureProgramID:I

    if-lez v0, :cond_0

    .line 125
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_0
    const/4 v0, -0x1

    .line 127
    iput v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->m_drawTextureProgramID:I

    return-void
.end method

.method private destroyFrameBuffer()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mFrameBuffers:[I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    :cond_0
    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mFrameBuffers:[I

    return-void
.end method

.method private destroyTexture()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mTextures:[Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 104
    :cond_0
    invoke-static {v1}, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->access$500(Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;)V

    .line 105
    iget-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mTextures:[Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static initTextureParameter(III)V
    .locals 10

    const/16 v0, 0xde1

    .line 76
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    const/4 v9, 0x0

    move v4, p0

    move v5, p1

    .line 77
    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 p0, 0x2800

    const p1, 0x46180400    # 9729.0f

    .line 79
    invoke-static {v0, p0, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p0, 0x2801

    .line 80
    invoke-static {v0, p0, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p0, 0x2802

    const p1, 0x47012f00    # 33071.0f

    .line 81
    invoke-static {v0, p0, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p0, 0x2803

    .line 82
    invoke-static {v0, p0, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    return-void
.end method

.method private loadConvertTextureProgram()V
    .locals 4

    .line 182
    iget v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mConvertProgramID:I

    if-gtz v0, :cond_0

    .line 183
    invoke-static {}, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderUtil;->loadProgramForSurfaceTexture()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mConvertProgramID:I

    .line 185
    sget-object v0, Lcom/transsion/camera/feature/supernightfilter/algorithm/RenderProgramAttribute;->CUBE:[F

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 186
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    .line 188
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 190
    sget-object v0, Lcom/transsion/camera/feature/supernightfilter/algorithm/RenderProgramAttribute;->TEXTURE_NO_ROTATION:[F

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 191
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 192
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 193
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 194
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method private loadDrawTextureProgram()V
    .locals 3

    .line 230
    iget v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->m_drawTextureProgramID:I

    if-gtz v0, :cond_0

    .line 231
    invoke-static {}, Lcom/transsion/camera/feature/supernightfilter/algorithm/FilterRenderUtil;->loadProgramForTexture()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->m_drawTextureProgramID:I

    .line 232
    sget-object v0, Lcom/transsion/camera/feature/supernightfilter/algorithm/RenderProgramAttribute;->CUBE:[F

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 233
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 234
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    .line 235
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 236
    sget-object v0, Lcom/transsion/camera/feature/supernightfilter/algorithm/RenderProgramAttribute;->TEXTURE_NO_ROTATION:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 237
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mDrawTextureBuffer:Ljava/nio/FloatBuffer;

    .line 239
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 241
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mDrawTextureBuffer:Ljava/nio/FloatBuffer;

    sget-object v0, Lcom/transsion/camera/feature/supernightfilter/algorithm/RenderProgramAttribute;->TEXTURE_ROTATED_90:[F

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method private updateDrawGLCubeBuffer(FIFI)V
    .locals 2

    int-to-float p2, p2

    div-float/2addr p1, p2

    int-to-float p2, p4

    div-float/2addr p3, p2

    cmpl-float p2, p1, p3

    const/high16 p4, 0x3f800000    # 1.0f

    if-lez p2, :cond_0

    div-float/2addr p1, p3

    move p3, p4

    move p4, p1

    goto :goto_0

    :cond_0
    div-float/2addr p3, p1

    .line 257
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    neg-float p2, p4

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 258
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 259
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 260
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 261
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 262
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 p2, 0x5

    neg-float p3, p3

    invoke-virtual {p1, p2, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 263
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 p2, 0x6

    invoke-virtual {p1, p2, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 264
    iget-object p1, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 265
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private static updateTextureSize(III)V
    .locals 10

    const/16 v0, 0xde1

    .line 86
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    const/4 v9, 0x0

    move v4, p0

    move v5, p1

    .line 87
    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->destroyTexture()V

    .line 94
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->destroyFrameBuffer()V

    .line 95
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->destroyConvertProgram()V

    .line 96
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->destroyDrawTextureProgram()V

    return-void
.end method

.method public drawTexture(IIIII)V
    .locals 6

    .line 200
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->loadDrawTextureProgram()V

    int-to-float p2, p2

    .line 202
    invoke-direct {p0, p2, p3, p2, p3}, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->updateDrawGLCubeBuffer(FIFI)V

    .line 204
    iget p2, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->m_drawTextureProgramID:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 206
    iget-object p2, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 207
    iget p2, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->m_drawTextureProgramID:I

    const-string p4, "position"

    invoke-static {p2, p4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p2

    .line 208
    iget-object v5, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v0, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 209
    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 211
    iget-object p4, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mDrawTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p4, p3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 212
    iget p4, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->m_drawTextureProgramID:I

    const-string p5, "inputTextureCoordinate"

    invoke-static {p4, p5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p4

    .line 213
    iget-object v5, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mDrawTextureBuffer:Ljava/nio/FloatBuffer;

    move v0, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 214
    invoke-static {p4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const p5, 0x84c0

    .line 216
    invoke-static {p5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 217
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 218
    iget p0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->m_drawTextureProgramID:I

    const-string p1, "inputImageTexture"

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p0

    .line 219
    invoke-static {p0, p3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 p0, 0x5

    const/4 p1, 0x4

    .line 221
    invoke-static {p0, p3, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 222
    invoke-static {p2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 223
    invoke-static {p4}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 224
    invoke-static {p5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 225
    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 226
    invoke-static {p3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public renderOesTextureTo2DTexture(IIIIIZ)V
    .locals 14

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    .line 132
    invoke-direct {p0}, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->loadConvertTextureProgram()V

    .line 134
    iget v3, v0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mConvertProgramID:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v3, "glUseProgram"

    .line 135
    invoke-static {v3}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 137
    iget-object v3, v0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mFrameBuffers:[I

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    new-array v5, v3, [I

    .line 138
    iput-object v5, v0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mFrameBuffers:[I

    .line 139
    invoke-static {v3, v5, v4}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    :cond_0
    const/16 v3, 0xde1

    .line 141
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 142
    iget-object v5, v0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mFrameBuffers:[I

    aget v5, v5, v4

    const v6, 0x8d40

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v5, 0x8ce0

    .line 143
    invoke-static {v6, v5, v3, v2, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 146
    iget-object v2, v0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 147
    iget v2, v0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mConvertProgramID:I

    const-string v3, "position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 148
    iget-object v12, v0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    move v7, v2

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 149
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v3, "glEnableVertexAttribArray"

    .line 150
    invoke-static {v3}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    move/from16 v5, p5

    move/from16 v7, p6

    .line 152
    invoke-static {v5, v7, v4}, Lcom/transsion/camera/feature/supernightfilter/algorithm/RenderProgramAttribute;->getRotation(IZZ)[F

    move-result-object v5

    .line 153
    iget-object v7, v0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 154
    iget-object v7, v0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 155
    iget v5, v0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mConvertProgramID:I

    const-string v7, "inputTextureCoordinate"

    invoke-static {v5, v7}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    const/4 v9, 0x2

    const/16 v10, 0x1406

    const/4 v12, 0x0

    .line 156
    iget-object v13, v0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    move v8, v5

    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 157
    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 158
    invoke-static {v3}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/4 v3, -0x1

    const-string v7, "glBindTexture"

    const v8, 0x8d65

    const v9, 0x84c0

    if-eq v1, v3, :cond_1

    .line 161
    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 162
    invoke-static {v8, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 163
    iget v0, v0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mConvertProgramID:I

    const-string v1, "inputImageTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 164
    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 165
    invoke-static {v7}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 168
    :cond_1
    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    move/from16 v0, p3

    move/from16 v1, p4

    .line 169
    invoke-static {v4, v4, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 170
    invoke-static {v0, v4, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 172
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 173
    invoke-static {v5}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 174
    invoke-static {v8, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 175
    invoke-static {v7}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 177
    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 178
    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public requestTexturePair(II)[I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_3

    .line 59
    iget-object v3, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mTextures:[Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;

    aget-object v4, v3, v0

    if-nez v4, :cond_0

    .line 60
    new-instance v4, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;

    invoke-direct {v4, p1, p2}, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;-><init>(II)V

    aput-object v4, v3, v0

    .line 62
    :cond_0
    iget-object v3, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mTextures:[Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;

    aget-object v3, v3, v0

    invoke-static {v3, p1, p2}, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->access$200(Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;II)V

    .line 63
    iget-object v3, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mTextures:[Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->access$300(Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    if-lt v1, v2, :cond_2

    goto :goto_2

    .line 69
    :cond_2
    iget-object v2, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mTextureId:[I

    iget-object v3, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mTextures:[Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;->access$400(Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender$My2DTexture;)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/feature/supernightfilter/algorithm/AbstractFilterRender;->mTextureId:[I

    return-object p0
.end method
