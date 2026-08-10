.class public Lcom/bytedance/labcv/core/opengl/Drawable2d;
.super Ljava/lang/Object;
.source "Drawable2d.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;
    }
.end annotation


# static fields
.field public static final COORDS_PER_VERTEX:I = 0x2

.field private static final FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

.field private static final FULL_RECTANGLE_COORDS:[F

.field private static final FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

.field private static final FULL_RECTANGLE_TEX_BUF1:Ljava/nio/FloatBuffer;

.field private static final FULL_RECTANGLE_TEX_COORDS:[F

.field private static final FULL_RECTANGLE_TEX_COORDS1:[F

.field private static final RECTANGLE_BUF:Ljava/nio/FloatBuffer;

.field private static final RECTANGLE_COORDS:[F

.field private static final RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

.field private static final RECTANGLE_TEX_BUF1:Ljava/nio/FloatBuffer;

.field private static final RECTANGLE_TEX_COORDS:[F

.field private static final RECTANGLE_TEX_COORDS1:[F

.field private static final SIZEOF_FLOAT:I = 0x4

.field public static final TEXTURE_COORD_STRIDE:I = 0x8

.field private static final TRIANGLE_BUF:Ljava/nio/FloatBuffer;

.field private static final TRIANGLE_COORDS:[F

.field private static final TRIANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

.field private static final TRIANGLE_TEX_COORDS:[F

.field public static final VERTEXTURE_STRIDE:I = 0x8


# instance fields
.field private mCoordsPerVertex:I

.field private mPrefab:Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

.field private mTexCoordArray:Ljava/nio/FloatBuffer;

.field private mTexCoordArrayFB:Ljava/nio/FloatBuffer;

.field private mTexCoordStride:I

.field private mVertexArray:Ljava/nio/FloatBuffer;

.field private mVertexCount:I

.field private mVertexStride:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v1, v0, [F

    .line 35
    fill-array-data v1, :array_0

    sput-object v1, Lcom/bytedance/labcv/core/opengl/Drawable2d;->TRIANGLE_COORDS:[F

    new-array v0, v0, [F

    .line 40
    fill-array-data v0, :array_1

    sput-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->TRIANGLE_TEX_COORDS:[F

    .line 46
    invoke-static {v1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/bytedance/labcv/core/opengl/Drawable2d;->TRIANGLE_BUF:Ljava/nio/FloatBuffer;

    .line 48
    invoke-static {v0}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->TRIANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 56
    fill-array-data v1, :array_2

    sput-object v1, Lcom/bytedance/labcv/core/opengl/Drawable2d;->RECTANGLE_COORDS:[F

    new-array v2, v0, [F

    .line 72
    fill-array-data v2, :array_3

    sput-object v2, Lcom/bytedance/labcv/core/opengl/Drawable2d;->RECTANGLE_TEX_COORDS:[F

    new-array v3, v0, [F

    .line 78
    fill-array-data v3, :array_4

    sput-object v3, Lcom/bytedance/labcv/core/opengl/Drawable2d;->RECTANGLE_TEX_COORDS1:[F

    .line 85
    invoke-static {v1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/bytedance/labcv/core/opengl/Drawable2d;->RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    .line 87
    invoke-static {v2}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/bytedance/labcv/core/opengl/Drawable2d;->RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    .line 89
    invoke-static {v3}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/bytedance/labcv/core/opengl/Drawable2d;->RECTANGLE_TEX_BUF1:Ljava/nio/FloatBuffer;

    new-array v1, v0, [F

    .line 98
    fill-array-data v1, :array_5

    sput-object v1, Lcom/bytedance/labcv/core/opengl/Drawable2d;->FULL_RECTANGLE_COORDS:[F

    new-array v2, v0, [F

    .line 114
    fill-array-data v2, :array_6

    sput-object v2, Lcom/bytedance/labcv/core/opengl/Drawable2d;->FULL_RECTANGLE_TEX_COORDS:[F

    new-array v0, v0, [F

    .line 121
    fill-array-data v0, :array_7

    sput-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->FULL_RECTANGLE_TEX_COORDS1:[F

    .line 128
    invoke-static {v1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/bytedance/labcv/core/opengl/Drawable2d;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    .line 130
    invoke-static {v2}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/bytedance/labcv/core/opengl/Drawable2d;->FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    .line 132
    invoke-static {v0}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->FULL_RECTANGLE_TEX_BUF1:Ljava/nio/FloatBuffer;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f13cd3a
        -0x41000000    # -0.5f
        -0x416c32c6
        0x3f000000    # 0.5f
        -0x416c32c6
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
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

    :array_4
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

    :array_5
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_6
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

    :array_7
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

.method public constructor <init>(Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;)V
    .locals 3

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d$1;->$SwitchMap$com$bytedance$labcv$core$opengl$Drawable2d$Prefab:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 175
    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->FULL_RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexArray:Ljava/nio/FloatBuffer;

    .line 176
    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->FULL_RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mTexCoordArray:Ljava/nio/FloatBuffer;

    .line 177
    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->FULL_RECTANGLE_TEX_BUF1:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mTexCoordArrayFB:Ljava/nio/FloatBuffer;

    .line 178
    iput v2, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mCoordsPerVertex:I

    mul-int/lit8 v0, v2, 0x4

    .line 179
    iput v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexStride:I

    .line 180
    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->FULL_RECTANGLE_COORDS:[F

    array-length v0, v0

    div-int/2addr v0, v2

    iput v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexCount:I

    goto :goto_0

    .line 183
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown shape "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 167
    :cond_1
    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->RECTANGLE_BUF:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexArray:Ljava/nio/FloatBuffer;

    .line 168
    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->RECTANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mTexCoordArray:Ljava/nio/FloatBuffer;

    .line 169
    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->RECTANGLE_TEX_BUF1:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mTexCoordArrayFB:Ljava/nio/FloatBuffer;

    .line 170
    iput v2, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mCoordsPerVertex:I

    mul-int/lit8 v0, v2, 0x4

    .line 171
    iput v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexStride:I

    .line 172
    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->RECTANGLE_COORDS:[F

    array-length v0, v0

    div-int/2addr v0, v2

    iput v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexCount:I

    goto :goto_0

    .line 159
    :cond_2
    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->TRIANGLE_BUF:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexArray:Ljava/nio/FloatBuffer;

    .line 160
    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->TRIANGLE_TEX_BUF:Ljava/nio/FloatBuffer;

    iput-object v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mTexCoordArray:Ljava/nio/FloatBuffer;

    .line 161
    iput-object v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mTexCoordArrayFB:Ljava/nio/FloatBuffer;

    .line 162
    iput v2, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mCoordsPerVertex:I

    mul-int/lit8 v0, v2, 0x4

    .line 163
    iput v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexStride:I

    .line 164
    sget-object v0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->TRIANGLE_COORDS:[F

    array-length v0, v0

    div-int/2addr v0, v2

    iput v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexCount:I

    :goto_0
    const/16 v0, 0x8

    .line 185
    iput v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mTexCoordStride:I

    .line 186
    iput-object p1, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mPrefab:Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

    return-void
.end method


# virtual methods
.method public getCoordsPerVertex()I
    .locals 0

    .line 245
    iget p0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mCoordsPerVertex:I

    return p0
.end method

.method public getTexCoorArrayFB()Ljava/nio/FloatBuffer;
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mTexCoordArrayFB:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public getTexCoordArray()Ljava/nio/FloatBuffer;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mTexCoordArray:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public getTexCoordStride()I
    .locals 0

    .line 238
    iget p0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mTexCoordStride:I

    return p0
.end method

.method public getVertexArray()Ljava/nio/FloatBuffer;
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexArray:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public getVertexCount()I
    .locals 0

    .line 224
    iget p0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexCount:I

    return p0
.end method

.method public getVertexStride()I
    .locals 0

    .line 231
    iget p0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexStride:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mPrefab:Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

    if-eqz v0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Drawable2d: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mPrefab:Lcom/bytedance/labcv/core/opengl/Drawable2d$Prefab;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "[Drawable2d: ...]"

    return-object p0
.end method

.method public updateTexCoordArray([F)V
    .locals 0

    .line 254
    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mTexCoordArray:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public updateTexCoordArrayFB([F)V
    .locals 0

    .line 258
    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mTexCoordArrayFB:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public updateVertexArray([F)V
    .locals 1

    .line 249
    invoke-static {p1}, Lcom/bytedance/labcv/core/opengl/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexArray:Ljava/nio/FloatBuffer;

    .line 250
    array-length p1, p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/bytedance/labcv/core/opengl/Drawable2d;->mVertexCount:I

    return-void
.end method
