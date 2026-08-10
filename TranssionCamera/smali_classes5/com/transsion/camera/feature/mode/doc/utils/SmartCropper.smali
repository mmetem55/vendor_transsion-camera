.class public Lcom/transsion/camera/feature/mode/doc/utils/SmartCropper;
.super Ljava/lang/Object;
.source "SmartCropper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartCropper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static crop(Landroid/graphics/Bitmap;[Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 6

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 176
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 179
    sget-object v0, Lcom/youtu/ocr/docprocess/DocDetector;->sharedInstance:Lcom/youtu/ocr/docprocess/DocDetector;

    const/4 v2, 0x0

    move v3, v2

    .line 180
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p1, v3

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, v3

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SmartCropper"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    new-array v3, v3, [I

    .line 185
    aget-object v4, p1, v2

    iget v5, v4, Landroid/graphics/Point;->x:I

    aput v5, v3, v2

    .line 186
    iget v2, v4, Landroid/graphics/Point;->y:I

    const/4 v4, 0x1

    aput v2, v3, v4

    .line 187
    aget-object v2, p1, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    const/4 v5, 0x2

    aput v4, v3, v5

    .line 188
    iget v2, v2, Landroid/graphics/Point;->y:I

    const/4 v4, 0x3

    aput v2, v3, v4

    .line 189
    aget-object v2, p1, v5

    iget v5, v2, Landroid/graphics/Point;->x:I

    aput v5, v3, v1

    const/4 v1, 0x5

    .line 190
    iget v2, v2, Landroid/graphics/Point;->y:I

    aput v2, v3, v1

    const/4 v1, 0x6

    .line 191
    aget-object p1, p1, v4

    iget v2, p1, Landroid/graphics/Point;->x:I

    aput v2, v3, v1

    const/4 v1, 0x7

    .line 192
    iget p1, p1, Landroid/graphics/Point;->y:I

    aput p1, v3, v1

    .line 193
    invoke-virtual {v0, p0, v3}, Lcom/youtu/ocr/docprocess/DocDetector;->rectifyByBitmap(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 177
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The length of cropPoints must be 4 , and sort by leftTop, rightTop, rightBottom, leftBottom"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 174
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "srcBmp and cropPoints cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static scan(Landroid/graphics/Bitmap;)[Landroid/graphics/Point;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-string v2, "SmartCropper"

    if-nez v0, :cond_0

    const-string v0, "srcBmp == null"

    .line 22
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const/4 v3, 0x4

    new-array v3, v3, [Landroid/graphics/Point;

    .line 26
    sget-object v4, Lcom/youtu/ocr/docprocess/DocDetector;->sharedInstance:Lcom/youtu/ocr/docprocess/DocDetector;

    .line 27
    invoke-virtual {v4, v0}, Lcom/youtu/ocr/docprocess/DocDetector;->xnnDetectorApply(Landroid/graphics/Bitmap;)[Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v0, "detectorPoint == null"

    .line 29
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    const/4 v1, 0x0

    move v5, v1

    .line 32
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 33
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "detectorPoint"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v5

    iget v7, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, "  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v5

    iget v7, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 35
    :cond_2
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    aput-object v2, v3, v1

    .line 36
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    const/4 v5, 0x1

    aput-object v2, v3, v5

    .line 37
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    const/4 v6, 0x2

    aput-object v2, v3, v6

    .line 38
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    const/4 v7, 0x3

    aput-object v2, v3, v7

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 41
    aget-object v8, v4, v1

    iget v9, v8, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    int-to-float v2, v2

    mul-float v10, v9, v2

    float-to-int v10, v10

    aget-object v11, v4, v5

    iget v12, v11, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float v13, v12, v2

    float-to-int v13, v13

    if-gt v10, v13, :cond_4

    mul-float v10, v9, v2

    float-to-int v10, v10

    aget-object v13, v4, v6

    iget v14, v13, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float v15, v14, v2

    float-to-int v15, v15

    if-gt v10, v15, :cond_4

    iget v10, v8, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    int-to-float v15, v0

    mul-float v6, v10, v15

    float-to-int v6, v6

    iget v13, v13, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float v5, v13, v15

    float-to-int v5, v5

    if-gt v6, v5, :cond_4

    mul-float v5, v10, v15

    float-to-int v5, v5

    aget-object v6, v4, v7

    iget v7, v6, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float v1, v7, v15

    float-to-int v1, v1

    if-gt v5, v1, :cond_3

    const/4 v1, 0x0

    aget-object v0, v3, v1

    mul-float/2addr v9, v2

    float-to-int v1, v9

    .line 46
    iput v1, v0, Landroid/graphics/Point;->x:I

    mul-float/2addr v10, v15

    float-to-int v1, v10

    .line 47
    iput v1, v0, Landroid/graphics/Point;->y:I

    const/4 v0, 0x1

    aget-object v0, v3, v0

    mul-float/2addr v12, v2

    float-to-int v1, v12

    .line 48
    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 49
    iget v1, v11, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v1, v15

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    const/4 v0, 0x2

    aget-object v0, v3, v0

    mul-float/2addr v14, v2

    float-to-int v1, v14

    .line 50
    iput v1, v0, Landroid/graphics/Point;->x:I

    mul-float/2addr v13, v15

    float-to-int v1, v13

    .line 51
    iput v1, v0, Landroid/graphics/Point;->y:I

    const/4 v0, 0x3

    aget-object v0, v3, v0

    .line 52
    iget v1, v6, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    mul-float/2addr v7, v15

    float-to-int v1, v7

    .line 53
    iput v1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_2

    :cond_3
    const/4 v1, 0x3

    goto :goto_1

    :cond_4
    move v1, v7

    .line 54
    :goto_1
    aget-object v5, v4, v1

    iget v1, v5, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float v6, v1, v2

    float-to-int v6, v6

    mul-float v7, v9, v2

    float-to-int v7, v7

    if-gt v6, v7, :cond_5

    mul-float v6, v1, v2

    float-to-int v6, v6

    mul-float v7, v12, v2

    float-to-int v7, v7

    if-gt v6, v7, :cond_5

    iget v6, v5, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    int-to-float v7, v0

    mul-float v10, v6, v7

    float-to-int v10, v10

    iget v13, v11, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float v14, v13, v7

    float-to-int v14, v14

    if-gt v10, v14, :cond_5

    mul-float v10, v6, v7

    float-to-int v10, v10

    const/4 v14, 0x2

    aget-object v15, v4, v14

    iget v14, v15, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    move-object/from16 p0, v5

    mul-float v5, v14, v7

    float-to-int v5, v5

    if-gt v10, v5, :cond_6

    const/4 v5, 0x0

    aget-object v0, v3, v5

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 58
    iput v1, v0, Landroid/graphics/Point;->x:I

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 59
    iput v1, v0, Landroid/graphics/Point;->y:I

    const/4 v0, 0x1

    aget-object v0, v3, v0

    mul-float/2addr v9, v2

    float-to-int v1, v9

    .line 60
    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 61
    iget v1, v8, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    const/4 v0, 0x2

    aget-object v0, v3, v0

    mul-float/2addr v12, v2

    float-to-int v1, v12

    .line 62
    iput v1, v0, Landroid/graphics/Point;->x:I

    mul-float/2addr v13, v7

    float-to-int v1, v13

    .line 63
    iput v1, v0, Landroid/graphics/Point;->y:I

    const/4 v0, 0x3

    aget-object v0, v3, v0

    .line 64
    iget v1, v15, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    mul-float/2addr v14, v7

    float-to-int v1, v14

    .line 65
    iput v1, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_2

    :cond_5
    move-object/from16 p0, v5

    :cond_6
    const/4 v5, 0x2

    .line 66
    aget-object v4, v4, v5

    iget v5, v4, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float v6, v5, v2

    float-to-int v6, v6

    mul-float v7, v1, v2

    float-to-int v7, v7

    if-gt v6, v7, :cond_7

    mul-float v6, v5, v2

    float-to-int v6, v6

    mul-float v7, v9, v2

    float-to-int v7, v7

    if-gt v6, v7, :cond_7

    iget v6, v4, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    int-to-float v7, v0

    mul-float v10, v6, v7

    float-to-int v10, v10

    iget v13, v8, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float v14, v13, v7

    float-to-int v14, v14

    if-gt v10, v14, :cond_7

    mul-float v10, v6, v7

    float-to-int v10, v10

    iget v14, v11, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float v15, v14, v7

    float-to-int v15, v15

    if-gt v10, v15, :cond_7

    const/4 v10, 0x0

    aget-object v0, v3, v10

    mul-float/2addr v5, v2

    float-to-int v4, v5

    .line 70
    iput v4, v0, Landroid/graphics/Point;->x:I

    mul-float/2addr v6, v7

    float-to-int v4, v6

    .line 71
    iput v4, v0, Landroid/graphics/Point;->y:I

    const/4 v0, 0x1

    aget-object v0, v3, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 72
    iput v1, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v6, p0

    .line 73
    iget v1, v6, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    const/4 v0, 0x2

    aget-object v0, v3, v0

    mul-float/2addr v9, v2

    float-to-int v1, v9

    .line 74
    iput v1, v0, Landroid/graphics/Point;->x:I

    mul-float/2addr v13, v7

    float-to-int v1, v13

    .line 75
    iput v1, v0, Landroid/graphics/Point;->y:I

    const/4 v0, 0x3

    aget-object v0, v3, v0

    mul-float/2addr v12, v2

    float-to-int v1, v12

    .line 76
    iput v1, v0, Landroid/graphics/Point;->x:I

    mul-float/2addr v14, v7

    float-to-int v1, v14

    .line 77
    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_2

    :cond_7
    move-object/from16 v6, p0

    const/4 v7, 0x0

    aget-object v7, v3, v7

    mul-float/2addr v12, v2

    float-to-int v10, v12

    .line 79
    iput v10, v7, Landroid/graphics/Point;->x:I

    .line 80
    iget v10, v11, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    int-to-float v0, v0

    mul-float/2addr v10, v0

    float-to-int v10, v10

    iput v10, v7, Landroid/graphics/Point;->y:I

    const/4 v7, 0x1

    aget-object v7, v3, v7

    mul-float/2addr v5, v2

    float-to-int v5, v5

    .line 81
    iput v5, v7, Landroid/graphics/Point;->x:I

    .line 82
    iget v4, v4, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v4, v0

    float-to-int v4, v4

    iput v4, v7, Landroid/graphics/Point;->y:I

    const/4 v4, 0x2

    aget-object v4, v3, v4

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 83
    iput v1, v4, Landroid/graphics/Point;->x:I

    .line 84
    iget v1, v6, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, v4, Landroid/graphics/Point;->y:I

    const/4 v1, 0x3

    aget-object v1, v3, v1

    mul-float/2addr v9, v2

    float-to-int v2, v9

    .line 85
    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 86
    iget v2, v8, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, v1, Landroid/graphics/Point;->y:I

    :goto_2
    return-object v3
.end method

.method public static scan([BII)[Landroid/graphics/Point;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-eqz v0, :cond_9

    const/4 v3, 0x4

    new-array v4, v3, [Landroid/graphics/Point;

    .line 96
    sget-object v5, Lcom/youtu/ocr/docprocess/DocDetector;->sharedInstance:Lcom/youtu/ocr/docprocess/DocDetector;

    const/4 v6, 0x0

    .line 97
    invoke-virtual {v5, v0, v1, v2, v6}, Lcom/youtu/ocr/docprocess/DocDetector;->xnnDetectorApply([BIII)[Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SmartCropper"

    const-string v1, "detectorPoint == null"

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    move v5, v6

    .line 102
    :goto_0
    array-length v7, v0

    if-ge v5, v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 105
    :cond_1
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    aput-object v5, v4, v6

    .line 106
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 107
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    const/4 v8, 0x2

    aput-object v5, v4, v8

    .line 108
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    const/4 v9, 0x3

    aput-object v5, v4, v9

    .line 112
    aget-object v10, v0, v6

    iget v11, v10, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    int-to-float v1, v1

    mul-float v12, v11, v1

    float-to-int v12, v12

    aget-object v13, v0, v7

    iget v14, v13, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float v15, v14, v1

    float-to-int v15, v15

    if-ge v12, v15, :cond_2

    mul-float v12, v11, v1

    float-to-int v12, v12

    aget-object v15, v0, v8

    iget v3, v15, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float v8, v3, v1

    float-to-int v8, v8

    if-ge v12, v8, :cond_2

    iget v8, v10, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    int-to-float v12, v2

    mul-float v7, v8, v12

    float-to-int v7, v7

    iget v15, v15, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float v6, v15, v12

    float-to-int v6, v6

    if-ge v7, v6, :cond_2

    mul-float v6, v8, v12

    float-to-int v6, v6

    aget-object v7, v0, v9

    iget v9, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float v2, v9, v12

    float-to-int v2, v2

    if-ge v6, v2, :cond_2

    const/4 v2, 0x0

    aget-object v0, v4, v2

    mul-float/2addr v11, v1

    float-to-int v2, v11

    .line 117
    iput v2, v0, Landroid/graphics/Point;->x:I

    mul-float/2addr v8, v12

    float-to-int v2, v8

    .line 118
    iput v2, v0, Landroid/graphics/Point;->y:I

    const/4 v0, 0x1

    aget-object v0, v4, v0

    mul-float/2addr v14, v1

    float-to-int v2, v14

    .line 119
    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 120
    iget v2, v13, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v2, v12

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    const/4 v0, 0x2

    aget-object v0, v4, v0

    mul-float/2addr v3, v1

    float-to-int v2, v3

    .line 121
    iput v2, v0, Landroid/graphics/Point;->x:I

    mul-float/2addr v15, v12

    float-to-int v2, v15

    .line 122
    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 123
    iget v0, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v5, Landroid/graphics/Point;->x:I

    mul-float/2addr v9, v12

    float-to-int v0, v9

    .line 124
    iput v0, v5, Landroid/graphics/Point;->y:I

    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_2
    mul-float v2, v11, v1

    float-to-int v2, v2

    const/4 v3, 0x2

    .line 125
    aget-object v6, v0, v3

    iget v3, v6, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float v7, v3, v1

    float-to-int v7, v7

    if-le v2, v7, :cond_4

    mul-float v2, v11, v1

    float-to-int v2, v2

    const/4 v7, 0x3

    aget-object v8, v0, v7

    iget v7, v8, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float v9, v7, v1

    float-to-int v9, v9

    if-le v2, v9, :cond_4

    iget v2, v10, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    move/from16 v9, p2

    int-to-float v12, v9

    mul-float v15, v2, v12

    float-to-int v15, v15

    move-object/from16 v16, v0

    iget v0, v13, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    move-object/from16 p1, v13

    mul-float v13, v0, v12

    float-to-int v13, v13

    if-ge v15, v13, :cond_3

    mul-float v13, v2, v12

    float-to-int v13, v13

    iget v15, v6, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    move-object/from16 v17, v6

    mul-float v6, v15, v12

    float-to-int v6, v6

    if-ge v13, v6, :cond_5

    const/4 v6, 0x0

    aget-object v9, v4, v6

    mul-float/2addr v7, v1

    float-to-int v6, v7

    .line 129
    iput v6, v9, Landroid/graphics/Point;->x:I

    .line 130
    iget v6, v8, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v6, v12

    float-to-int v6, v6

    iput v6, v9, Landroid/graphics/Point;->y:I

    const/4 v6, 0x1

    aget-object v6, v4, v6

    mul-float/2addr v11, v1

    float-to-int v7, v11

    .line 131
    iput v7, v6, Landroid/graphics/Point;->x:I

    mul-float/2addr v2, v12

    float-to-int v2, v2

    .line 132
    iput v2, v6, Landroid/graphics/Point;->y:I

    const/4 v2, 0x2

    aget-object v2, v4, v2

    mul-float/2addr v14, v1

    float-to-int v6, v14

    .line 133
    iput v6, v2, Landroid/graphics/Point;->x:I

    mul-float/2addr v0, v12

    float-to-int v0, v0

    .line 134
    iput v0, v2, Landroid/graphics/Point;->y:I

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 135
    iput v0, v5, Landroid/graphics/Point;->x:I

    mul-float/2addr v15, v12

    float-to-int v0, v15

    .line 136
    iput v0, v5, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_3
    move-object/from16 v17, v6

    goto :goto_2

    :cond_4
    move/from16 v9, p2

    move-object/from16 v16, v0

    move-object/from16 v17, v6

    move-object/from16 p1, v13

    :cond_5
    :goto_2
    mul-float v0, v11, v1

    float-to-int v0, v0

    mul-float v2, v14, v1

    float-to-int v2, v2

    if-le v0, v2, :cond_7

    mul-float v0, v11, v1

    float-to-int v0, v0

    mul-float v2, v3, v1

    float-to-int v2, v2

    if-le v0, v2, :cond_7

    .line 137
    iget v0, v10, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    int-to-float v2, v9

    mul-float v6, v0, v2

    float-to-int v6, v6

    move-object/from16 v7, v17

    iget v8, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float v12, v8, v2

    float-to-int v12, v12

    if-le v6, v12, :cond_6

    mul-float v6, v0, v2

    float-to-int v6, v6

    const/4 v12, 0x3

    aget-object v13, v16, v12

    iget v12, v13, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float v15, v12, v2

    float-to-int v15, v15

    if-le v6, v15, :cond_6

    const/4 v6, 0x0

    aget-object v7, v4, v6

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 141
    iput v3, v7, Landroid/graphics/Point;->x:I

    mul-float/2addr v8, v2

    float-to-int v3, v8

    .line 142
    iput v3, v7, Landroid/graphics/Point;->y:I

    const/4 v3, 0x1

    aget-object v3, v4, v3

    .line 143
    iget v6, v13, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v6, v1

    float-to-int v6, v6

    iput v6, v3, Landroid/graphics/Point;->x:I

    mul-float/2addr v12, v2

    float-to-int v6, v12

    .line 144
    iput v6, v3, Landroid/graphics/Point;->y:I

    const/4 v3, 0x2

    aget-object v3, v4, v3

    mul-float/2addr v11, v1

    float-to-int v6, v11

    .line 145
    iput v6, v3, Landroid/graphics/Point;->x:I

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 146
    iput v0, v3, Landroid/graphics/Point;->y:I

    mul-float/2addr v14, v1

    float-to-int v0, v14

    .line 147
    iput v0, v5, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p1

    .line 148
    iget v0, v0, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v5, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p1

    goto :goto_3

    :cond_7
    move-object/from16 v0, p1

    move-object/from16 v7, v17

    :goto_3
    const/4 v2, 0x0

    aget-object v6, v4, v2

    mul-float/2addr v14, v1

    float-to-int v8, v14

    .line 150
    iput v8, v6, Landroid/graphics/Point;->x:I

    .line 151
    iget v0, v0, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    int-to-float v8, v9

    mul-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, v6, Landroid/graphics/Point;->y:I

    const/4 v0, 0x1

    aget-object v0, v4, v0

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 152
    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 153
    iget v3, v7, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v3, v8

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    const/4 v0, 0x2

    aget-object v0, v4, v0

    const/4 v3, 0x3

    .line 154
    aget-object v3, v16, v3

    iget v6, v3, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v6, v1

    float-to-int v6, v6

    iput v6, v0, Landroid/graphics/Point;->x:I

    .line 155
    iget v3, v3, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v3, v8

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    mul-float/2addr v11, v1

    float-to-int v0, v11

    .line 156
    iput v0, v5, Landroid/graphics/Point;->x:I

    .line 157
    iget v0, v10, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, v5, Landroid/graphics/Point;->y:I

    :goto_4
    move v6, v2

    const/4 v0, 0x4

    :goto_5
    if-ge v6, v0, :cond_8

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_8
    return-object v4

    .line 93
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "srcBmp cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
