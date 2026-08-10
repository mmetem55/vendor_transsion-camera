.class public Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;
.super Ljava/lang/Object;
.source "PlaneRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer$SortablePlane;
    }
.end annotation


# static fields
.field private static final BYTES_PER_FLOAT:I = 0x4

.field private static final BYTES_PER_SHORT:I = 0x2

.field private static final COORDS_PER_VERTEX:I = 0x3

.field private static final DOTS_PER_METER:F = 10.0f

.field private static final EQUILATERAL_TRIANGLE_SCALE:F

.field private static final FADE_RADIUS_M:F = 0.25f

.field private static final FRAGMENT_SHADER_NAME:Ljava/lang/String; = "shaders/plane.frag"

.field private static final GRID_CONTROL:[F

.field private static final INDICES_PER_BOUNDARY_VERT:I = 0x3

.field private static final INITIAL_BUFFER_BOUNDARY_VERTS:I = 0x40

.field private static final INITIAL_INDEX_BUFFER_SIZE_BYTES:I = 0x480

.field private static final INITIAL_VERTEX_BUFFER_SIZE_BYTES:I = 0x600

.field private static final TAG:Ljava/lang/String; = "PlaneRenderer"

.field private static final VERTEX_SHADER_NAME:Ljava/lang/String; = "shaders/plane.vert"

.field private static final VERTS_PER_BOUNDARY_VERT:I = 0x2


# instance fields
.field private dotColorUniform:I

.field private gridControlUniform:I

.field private indexBuffer:Ljava/nio/ShortBuffer;

.field private lineColorUniform:I

.field private final modelMatrix:[F

.field private final modelViewMatrix:[F

.field private final modelViewProjectionMatrix:[F

.field private final planeAngleUvMatrix:[F

.field private final planeColor:[F

.field private final planeIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/ar/core/Plane;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private planeModelUniform:I

.field private planeModelViewProjectionUniform:I

.field private planeNormalUniform:I

.field private planeProgram:I

.field private planeUvMatrixUniform:I

.field private planeXZPositionAlphaAttribute:I

.field private textureBitmap:Landroid/graphics/Bitmap;

.field private textureUniform:I

.field private final textures:[I

.field private vertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 73
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double/2addr v2, v0

    double-to-float v0, v2

    sput v0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->EQUILATERAL_TRIANGLE_SCALE:F

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 80
    fill-array-data v0, :array_0

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->GRID_CONTROL:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
        0x40000000    # 2.0f
        0x3fc00000    # 1.5f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 83
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->textures:[I

    const/16 v0, 0x600

    .line 97
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 98
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v0, 0x480

    .line 101
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 102
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 106
    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->modelMatrix:[F

    new-array v1, v0, [F

    .line 107
    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->modelViewMatrix:[F

    new-array v0, v0, [F

    .line 108
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->modelViewProjectionMatrix:[F

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 109
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeColor:[F

    new-array v0, v0, [F

    .line 110
    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeAngleUvMatrix:[F

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeIndexMap:Ljava/util/Map;

    .line 117
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :try_start_1
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->textureBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 119
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz p1, :cond_0

    .line 117
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 120
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static calculateDistanceToPlane(Lcom/google/ar/core/Pose;Lcom/google/ar/core/Pose;)F
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 419
    invoke-virtual {p1}, Lcom/google/ar/core/Pose;->tx()F

    move-result v1

    .line 420
    invoke-virtual {p1}, Lcom/google/ar/core/Pose;->ty()F

    move-result v2

    .line 421
    invoke-virtual {p1}, Lcom/google/ar/core/Pose;->tz()F

    move-result p1

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 423
    invoke-virtual {p0, v3, v4, v0, v5}, Lcom/google/ar/core/Pose;->getTransformedAxis(IF[FI)V

    .line 425
    invoke-virtual {p0}, Lcom/google/ar/core/Pose;->tx()F

    move-result v4

    sub-float/2addr v1, v4

    aget v4, v0, v5

    mul-float/2addr v1, v4

    .line 426
    invoke-virtual {p0}, Lcom/google/ar/core/Pose;->ty()F

    move-result v4

    sub-float/2addr v2, v4

    aget v3, v0, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 427
    invoke-virtual {p0}, Lcom/google/ar/core/Pose;->tz()F

    move-result p0

    sub-float/2addr p1, p0

    const/4 p0, 0x2

    aget p0, v0, p0

    mul-float/2addr p1, p0

    add-float/2addr v1, p1

    return v1
.end method

.method private draw([F[F[F)V
    .locals 12

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->modelViewMatrix:[F

    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->modelMatrix:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 265
    iget-object v6, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->modelViewProjectionMatrix:[F

    iget-object v10, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->modelViewMatrix:[F

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v8, p2

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 268
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 269
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeXZPositionAlphaAttribute:I

    iget-object v5, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/16 v4, 0xc

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 278
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeModelUniform:I

    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->modelMatrix:[F

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 279
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeNormalUniform:I

    aget p2, p3, v1

    aget v2, p3, v0

    const/4 v3, 0x2

    aget p3, p3, v3

    invoke-static {p1, p2, v2, p3}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 280
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeModelViewProjectionUniform:I

    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->modelViewProjectionMatrix:[F

    invoke-static {p1, v0, v1, p2, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 283
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 284
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    .line 285
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->limit()I

    move-result p1

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    const/4 p2, 0x5

    const/16 p3, 0x1403

    .line 284
    invoke-static {p2, p1, p3, p0}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 286
    sget-object p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->TAG:Ljava/lang/String;

    const-string p1, "Drawing plane"

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/arcore/common/rendering/ShaderUtil;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updatePlaneParameters([FFFLjava/nio/FloatBuffer;)V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->modelMatrix:[F

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez p4, :cond_0

    .line 180
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 181
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {p0, v1}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    return-void

    .line 189
    :cond_0
    invoke-virtual {p4}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 190
    invoke-virtual {p4}, Ljava/nio/FloatBuffer;->limit()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    mul-int/lit8 v0, p1, 0x2

    mul-int/lit8 v2, p1, 0x3

    .line 198
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v3

    mul-int/lit8 v0, v0, 0x3

    if-ge v3, v0, :cond_2

    .line 199
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v3

    :goto_0
    if-ge v3, v0, :cond_1

    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_1
    mul-int/lit8 v3, v3, 0x4

    .line 204
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 205
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 206
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 208
    :cond_2
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 209
    iget-object v3, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    .line 211
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v0

    if-ge v0, v2, :cond_4

    .line 212
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v0

    :goto_1
    if-ge v0, v2, :cond_3

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_3
    mul-int/lit8 v0, v0, 0x2

    .line 217
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 218
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    .line 221
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    .line 222
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v2, p2, v0

    div-float/2addr v2, p2

    const/4 p2, 0x0

    .line 227
    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float v0, p3, v0

    div-float/2addr v0, p3

    .line 228
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 230
    :goto_2
    invoke-virtual {p4}, Ljava/nio/FloatBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 231
    invoke-virtual {p4}, Ljava/nio/FloatBuffer;->get()F

    move-result v0

    .line 232
    invoke-virtual {p4}, Ljava/nio/FloatBuffer;->get()F

    move-result v3

    .line 233
    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 234
    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 235
    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 236
    iget-object v4, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    mul-float/2addr v0, v2

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 237
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    mul-float/2addr v3, p3

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 238
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_2

    .line 242
    :cond_5
    iget-object p2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    add-int/lit8 p3, p1, -0x1

    mul-int/lit8 p4, p3, 0x2

    int-to-short p4, p4

    invoke-virtual {p2, p4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    :goto_3
    const/4 p2, 0x1

    if-ge v1, p1, :cond_6

    .line 244
    iget-object p4, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    mul-int/lit8 v0, v1, 0x2

    int-to-short v2, v0

    invoke-virtual {p4, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 245
    iget-object p4, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    add-int/2addr v0, p2

    int-to-short p2, v0

    invoke-virtual {p4, p2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 247
    :cond_6
    iget-object p4, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {p4, p2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    move p4, p2

    .line 252
    :goto_4
    div-int/lit8 v0, p1, 0x2

    if-ge p4, v0, :cond_7

    .line 253
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    sub-int v1, p3, p4

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    mul-int/lit8 v1, p4, 0x2

    add-int/2addr v1, p2

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    .line 256
    :cond_7
    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_8

    .line 257
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->indexBuffer:Ljava/nio/ShortBuffer;

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    int-to-short p1, v0

    invoke-virtual {p0, p1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    :cond_8
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

    .line 125
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->TAG:Ljava/lang/String;

    const v1, 0x8b31

    const-string v2, "shaders/plane.vert"

    .line 126
    invoke-static {v0, p1, v1, v2}, Lcom/transsion/camera/feature/arcore/common/rendering/ShaderUtil;->loadGLShader(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    const v2, 0x8b30

    const-string v3, "shaders/plane.frag"

    .line 128
    invoke-static {v0, p1, v2, v3}, Lcom/transsion/camera/feature/arcore/common/rendering/ShaderUtil;->loadGLShader(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)I

    move-result p1

    .line 130
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    iput v2, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeProgram:I

    .line 131
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 132
    iget v1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeProgram:I

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 133
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 134
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-string p1, "Program creation"

    .line 136
    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcore/common/rendering/ShaderUtil;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x84c0

    .line 138
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 139
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->textures:[I

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 140
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->textures:[I

    aget p1, p1, v2

    const/16 v1, 0xde1

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2801

    const/16 v3, 0x2703

    .line 142
    invoke-static {v1, p1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2800

    const/16 v3, 0x2601

    .line 144
    invoke-static {v1, p1, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 145
    iget-object p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->textureBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v2, p1, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 146
    invoke-static {v1}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    .line 147
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string p1, "Texture loading"

    .line 149
    invoke-static {v0, p1}, Lcom/transsion/camera/feature/arcore/common/rendering/ShaderUtil;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeProgram:I

    const-string v1, "a_XZPositionAlpha"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeXZPositionAlphaAttribute:I

    .line 153
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeProgram:I

    const-string v1, "u_Model"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeModelUniform:I

    .line 154
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeProgram:I

    const-string v1, "u_Normal"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeNormalUniform:I

    .line 155
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeProgram:I

    const-string v1, "u_ModelViewProjection"

    .line 156
    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeModelViewProjectionUniform:I

    .line 157
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeProgram:I

    const-string v1, "u_Texture"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->textureUniform:I

    .line 158
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeProgram:I

    const-string v1, "u_lineColor"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->lineColorUniform:I

    .line 159
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeProgram:I

    const-string v1, "u_dotColor"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->dotColorUniform:I

    .line 160
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeProgram:I

    const-string v1, "u_gridControl"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->gridControlUniform:I

    .line 161
    iget p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeProgram:I

    const-string v1, "u_PlaneUvMatrix"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeUvMatrixUniform:I

    const-string p0, "Program parameters"

    .line 163
    invoke-static {v0, p0}, Lcom/transsion/camera/feature/arcore/common/rendering/ShaderUtil;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public drawPlanes(Ljava/util/Collection;Lcom/google/ar/core/Pose;[F)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/ar/core/Plane;",
            ">;",
            "Lcom/google/ar/core/Pose;",
            "[F)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 310
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 312
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ar/core/Plane;

    .line 313
    invoke-virtual {v3}, Lcom/google/ar/core/Plane;->getTrackingState()Lcom/google/ar/core/TrackingState;

    move-result-object v4

    sget-object v5, Lcom/google/ar/core/TrackingState;->TRACKING:Lcom/google/ar/core/TrackingState;

    if-ne v4, v5, :cond_2

    invoke-virtual {v3}, Lcom/google/ar/core/Plane;->getSubsumedBy()Lcom/google/ar/core/Plane;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    invoke-virtual {v3}, Lcom/google/ar/core/Plane;->getCenterPose()Lcom/google/ar/core/Pose;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-static {v4, v5}, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->calculateDistanceToPlane(Lcom/google/ar/core/Pose;Lcom/google/ar/core/Pose;)F

    move-result v4

    const/4 v6, 0x0

    cmpg-float v6, v4, v6

    if-gez v6, :cond_1

    goto :goto_0

    .line 321
    :cond_1
    new-instance v6, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer$SortablePlane;

    invoke-direct {v6, v4, v3}, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer$SortablePlane;-><init>(FLcom/google/ar/core/Plane;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object/from16 v5, p2

    goto :goto_0

    :cond_3
    move-object/from16 v5, p2

    .line 323
    new-instance v2, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer$1;

    invoke-direct {v2, v0}, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer$1;-><init>(Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 v2, 0x10

    new-array v3, v2, [F

    .line 333
    invoke-virtual/range {p2 .. p2}, Lcom/google/ar/core/Pose;->inverse()Lcom/google/ar/core/Pose;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/google/ar/core/Pose;->toMatrix([FI)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 338
    invoke-static {v4, v4, v4, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/4 v6, 0x1

    .line 339
    invoke-static {v5, v5, v5, v6}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    const/16 v7, 0x4000

    .line 340
    invoke-static {v7}, Landroid/opengl/GLES20;->glClear(I)V

    .line 341
    invoke-static {v6, v6, v6, v6}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    .line 344
    invoke-static {v5}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    const/16 v7, 0xbe2

    .line 347
    invoke-static {v7}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v8, 0x304

    const/16 v9, 0x303

    .line 348
    invoke-static {v8, v6, v5, v9}, Landroid/opengl/GLES20;->glBlendFuncSeparate(IIII)V

    .line 353
    iget v8, v0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeProgram:I

    invoke-static {v8}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const v8, 0x84c0

    .line 356
    invoke-static {v8}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 357
    iget-object v8, v0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->textures:[I

    aget v8, v8, v5

    const/16 v9, 0xde1

    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 358
    iget v8, v0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->textureUniform:I

    invoke-static {v8, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 361
    iget v8, v0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->gridControlUniform:I

    sget-object v10, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->GRID_CONTROL:[F

    invoke-static {v8, v6, v10, v5}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 364
    iget v8, v0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeXZPositionAlphaAttribute:I

    invoke-static {v8}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 366
    sget-object v8, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->TAG:Ljava/lang/String;

    const-string v10, "Setting up to draw planes"

    invoke-static {v8, v10}, Lcom/transsion/camera/feature/arcore/common/rendering/ShaderUtil;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer$SortablePlane;

    .line 369
    iget-object v8, v8, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer$SortablePlane;->plane:Lcom/google/ar/core/Plane;

    new-array v10, v2, [F

    .line 371
    invoke-virtual {v8}, Lcom/google/ar/core/Plane;->getCenterPose()Lcom/google/ar/core/Pose;

    move-result-object v11

    invoke-virtual {v11, v10, v5}, Lcom/google/ar/core/Pose;->toMatrix([FI)V

    const/4 v11, 0x3

    new-array v12, v11, [F

    .line 375
    invoke-virtual {v8}, Lcom/google/ar/core/Plane;->getCenterPose()Lcom/google/ar/core/Pose;

    move-result-object v13

    invoke-virtual {v13, v6, v4, v12, v5}, Lcom/google/ar/core/Pose;->getTransformedAxis(IF[FI)V

    .line 378
    invoke-virtual {v8}, Lcom/google/ar/core/Plane;->getExtentX()F

    move-result v13

    invoke-virtual {v8}, Lcom/google/ar/core/Plane;->getExtentZ()F

    move-result v14

    invoke-virtual {v8}, Lcom/google/ar/core/Plane;->getPolygon()Ljava/nio/FloatBuffer;

    move-result-object v15

    .line 377
    invoke-direct {v0, v10, v13, v14, v15}, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->updatePlaneParameters([FFFLjava/nio/FloatBuffer;)V

    .line 381
    iget-object v10, v0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeIndexMap:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-nez v10, :cond_4

    .line 383
    iget-object v10, v0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeIndexMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 384
    iget-object v13, v0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeIndexMap:Ljava/util/Map;

    invoke-interface {v13, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_4
    iget v8, v0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->lineColorUniform:I

    iget-object v13, v0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeColor:[F

    invoke-static {v8, v6, v13, v5}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 389
    iget v8, v0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->dotColorUniform:I

    iget-object v13, v0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeColor:[F

    invoke-static {v8, v6, v13, v5}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 393
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    const v10, 0x3e1374bc    # 0.144f

    mul-float/2addr v8, v10

    .line 395
    sget v10, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->EQUILATERAL_TRIANGLE_SCALE:F

    const/high16 v13, 0x41200000    # 10.0f

    mul-float/2addr v10, v13

    .line 396
    iget-object v14, v0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeAngleUvMatrix:[F

    float-to-double v7, v8

    move-object/from16 v16, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v13

    aput v2, v14, v5

    .line 397
    iget-object v2, v0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeAngleUvMatrix:[F

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    neg-float v4, v4

    mul-float/2addr v4, v10

    aput v4, v2, v6

    .line 398
    iget-object v2, v0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeAngleUvMatrix:[F

    const/4 v4, 0x2

    move-object v14, v12

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v11, v13

    aput v11, v2, v4

    .line 399
    iget-object v2, v0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeAngleUvMatrix:[F

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v4, v7

    mul-float/2addr v4, v10

    const/4 v5, 0x3

    aput v4, v2, v5

    .line 400
    iget v2, v0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeUvMatrixUniform:I

    iget-object v4, v0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeAngleUvMatrix:[F

    const/4 v5, 0x0

    invoke-static {v2, v6, v5, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix2fv(IIZ[FI)V

    move-object/from16 v2, p3

    move-object v7, v14

    move-object/from16 v4, v16

    .line 402
    invoke-direct {v0, v4, v2, v7}, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->draw([F[F[F)V

    move-object v3, v4

    const/16 v2, 0x10

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v7, 0xbe2

    goto/16 :goto_1

    .line 406
    :cond_5
    iget v0, v0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeXZPositionAlphaAttribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 407
    invoke-static {v9, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0xbe2

    .line 408
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 409
    invoke-static {v6}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 410
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 412
    sget-object v0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->TAG:Ljava/lang/String;

    const-string v1, "Cleaning up after drawing planes"

    invoke-static {v0, v1}, Lcom/transsion/camera/feature/arcore/common/rendering/ShaderUtil;->checkGLError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public releaseOnGLThread()V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->textures:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 168
    iget v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, -0x1

    .line 169
    iput v0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->planeProgram:I

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/rendering/PlaneRenderer;->textures:[I

    aput v2, p0, v2

    return-void
.end method
