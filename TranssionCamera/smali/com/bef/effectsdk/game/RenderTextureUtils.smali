.class public Lcom/bef/effectsdk/game/RenderTextureUtils;
.super Ljava/lang/Object;
.source "RenderTextureUtils.java"


# static fields
.field private static flipY_uvArray:[F = null

.field public static final renderFS:Ljava/lang/String; = "precision highp float;\n\nuniform sampler2D uTexture;\nvarying vec2 textureCoord;\nvoid main() {\n    gl_FragColor = texture2D(uTexture, textureCoord);\n}\n"

.field public static final renderVS:Ljava/lang/String; = "attribute vec2 attUV;\nattribute vec2 attPosition;\nvarying vec2 textureCoord;\nuniform mat4 mvpMatrix;\n\nvoid main() {\n    gl_Position  = mvpMatrix * vec4(attPosition, 0.,1.);\n    textureCoord = attUV;\n}\n"

.field private static uvArray:[F

.field private static vertexArray:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 14
    fill-array-data v1, :array_0

    sput-object v1, Lcom/bef/effectsdk/game/RenderTextureUtils;->vertexArray:[F

    new-array v1, v0, [F

    .line 22
    fill-array-data v1, :array_1

    sput-object v1, Lcom/bef/effectsdk/game/RenderTextureUtils;->uvArray:[F

    new-array v0, v0, [F

    .line 30
    fill-array-data v0, :array_2

    sput-object v0, Lcom/bef/effectsdk/game/RenderTextureUtils;->flipY_uvArray:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateBlankTexture(II)I
    .locals 12

    mul-int v0, p0, p1

    mul-int/lit8 v0, v0, 0x4

    .line 81
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v9

    const/4 v0, 0x0

    .line 82
    invoke-virtual {v9, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    .line 83
    invoke-virtual {v9, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x1

    new-array v10, v1, [I

    .line 86
    invoke-static {v1, v10, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v1, v10, v0

    const/16 v11, 0xde1

    .line 87
    invoke-static {v11, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    .line 88
    invoke-static {v11, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2801

    .line 90
    invoke-static {v11, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    const v2, 0x47012f00    # 33071.0f

    .line 92
    invoke-static {v11, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2803

    .line 94
    invoke-static {v11, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    move v4, p0

    move v5, p1

    .line 96
    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 97
    invoke-static {v11, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    aget p0, v10, v0

    return p0
.end method

.method public static getFlipY_uvBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .line 58
    sget-object v0, Lcom/bef/effectsdk/game/RenderTextureUtils;->flipY_uvArray:[F

    invoke-static {v0}, Lcom/bef/effectsdk/game/RenderTextureUtils;->getFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected static getFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 2

    .line 72
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object p0
.end method

.method public static getUVBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .line 54
    sget-object v0, Lcom/bef/effectsdk/game/RenderTextureUtils;->uvArray:[F

    invoke-static {v0}, Lcom/bef/effectsdk/game/RenderTextureUtils;->getFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getUVBufferWithParams(FFFF)Ljava/nio/FloatBuffer;
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 p2, 0x4

    aput p0, v0, p2

    const/4 p0, 0x5

    aput p3, v0, p0

    const/4 p0, 0x6

    aput p1, v0, p0

    const/4 p0, 0x7

    aput p3, v0, p0

    .line 68
    invoke-static {v0}, Lcom/bef/effectsdk/game/RenderTextureUtils;->getFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static getVertexBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    .line 39
    sget-object v0, Lcom/bef/effectsdk/game/RenderTextureUtils;->vertexArray:[F

    invoke-static {v0}, Lcom/bef/effectsdk/game/RenderTextureUtils;->getFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getVertexBufferWithParams(FFFF)Ljava/nio/FloatBuffer;
    .locals 2

    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p0, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 p2, 0x4

    aput p0, v0, p2

    const/4 p0, 0x5

    aput p3, v0, p0

    const/4 p0, 0x6

    aput p1, v0, p0

    const/4 p0, 0x7

    aput p3, v0, p0

    .line 49
    invoke-static {v0}, Lcom/bef/effectsdk/game/RenderTextureUtils;->getFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method
