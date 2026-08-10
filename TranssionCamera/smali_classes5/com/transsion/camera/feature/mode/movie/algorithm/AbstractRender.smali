.class public abstract Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;
.super Ljava/lang/Object;
.source "AbstractRender.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender$My2DTexture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TEXTURE_NUM:I = 0x3

.field private static final TEXTURE_PAIR:I = 0x2


# instance fields
.field private mConvertProgramID:I

.field private mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

.field private mDrawTextureBuffer:Ljava/nio/FloatBuffer;

.field private mFrameBuffers:[I

.field private mGLCubeBuffer:Ljava/nio/FloatBuffer;

.field private mTextureBuffer:Ljava/nio/FloatBuffer;

.field private final mTextureId:[I

.field private final mTextures:[Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender$My2DTexture;

.field private m_drawTextureProgramID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mConvertProgramID:I

    .line 17
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->m_drawTextureProgramID:I

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mFrameBuffers:[I

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender$My2DTexture;

    .line 52
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mTextures:[Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender$My2DTexture;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 53
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mTextureId:[I

    return-void
.end method

.method static synthetic access$000(III)V
    .locals 0

    .line 12
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->initTextureParameter(III)V

    return-void
.end method

.method static synthetic access$100(III)V
    .locals 0

    .line 12
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->updateTextureSize(III)V

    return-void
.end method

.method private destroyConvertProgram()V
    .locals 1

    .line 127
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mConvertProgramID:I

    if-lez v0, :cond_0

    .line 128
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_0
    const/4 v0, -0x1

    .line 130
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mConvertProgramID:I

    return-void
.end method

.method private destroyDrawTextureProgram()V
    .locals 1

    .line 134
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->m_drawTextureProgramID:I

    if-lez v0, :cond_0

    .line 135
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_0
    const/4 v0, -0x1

    .line 137
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->m_drawTextureProgramID:I

    return-void
.end method

.method private destroyFrameBuffer()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mFrameBuffers:[I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    :cond_0
    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mFrameBuffers:[I

    return-void
.end method

.method private destroyTexture()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mTextures:[Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender$My2DTexture;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 114
    :cond_0
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender$My2DTexture;->access$500(Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender$My2DTexture;)V

    .line 115
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mTextures:[Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender$My2DTexture;

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

    const/16 p0, 0x2800

    const p1, 0x46180400    # 9729.0f

    .line 89
    invoke-static {v0, p0, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p0, 0x2801

    .line 90
    invoke-static {v0, p0, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p0, 0x2802

    const p1, 0x47012f00    # 33071.0f

    .line 91
    invoke-static {v0, p0, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p0, 0x2803

    .line 92
    invoke-static {v0, p0, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    return-void
.end method

.method private loadConvertTextureProgram()V
    .locals 4

    .line 192
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mConvertProgramID:I

    if-gtz v0, :cond_0

    .line 193
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/algorithm/RenderUtil;->loadProgramForSurfaceTexture()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mConvertProgramID:I

    .line 195
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/RenderProgramAttribute;->CUBE:[F

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 196
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 197
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    .line 198
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 200
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/RenderProgramAttribute;->TEXTURE_NO_ROTATION:[F

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 201
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 202
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 203
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 204
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method private loadDrawTextureProgram()V
    .locals 3

    .line 240
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->m_drawTextureProgramID:I

    if-gtz v0, :cond_0

    .line 241
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/algorithm/RenderUtil;->loadProgramForTexture()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->m_drawTextureProgramID:I

    .line 242
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/RenderProgramAttribute;->CUBE:[F

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 243
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 244
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    .line 245
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 246
    sget-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/RenderProgramAttribute;->TEXTURE_NO_ROTATION:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 247
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mDrawTextureBuffer:Ljava/nio/FloatBuffer;

    .line 249
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 251
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mDrawTextureBuffer:Ljava/nio/FloatBuffer;

    sget-object v0, Lcom/transsion/camera/feature/mode/movie/algorithm/RenderProgramAttribute;->TEXTURE_ROTATED_90:[F

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

    .line 267
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    neg-float p2, p4

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 268
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 269
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 270
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 271
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 272
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 p2, 0x5

    neg-float p3, p3

    invoke-virtual {p1, p2, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 273
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 p2, 0x6

    invoke-virtual {p1, p2, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 274
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 275
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private static updateTextureSize(III)V
    .locals 10

    const/16 v0, 0xde1

    .line 96
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

    .line 97
    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->destroyTexture()V

    .line 104
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->destroyFrameBuffer()V

    .line 105
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->destroyConvertProgram()V

    .line 106
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->destroyDrawTextureProgram()V

    return-void
.end method

.method public drawTexture(IIIII)V
    .locals 6

    .line 210
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->loadDrawTextureProgram()V

    int-to-float p2, p2

    .line 212
    invoke-direct {p0, p2, p3, p2, p3}, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->updateDrawGLCubeBuffer(FIFI)V

    .line 214
    iget p2, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->m_drawTextureProgramID:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 216
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 217
    iget p2, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->m_drawTextureProgramID:I

    const-string p4, "position"

    invoke-static {p2, p4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p2

    .line 218
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v0, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 219
    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 221
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mDrawTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p4, p3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 222
    iget p4, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->m_drawTextureProgramID:I

    const-string p5, "inputTextureCoordinate"

    invoke-static {p4, p5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p4

    .line 223
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mDrawTextureBuffer:Ljava/nio/FloatBuffer;

    move v0, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 224
    invoke-static {p4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const p5, 0x84c0

    .line 226
    invoke-static {p5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 227
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 228
    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->m_drawTextureProgramID:I

    const-string p1, "inputImageTexture"

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p0

    .line 229
    invoke-static {p0, p3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 p0, 0x5

    const/4 p1, 0x4

    .line 231
    invoke-static {p0, p3, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 232
    invoke-static {p2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 233
    invoke-static {p4}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 234
    invoke-static {p5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 235
    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 236
    invoke-static {p3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public renderOesTextureTo2DTexture(IIIIIZ)V
    .locals 14

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    .line 142
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->loadConvertTextureProgram()V

    .line 144
    iget v3, v0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mConvertProgramID:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v3, "glUseProgram"

    .line 145
    invoke-static {v3}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 147
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mFrameBuffers:[I

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    new-array v5, v3, [I

    .line 148
    iput-object v5, v0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mFrameBuffers:[I

    .line 149
    invoke-static {v3, v5, v4}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    :cond_0
    const/16 v3, 0xde1

    .line 151
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 152
    iget-object v5, v0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mFrameBuffers:[I

    aget v5, v5, v4

    const v6, 0x8d40

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v5, 0x8ce0

    .line 153
    invoke-static {v6, v5, v3, v2, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 156
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 157
    iget v2, v0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mConvertProgramID:I

    const-string v3, "position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 158
    iget-object v12, v0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    move v7, v2

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 159
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v3, "glEnableVertexAttribArray"

    .line 160
    invoke-static {v3}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    move/from16 v5, p5

    move/from16 v7, p6

    .line 162
    invoke-static {v5, v7, v4}, Lcom/transsion/camera/feature/mode/movie/algorithm/RenderProgramAttribute;->getRotation(IZZ)[F

    move-result-object v5

    .line 163
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 164
    iget-object v7, v0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 165
    iget v5, v0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mConvertProgramID:I

    const-string v7, "inputTextureCoordinate"

    invoke-static {v5, v7}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    const/4 v9, 0x2

    const/16 v10, 0x1406

    const/4 v12, 0x0

    .line 166
    iget-object v13, v0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    move v8, v5

    invoke-static/range {v8 .. v13}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 167
    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 168
    invoke-static {v3}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/4 v3, -0x1

    const-string v7, "glBindTexture"

    const v8, 0x8d65

    const v9, 0x84c0

    if-eq v1, v3, :cond_1

    .line 171
    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 172
    invoke-static {v8, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 173
    iget v0, v0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mConvertProgramID:I

    const-string v1, "inputImageTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 174
    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 175
    invoke-static {v7}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 178
    :cond_1
    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    move/from16 v0, p3

    move/from16 v1, p4

    .line 179
    invoke-static {v4, v4, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 180
    invoke-static {v0, v4, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 182
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 183
    invoke-static {v5}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 184
    invoke-static {v8, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 185
    invoke-static {v7}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 187
    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 188
    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public requestTexturePair(II)[I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_3

    .line 59
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mTextures:[Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender$My2DTexture;

    aget-object v3, v2, v0

    if-nez v3, :cond_0

    .line 60
    new-instance v3, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender$My2DTexture;

    invoke-direct {v3, p1, p2}, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender$My2DTexture;-><init>(II)V

    aput-object v3, v2, v0

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mTextures:[Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender$My2DTexture;

    aget-object v2, v2, v0

    invoke-static {v2, p1, p2}, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender$My2DTexture;->access$200(Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender$My2DTexture;II)V

    .line 63
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mTextures:[Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender$My2DTexture;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender$My2DTexture;->access$300(Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender$My2DTexture;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    goto :goto_2

    .line 69
    :cond_2
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mTextureId:[I

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mTextures:[Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender$My2DTexture;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender$My2DTexture;->access$400(Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender$My2DTexture;)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mTextureId:[I

    return-object p0
.end method

.method public updateVideoEncodeTexture(I)V
    .locals 5

    .line 77
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender;->mTextures:[Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender$My2DTexture;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    if-nez v3, :cond_0

    goto :goto_2

    .line 81
    :cond_0
    invoke-static {v3}, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender$My2DTexture;->access$400(Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender$My2DTexture;)I

    move-result v4

    if-ne v4, p1, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    invoke-static {v3, v4}, Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender$My2DTexture;->access$302(Lcom/transsion/camera/feature/mode/movie/algorithm/AbstractRender$My2DTexture;Z)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
