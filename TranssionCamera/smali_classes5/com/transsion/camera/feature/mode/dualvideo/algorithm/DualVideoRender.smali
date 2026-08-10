.class public Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;
.super Ljava/lang/Object;
.source "DualVideoRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender$My2DTexture;
    }
.end annotation


# static fields
.field private static final TEXTURE_NUM:I = 0x2

.field private static final TEXTURE_PAIR:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mConvertProgramID:I

.field private mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

.field private mDrawTextureBuffer:Ljava/nio/FloatBuffer;

.field private mFrameBuffers:[I

.field private mGLCubeBuffer:Ljava/nio/FloatBuffer;

.field private mTextureBuffer:Ljava/nio/FloatBuffer;

.field private final mTextureId:[I

.field private final mTextures:[Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender$My2DTexture;

.field private m_drawTextureProgramID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mConvertProgramID:I

    .line 20
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->m_drawTextureProgramID:I

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mFrameBuffers:[I

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender$My2DTexture;

    .line 57
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mTextures:[Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender$My2DTexture;

    new-array v0, v0, [I

    .line 58
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mTextureId:[I

    .line 61
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(III)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->initTextureParameter(III)V

    return-void
.end method

.method static synthetic access$100(III)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->updateTextureSize(III)V

    return-void
.end method

.method private destroyConvertProgram()V
    .locals 1

    .line 147
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mConvertProgramID:I

    if-lez v0, :cond_0

    .line 148
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_0
    const/4 v0, -0x1

    .line 150
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mConvertProgramID:I

    return-void
.end method

.method private destroyDrawTextureProgram()V
    .locals 1

    .line 154
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->m_drawTextureProgramID:I

    if-lez v0, :cond_0

    .line 155
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :cond_0
    const/4 v0, -0x1

    .line 157
    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->m_drawTextureProgramID:I

    return-void
.end method

.method private destroyFloatBuffer()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 120
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 125
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 130
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mDrawTextureBuffer:Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_3

    .line 134
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 135
    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mDrawTextureBuffer:Ljava/nio/FloatBuffer;

    :cond_3
    return-void
.end method

.method private destroyFrameBuffer()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mFrameBuffers:[I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 141
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    :cond_0
    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mFrameBuffers:[I

    return-void
.end method

.method private destroyTexture()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mTextures:[Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender$My2DTexture;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    invoke-static {v1}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender$My2DTexture;->access$500(Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender$My2DTexture;)V

    .line 113
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mTextures:[Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender$My2DTexture;

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

    .line 84
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

    .line 85
    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 p0, 0x2800

    const p1, 0x46180400    # 9729.0f

    .line 87
    invoke-static {v0, p0, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p0, 0x2801

    .line 88
    invoke-static {v0, p0, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p0, 0x2802

    const p1, 0x47012f00    # 33071.0f

    .line 89
    invoke-static {v0, p0, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p0, 0x2803

    .line 90
    invoke-static {v0, p0, p1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    return-void
.end method

.method private loadConvertTextureProgram()V
    .locals 4

    .line 224
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mConvertProgramID:I

    if-gtz v0, :cond_0

    .line 225
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRenderUtil;->loadProgramForSurfaceTexture()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mConvertProgramID:I

    .line 226
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRenderAttribute;->CUBE:[F

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 227
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 228
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    .line 229
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 231
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRenderAttribute;->TEXTURE_NO_ROTATION:[F

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 232
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 233
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    .line 234
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 235
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method private loadDrawTextureProgram()V
    .locals 3

    .line 274
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->m_drawTextureProgramID:I

    if-gtz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/transsion/camera/utils/CameraUtil;->getP3VideoPreviewSwitch(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 277
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRenderUtil;->loadProgramForVideoP3PreviewTexture()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->m_drawTextureProgramID:I

    goto :goto_0

    .line 279
    :cond_0
    invoke-static {}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRenderUtil;->loadProgramForTexture()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->m_drawTextureProgramID:I

    .line 281
    :goto_0
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRenderAttribute;->CUBE:[F

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 282
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 283
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    .line 284
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 285
    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRenderAttribute;->TEXTURE_NO_ROTATION:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 286
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mDrawTextureBuffer:Ljava/nio/FloatBuffer;

    .line 288
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 290
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mDrawTextureBuffer:Ljava/nio/FloatBuffer;

    sget-object v0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRenderAttribute;->TEXTURE_ROTATED_270:[F

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :cond_1
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

    .line 329
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    neg-float p2, p4

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 330
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 331
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 332
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 333
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 334
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 p2, 0x5

    neg-float p3, p3

    invoke-virtual {p1, p2, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 335
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 p2, 0x6

    invoke-virtual {p1, p2, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 336
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 337
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private updateGLCubeBuffer(FIFI)V
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

    .line 306
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    neg-float p2, p4

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 307
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 308
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 309
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 310
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 311
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 p2, 0x5

    neg-float p3, p3

    invoke-virtual {p1, p2, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 312
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 p2, 0x6

    invoke-virtual {p1, p2, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 313
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 314
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private static updateTextureSize(III)V
    .locals 10

    const/16 v0, 0xde1

    .line 94
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

    .line 95
    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->destroyTexture()V

    .line 101
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->destroyFrameBuffer()V

    .line 102
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->destroyConvertProgram()V

    .line 103
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->destroyDrawTextureProgram()V

    .line 104
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->destroyFloatBuffer()V

    return-void
.end method

.method public drawTexture(IIIII)V
    .locals 6

    .line 241
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->loadDrawTextureProgram()V

    .line 242
    iget v0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->m_drawTextureProgramID:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    int-to-float p2, p2

    int-to-float p4, p4

    .line 246
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->updateDrawGLCubeBuffer(FIFI)V

    .line 248
    iget p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->m_drawTextureProgramID:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 250
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 251
    iget p2, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->m_drawTextureProgramID:I

    const-string p4, "position"

    invoke-static {p2, p4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p2

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 252
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mDrawGLCubeBuffer:Ljava/nio/FloatBuffer;

    move v0, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 253
    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 255
    iget-object p4, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mDrawTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p4, p3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 256
    iget p4, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->m_drawTextureProgramID:I

    const-string p5, "inputTextureCoordinate"

    invoke-static {p4, p5}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p4

    .line 257
    iget-object v5, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mDrawTextureBuffer:Ljava/nio/FloatBuffer;

    move v0, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 258
    invoke-static {p4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const p5, 0x84c0

    .line 260
    invoke-static {p5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 261
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 262
    iget p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->m_drawTextureProgramID:I

    const-string p1, "inputImageTexture"

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p0

    .line 263
    invoke-static {p0, p3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 p0, 0x5

    const/4 p1, 0x4

    .line 265
    invoke-static {p0, p3, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 266
    invoke-static {p2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 267
    invoke-static {p4}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 268
    invoke-static {p5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 269
    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 270
    invoke-static {p3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public renderOesTextureTo2DTexture(ZIIIIIIIIZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    .line 164
    invoke-direct/range {p0 .. p0}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->loadConvertTextureProgram()V

    .line 165
    iget v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mConvertProgramID:I

    if-gtz v3, :cond_0

    return-void

    :cond_0
    move/from16 v3, p4

    int-to-float v3, v3

    move/from16 v4, p8

    int-to-float v5, v4

    move/from16 v6, p5

    move/from16 v7, p9

    .line 169
    invoke-direct {v0, v3, v6, v5, v7}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->updateGLCubeBuffer(FIFI)V

    .line 171
    iget v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mConvertProgramID:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string v3, "glUseProgram"

    .line 172
    invoke-static {v3}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 174
    iget-object v3, v0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mFrameBuffers:[I

    const/4 v5, 0x0

    if-nez v3, :cond_1

    const/4 v3, 0x1

    new-array v6, v3, [I

    .line 175
    iput-object v6, v0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mFrameBuffers:[I

    .line 176
    invoke-static {v3, v6, v5}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    :cond_1
    const/16 v3, 0xde1

    .line 178
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 179
    iget-object v6, v0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mFrameBuffers:[I

    aget v6, v6, v5

    const v8, 0x8d40

    invoke-static {v8, v6}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v6, 0x8ce0

    .line 180
    invoke-static {v8, v6, v3, v2, v5}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    if-eqz p1, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 184
    invoke-static {v3, v3, v3, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v2, 0x4500

    .line 185
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 188
    :cond_2
    iget-object v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 189
    iget v2, v0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mConvertProgramID:I

    const-string v3, "position"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    const/4 v10, 0x2

    const/16 v11, 0x1406

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 190
    iget-object v14, v0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mGLCubeBuffer:Ljava/nio/FloatBuffer;

    move v9, v2

    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 191
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const-string v3, "glEnableVertexAttribArray"

    .line 192
    invoke-static {v3}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/16 v6, 0xb4

    move/from16 v9, p10

    .line 194
    invoke-static {v6, v9, v5}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRenderAttribute;->getRotation(IZZ)[F

    move-result-object v6

    .line 195
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 196
    iget-object v9, v0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 197
    iget v6, v0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mConvertProgramID:I

    const-string v9, "inputTextureCoordinate"

    invoke-static {v6, v9}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v6

    const/4 v11, 0x2

    const/16 v12, 0x1406

    const/4 v14, 0x0

    .line 198
    iget-object v15, v0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mTextureBuffer:Ljava/nio/FloatBuffer;

    move v10, v6

    invoke-static/range {v10 .. v15}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 199
    invoke-static {v6}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 200
    invoke-static {v3}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    const/4 v3, -0x1

    const-string v9, "glBindTexture"

    const v10, 0x8d65

    const v11, 0x84c0

    if-eq v1, v3, :cond_3

    .line 203
    invoke-static {v11}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 204
    invoke-static {v10, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 205
    iget v0, v0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mConvertProgramID:I

    const-string v1, "inputImageTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    .line 206
    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 207
    invoke-static {v9}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 210
    :cond_3
    invoke-static {v11}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 211
    invoke-static/range {p6 .. p9}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v0, 0x5

    const/4 v1, 0x4

    .line 212
    invoke-static {v0, v5, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 214
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 215
    invoke-static {v6}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 216
    invoke-static {v10, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 217
    invoke-static {v9}, Lcom/transsion/camera/utils/gles/core/GlUtil;->checkGlError(Ljava/lang/String;)V

    .line 219
    invoke-static {v8, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 220
    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public requestTexturePair(II)[I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_3

    .line 67
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mTextures:[Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender$My2DTexture;

    aget-object v4, v3, v0

    if-nez v4, :cond_0

    .line 68
    new-instance v4, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender$My2DTexture;

    invoke-direct {v4, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender$My2DTexture;-><init>(II)V

    aput-object v4, v3, v0

    .line 70
    :cond_0
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mTextures:[Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender$My2DTexture;

    aget-object v3, v3, v0

    invoke-static {v3, p1, p2}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender$My2DTexture;->access$200(Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender$My2DTexture;II)V

    .line 71
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mTextures:[Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender$My2DTexture;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender$My2DTexture;->access$300(Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender$My2DTexture;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    if-lt v1, v2, :cond_2

    goto :goto_2

    .line 77
    :cond_2
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mTextureId:[I

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mTextures:[Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender$My2DTexture;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender$My2DTexture;->access$400(Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender$My2DTexture;)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/dualvideo/algorithm/DualVideoRender;->mTextureId:[I

    return-object p0
.end method
