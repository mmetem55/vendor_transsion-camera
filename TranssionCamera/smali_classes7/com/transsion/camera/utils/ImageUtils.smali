.class public Lcom/transsion/camera/utils/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# direct methods
.method public static argbToNV21([III)[B
    .locals 0

    .line 243
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/utils/ImageUtils;->encodeYUV420SP([III)[B

    move-result-object p0

    return-object p0
.end method

.method public static bitmapToArgb(Landroid/graphics/Bitmap;)[I
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 225
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 226
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v0, v6, v7

    .line 227
    new-array v8, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v8

    move v3, v6

    .line 228
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    return-object v8
.end method

.method public static encodeYUV420SP([III)[B
    .locals 16

    move/from16 v0, p1

    move/from16 v1, p2

    mul-int v2, v0, v1

    mul-int/lit8 v3, v2, 0x3

    .line 257
    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v5, v1, :cond_5

    move v8, v4

    :goto_1
    if-ge v8, v0, :cond_4

    .line 261
    aget v9, p0, v7

    const/high16 v10, 0xff0000

    and-int/2addr v10, v9

    shr-int/lit8 v10, v10, 0x10

    const v11, 0xff00

    and-int/2addr v11, v9

    shr-int/lit8 v11, v11, 0x8

    const/16 v12, 0xff

    and-int/2addr v9, v12

    mul-int/lit8 v13, v10, 0x42

    mul-int/lit16 v14, v11, 0x81

    add-int/2addr v13, v14

    mul-int/lit8 v14, v9, 0x19

    add-int/2addr v13, v14

    add-int/lit16 v13, v13, 0x80

    shr-int/lit8 v13, v13, 0x8

    add-int/lit8 v13, v13, 0x10

    mul-int/lit8 v14, v10, -0x26

    mul-int/lit8 v15, v11, 0x4a

    sub-int/2addr v14, v15

    mul-int/lit8 v15, v9, 0x70

    add-int/2addr v14, v15

    add-int/lit16 v14, v14, 0x80

    shr-int/lit8 v14, v14, 0x8

    add-int/lit16 v14, v14, 0x80

    mul-int/lit8 v10, v10, 0x70

    mul-int/lit8 v11, v11, 0x5e

    sub-int/2addr v10, v11

    mul-int/lit8 v9, v9, 0x12

    sub-int/2addr v10, v9

    add-int/lit16 v10, v10, 0x80

    shr-int/lit8 v9, v10, 0x8

    add-int/lit16 v9, v9, 0x80

    add-int/lit8 v10, v6, 0x1

    if-gez v13, :cond_0

    move v11, v4

    goto :goto_2

    .line 272
    :cond_0
    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    :goto_2
    int-to-byte v11, v11

    aput-byte v11, v3, v6

    .line 273
    rem-int/lit8 v6, v5, 0x2

    if-nez v6, :cond_3

    rem-int/lit8 v6, v7, 0x2

    if-nez v6, :cond_3

    add-int/lit8 v6, v2, 0x1

    if-gez v9, :cond_1

    move v9, v4

    goto :goto_3

    .line 274
    :cond_1
    invoke-static {v9, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    :goto_3
    int-to-byte v9, v9

    aput-byte v9, v3, v2

    add-int/lit8 v2, v6, 0x1

    if-gez v14, :cond_2

    move v9, v4

    goto :goto_4

    .line 275
    :cond_2
    invoke-static {v14, v12}, Ljava/lang/Math;->min(II)I

    move-result v9

    :goto_4
    int-to-byte v9, v9

    aput-byte v9, v3, v6

    :cond_3
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    move v6, v10

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return-object v3
.end method

.method public static getYBufferEffectData(Landroid/media/Image;Z)[B
    .locals 8

    .line 40
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    .line 45
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    .line 46
    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v4

    .line 48
    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    mul-int v5, v1, v2

    .line 49
    new-array v5, v5, [B

    move v6, v3

    :goto_0
    if-ge v3, v2, :cond_1

    .line 52
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    mul-int v7, v3, v1

    .line 53
    invoke-virtual {v0, v5, v7, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v6, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 58
    invoke-virtual {p0}, Landroid/media/Image;->close()V

    :cond_2
    return-object v5
.end method

.method public static nv21ToJpeg([BIILandroid/graphics/Rect;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 210
    new-instance v7, Landroid/graphics/YuvImage;

    const/16 v3, 0x11

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    if-nez p3, :cond_0

    .line 212
    new-instance p3, Landroid/graphics/Rect;

    const/4 p0, 0x0

    invoke-direct {p3, p0, p0, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_0
    const/16 p0, 0x64

    .line 214
    invoke-virtual {v7, p3, p0, v0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 218
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 216
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "YuvImage failed to encode jpeg."

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
