.class public Lcom/singleblur/blur/STBlurImage;
.super Ljava/lang/Object;
.source "STBlurImage.java"


# static fields
.field private static DEBUG:Z = true

.field public static final ST_BLUR_PARAM_TYPE_EREA_RATIO:I = 0x1001

.field private static final TAG:Ljava/lang/String; = "STBlurImage"

.field private static mDetect:Lcom/singleblur/faceapi/FaceDetect;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyRects([Lcom/singleblur/faceapi/model/FaceInfo;)[Landroid/graphics/Rect;
    .locals 5

    .line 271
    array-length v0, p0

    new-array v1, v0, [Landroid/graphics/Rect;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 273
    new-instance v3, Landroid/graphics/Rect;

    aget-object v4, p0, v2

    iget-object v4, v4, Lcom/singleblur/faceapi/model/FaceInfo;->faceRect:Landroid/graphics/Rect;

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static createImageBlur()I
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-static {v0}, Lcom/singleblur/blur/STBlurImage;->createImageBlur(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static createImageBlur(Ljava/lang/String;)I
    .locals 3

    .line 37
    new-instance v0, Lcom/singleblur/faceapi/FaceDetect;

    sget-object v1, Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;->DEFAULT_CONFIG:Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/singleblur/faceapi/FaceDetect;-><init>(Ljava/lang/String;Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;)V

    sput-object v0, Lcom/singleblur/blur/STBlurImage;->mDetect:Lcom/singleblur/faceapi/FaceDetect;

    .line 38
    invoke-static {p0}, Lcom/singleblur/blur/BlurImageLibrary;->createImageBlur(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static destroyImageBlur()I
    .locals 1

    .line 45
    sget-object v0, Lcom/singleblur/blur/STBlurImage;->mDetect:Lcom/singleblur/faceapi/FaceDetect;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/singleblur/faceapi/FaceHandleBase;->release()V

    const/4 v0, 0x0

    .line 47
    sput-object v0, Lcom/singleblur/blur/STBlurImage;->mDetect:Lcom/singleblur/faceapi/FaceDetect;

    .line 49
    :cond_0
    invoke-static {}, Lcom/singleblur/blur/BlurImageLibrary;->destroyImageBlur()I

    move-result v0

    return v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 330
    invoke-static {}, Lcom/singleblur/blur/BlurImageLibrary;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initLicense(Ljava/lang/String;)I
    .locals 0

    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/singleblur/blur/BlurImageLibrary;->initLicense([B)I

    move-result p0

    return p0
.end method

.method public static processBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 1

    .line 61
    sget-object v0, Lcom/singleblur/faceapi/model/FaceOrientation;->UP:Lcom/singleblur/faceapi/model/FaceOrientation;

    invoke-static {p0, p1, p2, v0}, Lcom/singleblur/blur/STBlurImage;->processBitmap(Landroid/graphics/Bitmap;FFLcom/singleblur/faceapi/model/FaceOrientation;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static processBitmap(Landroid/graphics/Bitmap;FFLcom/singleblur/faceapi/model/FaceOrientation;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-static {p0, p1, p2, v0, p3}, Lcom/singleblur/blur/STBlurImage;->processBitmap(Landroid/graphics/Bitmap;FF[FLcom/singleblur/faceapi/model/FaceOrientation;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static processBitmap(Landroid/graphics/Bitmap;FF[FLcom/singleblur/faceapi/model/FaceOrientation;)Landroid/graphics/Bitmap;
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v15, p3

    .line 91
    sget-object v1, Lcom/singleblur/blur/STBlurImage;->mDetect:Lcom/singleblur/faceapi/FaceDetect;

    const/4 v2, 0x0

    const-string v14, "STBlurImage"

    if-nez v1, :cond_0

    const-string v0, "ImageBlur not init !"

    .line 92
    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 95
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/singleblur/faceapi/model/FaceOrientation;->getValue()I

    move-result v1

    sget-object v3, Lcom/singleblur/faceapi/model/FaceOrientation;->UNKNOWN:Lcom/singleblur/faceapi/model/FaceOrientation;

    invoke-virtual {v3}, Lcom/singleblur/faceapi/model/FaceOrientation;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_1

    const-string v0, "Image rotation error !"

    .line 96
    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 100
    :cond_1
    sget-object v1, Lcom/singleblur/blur/STBlurImage;->mDetect:Lcom/singleblur/faceapi/FaceDetect;

    move-object/from16 v3, p4

    invoke-virtual {v1, v0, v3}, Lcom/singleblur/faceapi/FaceDetect;->detect(Landroid/graphics/Bitmap;Lcom/singleblur/faceapi/model/FaceOrientation;)[Lcom/singleblur/faceapi/model/FaceInfo;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 102
    array-length v4, v1

    if-gtz v4, :cond_2

    goto/16 :goto_5

    :cond_2
    const/16 v16, 0x0

    move/from16 v2, v16

    .line 106
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "faceInfos["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v2

    iget-object v5, v5, Lcom/singleblur/faceapi/model/FaceInfo;->faceRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    :cond_3
    array-length v7, v1

    .line 111
    invoke-static {v1}, Lcom/singleblur/blur/STBlurImage;->copyRects([Lcom/singleblur/faceapi/model/FaceInfo;)[Landroid/graphics/Rect;

    move-result-object v2

    .line 114
    new-array v8, v7, [I

    .line 115
    new-array v9, v7, [I

    .line 116
    new-array v10, v7, [I

    .line 117
    new-array v11, v7, [I

    .line 118
    new-array v12, v7, [F

    move/from16 v4, v16

    :goto_1
    if-ge v4, v7, :cond_5

    .line 120
    aget-object v5, v2, v4

    iget v6, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v29, v12

    int-to-double v12, v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-double v5, v5

    aget-object v3, v1, v4

    iget v3, v3, Lcom/singleblur/faceapi/model/FaceInfo;->yaw:F

    const/high16 v17, 0x43340000    # 180.0f

    div-float v3, v3, v17

    move-object/from16 v17, v1

    float-to-double v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v5, v0

    add-double/2addr v12, v5

    double-to-int v0, v12

    aput v0, v8, v4

    .line 121
    aget-object v0, v2, v4

    iget v1, v0, Landroid/graphics/Rect;->top:I

    aput v1, v9, v4

    .line 122
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    aput v0, v10, v4

    .line 123
    aget-object v0, v2, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    aput v0, v11, v4

    .line 124
    sget-boolean v0, Lcom/singleblur/blur/STBlurImage;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "faceRects: x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v8, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v9, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v10, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v11, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move-object/from16 v1, v17

    move-object/from16 v12, v29

    goto :goto_1

    :cond_5
    move-object/from16 v29, v12

    .line 129
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 130
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 132
    invoke-virtual/range {p4 .. p4}, Lcom/singleblur/faceapi/model/FaceOrientation;->getValue()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    mul-int/lit8 v6, v0, 0x5a

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rotation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v12, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    mul-int v0, v13, v12

    const/4 v1, 0x4

    mul-int/2addr v0, v1

    .line 138
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 139
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-object/from16 v0, p0

    .line 140
    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    if-nez v15, :cond_6

    .line 144
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v17

    sget-object v0, Lcom/singleblur/faceapi/model/CvPixelFormat;->RGBA8888:Lcom/singleblur/faceapi/model/CvPixelFormat;

    invoke-virtual {v0}, Lcom/singleblur/faceapi/model/CvPixelFormat;->getValue()I

    move-result v18

    move/from16 v19, v13

    move/from16 v20, v12

    move/from16 v21, v13

    move/from16 v22, v12

    move/from16 v23, v6

    move/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move/from16 v30, p1

    move/from16 v31, p2

    invoke-static/range {v17 .. v31}, Lcom/singleblur/blur/BlurImageLibrary;->blurImage([BIIIIIII[I[I[I[I[FFF)I

    move-result v16

    move-object/from16 p0, v4

    move-object/from16 v34, v5

    move/from16 v35, v12

    move/from16 v36, v13

    move-object v3, v14

    :goto_2
    move/from16 v0, v16

    goto/16 :goto_4

    .line 146
    :cond_6
    array-length v0, v15

    if-ne v0, v1, :cond_8

    .line 147
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    sget-object v1, Lcom/singleblur/faceapi/model/CvPixelFormat;->RGBA8888:Lcom/singleblur/faceapi/model/CvPixelFormat;

    invoke-virtual {v1}, Lcom/singleblur/faceapi/model/CvPixelFormat;->getValue()I

    move-result v1

    move v2, v13

    move v3, v12

    move-object/from16 p0, v4

    move v4, v13

    move-object/from16 v34, v5

    move v5, v12

    move/from16 v35, v12

    move-object/from16 v12, v29

    move/from16 v36, v13

    move-object/from16 v13, p3

    move-object/from16 v37, v14

    move/from16 v14, p2

    invoke-static/range {v0 .. v14}, Lcom/singleblur/blur/BlurImageLibrary;->blurImageGradual([BIIIIIII[I[I[I[I[F[FF)I

    move-result v0

    move/from16 v1, v16

    .line 149
    :goto_3
    array-length v2, v15

    if-ge v1, v2, :cond_7

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bitmap gradualBlurStrength["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v15, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v37

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    move-object/from16 v3, v37

    goto :goto_4

    :cond_8
    move-object/from16 p0, v4

    move-object/from16 v34, v5

    move/from16 v35, v12

    move/from16 v36, v13

    move-object v3, v14

    const-string v0, "blurImage gradualBlurStrength param error!!"

    .line 153
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 155
    :goto_4
    sget-boolean v1, Lcom/singleblur/blur/STBlurImage;->DEBUG:Z

    if-eqz v1, :cond_9

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blurImage width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v36

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v35

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "cost time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v32

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eqz v0, :cond_a

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blurImage processBitmap error!! ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-object/from16 v1, p0

    move-object/from16 v0, v34

    .line 162
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    return-object v0

    :cond_b
    :goto_5
    move-object v3, v14

    const-string v0, "doProcessBlur: face = null !"

    .line 103
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static processBitmap(Landroid/graphics/Bitmap;[FFLcom/singleblur/faceapi/model/FaceOrientation;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-static {p0, v0, p2, p1, p3}, Lcom/singleblur/blur/STBlurImage;->processBitmap(Landroid/graphics/Bitmap;FF[FLcom/singleblur/faceapi/model/FaceOrientation;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static processNV21([BIIFF)[B
    .locals 6

    .line 177
    sget-object v5, Lcom/singleblur/faceapi/model/FaceOrientation;->UP:Lcom/singleblur/faceapi/model/FaceOrientation;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/singleblur/blur/STBlurImage;->processNV21([BIIFFLcom/singleblur/faceapi/model/FaceOrientation;)[B

    move-result-object p0

    return-object p0
.end method

.method public static processNV21([BIIFFLcom/singleblur/faceapi/model/FaceOrientation;)[B
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 192
    invoke-static/range {v0 .. v6}, Lcom/singleblur/blur/STBlurImage;->processNV21([BIIFF[FLcom/singleblur/faceapi/model/FaceOrientation;)[B

    move-result-object p0

    return-object p0
.end method

.method private static processNV21([BIIFF[FLcom/singleblur/faceapi/model/FaceOrientation;)[B
    .locals 31

    move-object/from16 v15, p5

    .line 211
    sget-object v0, Lcom/singleblur/blur/STBlurImage;->mDetect:Lcom/singleblur/faceapi/FaceDetect;

    const/4 v1, 0x0

    const-string v14, "STBlurImage"

    if-nez v0, :cond_0

    const-string v0, "ImageBlur not init !"

    .line 212
    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 215
    :cond_0
    invoke-virtual/range {p6 .. p6}, Lcom/singleblur/faceapi/model/FaceOrientation;->getValue()I

    move-result v0

    sget-object v2, Lcom/singleblur/faceapi/model/FaceOrientation;->UNKNOWN:Lcom/singleblur/faceapi/model/FaceOrientation;

    invoke-virtual {v2}, Lcom/singleblur/faceapi/model/FaceOrientation;->getValue()I

    move-result v2

    if-ne v0, v2, :cond_1

    const-string v0, "Image rotation error !"

    .line 216
    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const-string v0, "STBlur face detect start"

    .line 221
    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sget-object v2, Lcom/singleblur/blur/STBlurImage;->mDetect:Lcom/singleblur/faceapi/FaceDetect;

    sget-object v4, Lcom/singleblur/faceapi/model/CvPixelFormat;->NV21:Lcom/singleblur/faceapi/model/CvPixelFormat;

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p1

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/singleblur/faceapi/FaceDetect;->detect([BLcom/singleblur/faceapi/model/CvPixelFormat;IIILcom/singleblur/faceapi/model/FaceOrientation;)[Lcom/singleblur/faceapi/model/FaceInfo;

    move-result-object v0

    const-string v2, "STBlur face detect end"

    .line 223
    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_9

    .line 225
    array-length v2, v0

    if-gtz v2, :cond_2

    goto/16 :goto_4

    .line 229
    :cond_2
    array-length v7, v0

    .line 231
    invoke-static {v0}, Lcom/singleblur/blur/STBlurImage;->copyRects([Lcom/singleblur/faceapi/model/FaceInfo;)[Landroid/graphics/Rect;

    move-result-object v1

    .line 234
    new-array v8, v7, [I

    .line 235
    new-array v9, v7, [I

    .line 236
    new-array v10, v7, [I

    .line 237
    new-array v11, v7, [I

    .line 238
    new-array v12, v7, [F

    const/16 v16, 0x0

    move/from16 v2, v16

    :goto_0
    if-ge v2, v7, :cond_4

    .line 240
    aget-object v3, v1, v2

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-double v4, v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object/from16 v27, v12

    int-to-double v12, v3

    aget-object v3, v0, v2

    iget v3, v3, Lcom/singleblur/faceapi/model/FaceInfo;->yaw:F

    const/high16 v6, 0x43340000    # 180.0f

    div-float/2addr v3, v6

    move/from16 v22, v7

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v12, v6

    add-double/2addr v4, v12

    double-to-int v3, v4

    aput v3, v8, v2

    .line 241
    aget-object v3, v1, v2

    iget v4, v3, Landroid/graphics/Rect;->top:I

    aput v4, v9, v2

    .line 242
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    aput v3, v10, v2

    .line 243
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    aput v3, v11, v2

    .line 244
    sget-boolean v3, Lcom/singleblur/blur/STBlurImage;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "faceRects: x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v8, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v9, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v10, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v11, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v22

    move-object/from16 v12, v27

    goto :goto_0

    :cond_4
    move/from16 v22, v7

    move-object/from16 v27, v12

    .line 249
    invoke-virtual/range {p6 .. p6}, Lcom/singleblur/faceapi/model/FaceOrientation;->getValue()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    mul-int/lit8 v21, v0, 0x5a

    if-nez v15, :cond_5

    .line 253
    sget-object v0, Lcom/singleblur/faceapi/model/CvPixelFormat;->NV21:Lcom/singleblur/faceapi/model/CvPixelFormat;

    invoke-virtual {v0}, Lcom/singleblur/faceapi/model/CvPixelFormat;->getValue()I

    move-result v16

    move-object/from16 v15, p0

    move/from16 v17, p1

    move/from16 v18, p2

    move/from16 v19, p1

    move/from16 v20, p2

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move/from16 v28, p3

    move/from16 v29, p4

    invoke-static/range {v15 .. v29}, Lcom/singleblur/blur/BlurImageLibrary;->blurImage([BIIIIIII[I[I[I[I[FFF)I

    move-result v16

    move-object v3, v14

    :goto_1
    move/from16 v0, v16

    goto :goto_3

    .line 255
    :cond_5
    array-length v0, v15

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    .line 256
    sget-object v0, Lcom/singleblur/faceapi/model/CvPixelFormat;->NV21:Lcom/singleblur/faceapi/model/CvPixelFormat;

    invoke-virtual {v0}, Lcom/singleblur/faceapi/model/CvPixelFormat;->getValue()I

    move-result v1

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, v21

    move/from16 v7, v22

    move-object/from16 v12, v27

    move-object/from16 v13, p5

    move-object/from16 v30, v14

    move/from16 v14, p4

    invoke-static/range {v0 .. v14}, Lcom/singleblur/blur/BlurImageLibrary;->blurImageGradual([BIIIIIII[I[I[I[I[F[FF)I

    move-result v0

    move/from16 v1, v16

    .line 258
    :goto_2
    array-length v2, v15

    if-ge v1, v2, :cond_6

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "yuv gradualBlurStrength["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v15, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v30

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v3, v30

    goto :goto_3

    :cond_7
    move-object v3, v14

    const-string v0, "blurImage gradualBlurWeight param error!!"

    .line 262
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_3
    if-eqz v0, :cond_8

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blurImage processBitmap error!! ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-object p0

    :cond_9
    :goto_4
    move-object v3, v14

    const-string v0, "doProcessBlur: face = null !"

    .line 226
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static processNV21([BII[FFLcom/singleblur/faceapi/model/FaceOrientation;)[B
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    move-object v5, p3

    move-object v6, p5

    .line 207
    invoke-static/range {v0 .. v6}, Lcom/singleblur/blur/STBlurImage;->processNV21([BIIFF[FLcom/singleblur/faceapi/model/FaceOrientation;)[B

    move-result-object p0

    return-object p0
.end method

.method public static processNV21WithoutFaceInfo([BII[FFLcom/singleblur/faceapi/model/FaceOrientation;)[B
    .locals 31

    move-object/from16 v15, p3

    .line 280
    invoke-virtual/range {p5 .. p5}, Lcom/singleblur/faceapi/model/FaceOrientation;->getValue()I

    move-result v0

    sget-object v1, Lcom/singleblur/faceapi/model/FaceOrientation;->UNKNOWN:Lcom/singleblur/faceapi/model/FaceOrientation;

    invoke-virtual {v1}, Lcom/singleblur/faceapi/model/FaceOrientation;->getValue()I

    move-result v1

    const-string v14, "STBlurImage"

    if-ne v0, v1, :cond_0

    const-string v0, "Image rotation error !"

    .line 281
    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v8, v0, [I

    const/16 v16, 0x0

    aput v16, v8, v16

    new-array v9, v0, [I

    aput v16, v9, v16

    new-array v10, v0, [I

    aput v16, v10, v16

    new-array v11, v0, [I

    aput v16, v11, v16

    new-array v12, v0, [F

    const/4 v0, 0x0

    aput v0, v12, v16

    .line 292
    invoke-virtual/range {p5 .. p5}, Lcom/singleblur/faceapi/model/FaceOrientation;->getValue()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    mul-int/lit8 v21, v0, 0x5a

    if-nez v15, :cond_1

    .line 296
    sget-object v0, Lcom/singleblur/faceapi/model/CvPixelFormat;->NV21:Lcom/singleblur/faceapi/model/CvPixelFormat;

    invoke-virtual {v0}, Lcom/singleblur/faceapi/model/CvPixelFormat;->getValue()I

    move-result v16

    const/16 v22, 0x1

    const/16 v28, 0x0

    move-object/from16 v15, p0

    move/from16 v17, p1

    move/from16 v18, p2

    move/from16 v19, p1

    move/from16 v20, p2

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v27, v12

    move/from16 v29, p4

    invoke-static/range {v15 .. v29}, Lcom/singleblur/blur/BlurImageLibrary;->blurImage([BIIIIIII[I[I[I[I[FFF)I

    move-result v16

    move-object v3, v14

    :goto_0
    move/from16 v0, v16

    goto :goto_2

    .line 298
    :cond_1
    array-length v0, v15

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 299
    sget-object v0, Lcom/singleblur/faceapi/model/CvPixelFormat;->NV21:Lcom/singleblur/faceapi/model/CvPixelFormat;

    invoke-virtual {v0}, Lcom/singleblur/faceapi/model/CvPixelFormat;->getValue()I

    move-result v1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, v21

    move-object/from16 v13, p3

    move-object/from16 v30, v14

    move/from16 v14, p4

    invoke-static/range {v0 .. v14}, Lcom/singleblur/blur/BlurImageLibrary;->blurImageGradual([BIIIIIII[I[I[I[I[F[FF)I

    move-result v0

    move/from16 v1, v16

    .line 301
    :goto_1
    array-length v2, v15

    if-ge v1, v2, :cond_2

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "yuv gradualBlurStrength["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v15, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v30

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v3, v30

    goto :goto_2

    :cond_3
    move-object v3, v14

    const-string v0, "blurImage gradualBlurWeight param error!!"

    .line 305
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_2
    if-eqz v0, :cond_4

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blurImage processBitmap error!! ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object p0
.end method

.method public static setDebug(Z)I
    .locals 0

    .line 340
    sput-boolean p0, Lcom/singleblur/blur/STBlurImage;->DEBUG:Z

    .line 341
    invoke-static {p0}, Lcom/singleblur/blur/BlurImageLibrary;->setDebug(Z)I

    move-result p0

    return p0
.end method

.method public static setParam(IF)I
    .locals 0

    .line 321
    invoke-static {p0, p1}, Lcom/singleblur/blur/BlurImageLibrary;->setParam(IF)I

    move-result p0

    return p0
.end method
