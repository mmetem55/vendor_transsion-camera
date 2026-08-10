.class public Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;
.super Ljava/lang/Object;
.source "BackgroundRenderer.java"


# static fields
.field private static final COORDS_PER_VERTEX:I = 0x2

.field private static final FLOAT_SIZE:I = 0x4

.field private static final FRAGMENT_SHADER_NAME:Ljava/lang/String; = "shaders/screenquad.frag"

.field private static final QUAD_COORDS:[F

.field private static final TAG:Ljava/lang/String; = "BackgroundRenderer"

.field private static final TEXCOORDS_PER_VERTEX:I = 0x2

.field private static final VERTEX_SHADER_NAME:Ljava/lang/String; = "shaders/screenquad.vert"


# instance fields
.field private final quadCoords:Ljava/nio/FloatBuffer;

.field private quadPositionParam:I

.field private quadProgram:I

.field private quadTexCoordParam:I

.field private final quadTexCoords:Ljava/nio/FloatBuffer;

.field private textureId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 237
    fill-array-data v0, :array_0

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->QUAD_COORDS:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->textureId:I

    .line 57
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->QUAD_COORDS:[F

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 58
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 59
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->quadCoords:Ljava/nio/FloatBuffer;

    .line 60
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    .line 61
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v0, 0x20

    .line 63
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 64
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 65
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->quadTexCoords:Ljava/nio/FloatBuffer;

    return-void
.end method

.method private draw()V
    .locals 15

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->quadTexCoords:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v0, 0xb71

    .line 204
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 205
    invoke-static {v1}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    const v2, 0x84c0

    .line 207
    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 208
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->textureId:I

    const v3, 0x8d65

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 210
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->quadProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 213
    iget v3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->quadPositionParam:I

    iget-object v8, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->quadCoords:Ljava/nio/FloatBuffer;

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 217
    iget v9, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->quadTexCoordParam:I

    iget-object v14, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->quadTexCoords:Ljava/nio/FloatBuffer;

    const/4 v10, 0x2

    const/16 v11, 0x1406

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 221
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->quadPositionParam:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 222
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->quadTexCoordParam:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v2, 0x5

    const/4 v3, 0x4

    .line 224
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 227
    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->quadPositionParam:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 228
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->quadTexCoordParam:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    const/4 p0, 0x1

    .line 231
    invoke-static {p0}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    .line 232
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 234
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->TAG:Ljava/lang/String;

    const-string v0, "BackgroundRendererDraw"

    invoke-static {p0, v0}, Lcom/transsion/camera/feature/arcore/common/rendering/ShaderUtil;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createOnGlThread(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 82
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    .line 83
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->textureId:I

    const v1, 0x8d65

    .line 85
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2802

    const v2, 0x812f

    .line 86
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2803

    .line 87
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2801

    const/16 v2, 0x2601

    .line 88
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v0, 0x2800

    .line 89
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 90
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->TAG:Ljava/lang/String;

    const v1, 0x8b31

    const-string v2, "shaders/screenquad.vert"

    .line 91
    invoke-static {v0, p1, v1, v2}, Lcom/transsion/camera/feature/arcore/common/rendering/ShaderUtil;->loadGLShader(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    const v2, 0x8b30

    const-string v3, "shaders/screenquad.frag"

    .line 93
    invoke-static {v0, p1, v2, v3}, Lcom/transsion/camera/feature/arcore/common/rendering/ShaderUtil;->loadGLShader(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)I

    move-result p1

    .line 95
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->quadProgram:I

    .line 96
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 97
    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->quadProgram:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 98
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->quadProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 99
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->quadProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string p1, "Program creation"

    .line 100
    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcore/common/rendering/ShaderUtil;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->quadProgram:I

    const-string v1, "a_Position"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->quadPositionParam:I

    .line 102
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->quadProgram:I

    const-string v1, "a_TexCoord"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->quadTexCoordParam:I

    const-string p0, "Program parameters"

    .line 103
    invoke-static {v0, p0}, Lcom/transsion/camera/feature/arcore/common/rendering/ShaderUtil;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public draw(IIFI)V
    .locals 10

    int-to-float p1, p1

    int-to-float p2, p2

    div-float v0, p1, p2

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    mul-float/2addr p3, p2

    move v0, p2

    goto :goto_0

    :cond_0
    div-float p3, p1, p3

    move v0, p3

    move p3, p1

    :goto_0
    sub-float p3, p1, p3

    div-float/2addr p3, p1

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr p3, p1

    sub-float v0, p2, v0

    div-float/2addr v0, p2

    mul-float/2addr v0, p1

    const/4 p1, 0x7

    const/4 p2, 0x6

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz p4, :cond_4

    const/16 v9, 0x5a

    if-eq p4, v9, :cond_3

    const/16 v9, 0xb4

    if-eq p4, v9, :cond_2

    const/16 v9, 0x10e

    if-ne p4, v9, :cond_1

    new-array p4, v6, [F

    aput p3, p4, v7

    aput v0, p4, v5

    sub-float v5, v8, p3

    aput v5, p4, v4

    aput v0, p4, v3

    aput p3, p4, v2

    sub-float/2addr v8, v0

    aput v8, p4, v1

    aput v5, p4, p2

    aput v8, p4, p1

    goto :goto_1

    .line 184
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unhandled rotation: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-array p4, v6, [F

    sub-float v6, v8, p3

    aput v6, p4, v7

    aput v0, p4, v5

    aput v6, p4, v4

    sub-float/2addr v8, v0

    aput v8, p4, v3

    aput p3, p4, v2

    aput v0, p4, v1

    aput p3, p4, p2

    aput v8, p4, p1

    goto :goto_1

    :cond_3
    new-array p4, v6, [F

    sub-float v6, v8, p3

    aput v6, p4, v7

    sub-float/2addr v8, v0

    aput v8, p4, v5

    aput p3, p4, v4

    aput v8, p4, v3

    aput v6, p4, v2

    aput v0, p4, v1

    aput p3, p4, p2

    aput v0, p4, p1

    goto :goto_1

    :cond_4
    new-array p4, v6, [F

    aput p3, p4, v7

    sub-float v6, v8, v0

    aput v6, p4, v5

    aput p3, p4, v4

    aput v0, p4, v3

    sub-float/2addr v8, p3

    aput v8, p4, v2

    aput v6, p4, v1

    aput v8, p4, p2

    aput v0, p4, p1

    .line 188
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->quadTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 189
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->quadTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, p4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 191
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->draw()V

    return-void
.end method

.method public draw(Lcom/google/ar/core/Frame;)V
    .locals 4

    .line 127
    invoke-virtual {p1}, Lcom/google/ar/core/Frame;->hasDisplayGeometryChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/google/ar/core/Coordinates2d;->OPENGL_NORMALIZED_DEVICE_COORDINATES:Lcom/google/ar/core/Coordinates2d;

    iget-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->quadCoords:Ljava/nio/FloatBuffer;

    sget-object v2, Lcom/google/ar/core/Coordinates2d;->TEXTURE_NORMALIZED:Lcom/google/ar/core/Coordinates2d;

    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->quadTexCoords:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/ar/core/Frame;->transformCoordinates2d(Lcom/google/ar/core/Coordinates2d;Ljava/nio/FloatBuffer;Lcom/google/ar/core/Coordinates2d;Ljava/nio/FloatBuffer;)V

    .line 135
    :cond_0
    invoke-virtual {p1}, Lcom/google/ar/core/Frame;->getTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    return-void

    .line 141
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->draw()V

    return-void
.end method

.method public getTextureId()I
    .locals 0

    .line 69
    iget p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->textureId:I

    return p0
.end method

.method public releaseOnGLThread()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 108
    iget v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->textureId:I

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 109
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 110
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->quadProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, -0x1

    .line 111
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->quadProgram:I

    .line 112
    iput v3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/BackgroundRenderer;->textureId:I

    return-void
.end method
