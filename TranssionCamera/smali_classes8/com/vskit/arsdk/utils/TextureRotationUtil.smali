.class public Lcom/vskit/arsdk/utils/TextureRotationUtil;
.super Ljava/lang/Object;
.source "TextureRotationUtil.java"


# static fields
.field public static final CubeVertices:[F

.field public static final CubeVertices2:[F

.field public static final CubeVertices3:[F

.field public static final Indices:[S

.field public static final TextureVertices:[F

.field public static final TextureVertices_180:[F

.field public static final TextureVertices_270:[F

.field public static final TextureVertices_90:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 11
    fill-array-data v1, :array_0

    sput-object v1, Lcom/vskit/arsdk/utils/TextureRotationUtil;->CubeVertices:[F

    new-array v1, v0, [F

    .line 18
    fill-array-data v1, :array_1

    sput-object v1, Lcom/vskit/arsdk/utils/TextureRotationUtil;->CubeVertices2:[F

    new-array v1, v0, [F

    .line 25
    fill-array-data v1, :array_2

    sput-object v1, Lcom/vskit/arsdk/utils/TextureRotationUtil;->CubeVertices3:[F

    new-array v1, v0, [F

    .line 32
    fill-array-data v1, :array_3

    sput-object v1, Lcom/vskit/arsdk/utils/TextureRotationUtil;->TextureVertices:[F

    new-array v1, v0, [F

    .line 39
    fill-array-data v1, :array_4

    sput-object v1, Lcom/vskit/arsdk/utils/TextureRotationUtil;->TextureVertices_90:[F

    new-array v1, v0, [F

    .line 46
    fill-array-data v1, :array_5

    sput-object v1, Lcom/vskit/arsdk/utils/TextureRotationUtil;->TextureVertices_180:[F

    new-array v0, v0, [F

    .line 53
    fill-array-data v0, :array_6

    sput-object v0, Lcom/vskit/arsdk/utils/TextureRotationUtil;->TextureVertices_270:[F

    const/4 v0, 0x6

    new-array v0, v0, [S

    .line 63
    fill-array-data v0, :array_7

    sput-object v0, Lcom/vskit/arsdk/utils/TextureRotationUtil;->Indices:[S

    return-void

    :array_0
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

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
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

    :array_3
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

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x2s
        0x1s
        0x3s
    .end array-data
.end method
