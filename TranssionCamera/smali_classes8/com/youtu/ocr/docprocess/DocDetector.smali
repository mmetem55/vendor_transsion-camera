.class public Lcom/youtu/ocr/docprocess/DocDetector;
.super Ljava/lang/Object;
.source "DocDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;
    }
.end annotation


# static fields
.field private static mGussianBlur:Lcom/youtu/ocr/docprocess/GussianBlur;

.field public static final sharedInstance:Lcom/youtu/ocr/docprocess/DocDetector;

.field private static size:I


# instance fields
.field private mDetectResultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/youtu/ocr/docprocess/IText$DetectResult;",
            ">;"
        }
    .end annotation
.end field

.field private mRangeInPx:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "YTCommon"

    .line 20
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "common"

    .line 21
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/youtu/ocr/docprocess/DocDetector;

    invoke-direct {v0}, Lcom/youtu/ocr/docprocess/DocDetector;-><init>()V

    sput-object v0, Lcom/youtu/ocr/docprocess/DocDetector;->sharedInstance:Lcom/youtu/ocr/docprocess/DocDetector;

    const/4 v0, 0x5

    .line 31
    sput v0, Lcom/youtu/ocr/docprocess/DocDetector;->size:I

    .line 34
    new-instance v1, Lcom/youtu/ocr/docprocess/GussianBlur;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/youtu/ocr/docprocess/GussianBlur;-><init>(II)V

    sput-object v1, Lcom/youtu/ocr/docprocess/DocDetector;->mGussianBlur:Lcom/youtu/ocr/docprocess/GussianBlur;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    .line 32
    iput v0, p0, Lcom/youtu/ocr/docprocess/DocDetector;->mRangeInPx:I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    sget v1, Lcom/youtu/ocr/docprocess/DocDetector;->size:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/youtu/ocr/docprocess/DocDetector;->mDetectResultList:Ljava/util/List;

    return-void
.end method

.method private blueDetectResult(Lcom/youtu/ocr/docprocess/IText$DetectResult;)Lcom/youtu/ocr/docprocess/IText$DetectResult;
    .locals 26

    move-object/from16 v0, p0

    .line 219
    iget-object v1, v0, Lcom/youtu/ocr/docprocess/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/youtu/ocr/docprocess/DocDetector;->size:I

    if-ge v1, v2, :cond_0

    const-string v0, "DocDetector"

    const-string v1, "blueDetectResult error return"

    .line 220
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_0
    const-wide/16 v2, 0x0

    move-wide v4, v2

    move-wide v6, v4

    move-wide v8, v6

    move-wide v10, v8

    move-wide v12, v10

    move-wide/from16 v16, v12

    move-wide/from16 v18, v16

    const/4 v1, 0x0

    .line 232
    :goto_0
    sget v14, Lcom/youtu/ocr/docprocess/DocDetector;->size:I

    const/16 v20, 0x2

    const/4 v15, 0x1

    if-ge v1, v14, :cond_2

    .line 233
    iget-object v14, v0, Lcom/youtu/ocr/docprocess/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/youtu/ocr/docprocess/IText$DetectResult;

    invoke-virtual {v14}, Lcom/youtu/ocr/docprocess/IText$DetectResult;->getHasResult()Z

    move-result v14

    if-nez v14, :cond_1

    goto/16 :goto_1

    .line 236
    :cond_1
    iget-object v14, v0, Lcom/youtu/ocr/docprocess/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/youtu/ocr/docprocess/IText$DetectResult;

    iget-object v14, v14, Lcom/youtu/ocr/docprocess/IText$DetectResult;->pointArr:[Landroid/graphics/Point;

    const/16 v22, 0x0

    aget-object v14, v14, v22

    iget v14, v14, Landroid/graphics/Point;->x:I

    move-wide/from16 v22, v12

    int-to-double v12, v14

    sget-object v14, Lcom/youtu/ocr/docprocess/DocDetector;->mGussianBlur:Lcom/youtu/ocr/docprocess/GussianBlur;

    invoke-virtual {v14}, Lcom/youtu/ocr/docprocess/GussianBlur;->getmGussianWeight()[D

    move-result-object v14

    aget-wide v24, v14, v1

    mul-double v12, v12, v24

    add-double/2addr v2, v12

    .line 238
    iget-object v12, v0, Lcom/youtu/ocr/docprocess/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/youtu/ocr/docprocess/IText$DetectResult;

    iget-object v12, v12, Lcom/youtu/ocr/docprocess/IText$DetectResult;->pointArr:[Landroid/graphics/Point;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    iget v12, v12, Landroid/graphics/Point;->y:I

    int-to-double v12, v12

    sget-object v14, Lcom/youtu/ocr/docprocess/DocDetector;->mGussianBlur:Lcom/youtu/ocr/docprocess/GussianBlur;

    invoke-virtual {v14}, Lcom/youtu/ocr/docprocess/GussianBlur;->getmGussianWeight()[D

    move-result-object v14

    aget-wide v24, v14, v1

    mul-double v12, v12, v24

    add-double/2addr v4, v12

    .line 241
    iget-object v12, v0, Lcom/youtu/ocr/docprocess/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/youtu/ocr/docprocess/IText$DetectResult;

    iget-object v12, v12, Lcom/youtu/ocr/docprocess/IText$DetectResult;->pointArr:[Landroid/graphics/Point;

    aget-object v12, v12, v15

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-double v12, v12

    sget-object v14, Lcom/youtu/ocr/docprocess/DocDetector;->mGussianBlur:Lcom/youtu/ocr/docprocess/GussianBlur;

    invoke-virtual {v14}, Lcom/youtu/ocr/docprocess/GussianBlur;->getmGussianWeight()[D

    move-result-object v14

    aget-wide v24, v14, v1

    mul-double v12, v12, v24

    add-double/2addr v6, v12

    .line 243
    iget-object v12, v0, Lcom/youtu/ocr/docprocess/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/youtu/ocr/docprocess/IText$DetectResult;

    iget-object v12, v12, Lcom/youtu/ocr/docprocess/IText$DetectResult;->pointArr:[Landroid/graphics/Point;

    aget-object v12, v12, v15

    iget v12, v12, Landroid/graphics/Point;->y:I

    int-to-double v12, v12

    sget-object v14, Lcom/youtu/ocr/docprocess/DocDetector;->mGussianBlur:Lcom/youtu/ocr/docprocess/GussianBlur;

    invoke-virtual {v14}, Lcom/youtu/ocr/docprocess/GussianBlur;->getmGussianWeight()[D

    move-result-object v14

    aget-wide v14, v14, v1

    mul-double/2addr v12, v14

    add-double/2addr v8, v12

    .line 246
    iget-object v12, v0, Lcom/youtu/ocr/docprocess/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/youtu/ocr/docprocess/IText$DetectResult;

    iget-object v12, v12, Lcom/youtu/ocr/docprocess/IText$DetectResult;->pointArr:[Landroid/graphics/Point;

    aget-object v12, v12, v20

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-double v12, v12

    sget-object v14, Lcom/youtu/ocr/docprocess/DocDetector;->mGussianBlur:Lcom/youtu/ocr/docprocess/GussianBlur;

    invoke-virtual {v14}, Lcom/youtu/ocr/docprocess/GussianBlur;->getmGussianWeight()[D

    move-result-object v14

    aget-wide v14, v14, v1

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    .line 248
    iget-object v12, v0, Lcom/youtu/ocr/docprocess/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/youtu/ocr/docprocess/IText$DetectResult;

    iget-object v12, v12, Lcom/youtu/ocr/docprocess/IText$DetectResult;->pointArr:[Landroid/graphics/Point;

    aget-object v12, v12, v20

    iget v12, v12, Landroid/graphics/Point;->y:I

    int-to-double v12, v12

    sget-object v14, Lcom/youtu/ocr/docprocess/DocDetector;->mGussianBlur:Lcom/youtu/ocr/docprocess/GussianBlur;

    invoke-virtual {v14}, Lcom/youtu/ocr/docprocess/GussianBlur;->getmGussianWeight()[D

    move-result-object v14

    aget-wide v14, v14, v1

    mul-double/2addr v12, v14

    add-double v12, v22, v12

    .line 251
    iget-object v14, v0, Lcom/youtu/ocr/docprocess/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/youtu/ocr/docprocess/IText$DetectResult;

    iget-object v14, v14, Lcom/youtu/ocr/docprocess/IText$DetectResult;->pointArr:[Landroid/graphics/Point;

    const/4 v15, 0x3

    aget-object v14, v14, v15

    iget v14, v14, Landroid/graphics/Point;->x:I

    int-to-double v14, v14

    sget-object v20, Lcom/youtu/ocr/docprocess/DocDetector;->mGussianBlur:Lcom/youtu/ocr/docprocess/GussianBlur;

    invoke-virtual/range {v20 .. v20}, Lcom/youtu/ocr/docprocess/GussianBlur;->getmGussianWeight()[D

    move-result-object v20

    aget-wide v22, v20, v1

    mul-double v14, v14, v22

    add-double v18, v18, v14

    .line 253
    iget-object v14, v0, Lcom/youtu/ocr/docprocess/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/youtu/ocr/docprocess/IText$DetectResult;

    iget-object v14, v14, Lcom/youtu/ocr/docprocess/IText$DetectResult;->pointArr:[Landroid/graphics/Point;

    const/4 v15, 0x3

    aget-object v14, v14, v15

    iget v14, v14, Landroid/graphics/Point;->y:I

    int-to-double v14, v14

    sget-object v20, Lcom/youtu/ocr/docprocess/DocDetector;->mGussianBlur:Lcom/youtu/ocr/docprocess/GussianBlur;

    invoke-virtual/range {v20 .. v20}, Lcom/youtu/ocr/docprocess/GussianBlur;->getmGussianWeight()[D

    move-result-object v20

    aget-wide v20, v20, v1

    mul-double v14, v14, v20

    move-wide/from16 v20, v12

    move-wide/from16 v12, v16

    add-double v16, v12, v14

    move-wide/from16 v12, v20

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    move-wide/from16 v22, v12

    move-wide/from16 v12, v16

    .line 256
    new-instance v0, Landroid/graphics/Point;

    double-to-int v1, v2

    double-to-int v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 257
    new-instance v1, Landroid/graphics/Point;

    double-to-int v2, v6

    double-to-int v3, v8

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 258
    new-instance v2, Landroid/graphics/Point;

    double-to-int v3, v10

    move-wide/from16 v4, v22

    double-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 259
    new-instance v3, Landroid/graphics/Point;

    move-wide/from16 v4, v18

    double-to-int v4, v4

    double-to-int v5, v12

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/graphics/Point;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    aput-object v1, v4, v15

    aput-object v2, v4, v20

    const/4 v0, 0x3

    aput-object v3, v4, v0

    .line 266
    new-instance v0, Lcom/youtu/ocr/docprocess/IText$DetectResult;

    invoke-direct {v0, v15, v4}, Lcom/youtu/ocr/docprocess/IText$DetectResult;-><init>(Z[Landroid/graphics/Point;)V

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public coordinateTransform([Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;I)V
    .locals 2

    const/4 v0, 0x0

    .line 413
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 414
    aget-object v1, p1, v0

    invoke-virtual {p0, p2, v1}, Lcom/youtu/ocr/docprocess/DocDetector;->standardCoordinate2RealCoordinate(ILcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;)Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public rectifyByBitmap(Landroid/graphics/Bitmap;[I)Landroid/graphics/Bitmap;
    .locals 8

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/Point;

    .line 492
    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x0

    aget v4, p2, v3

    const/4 v5, 0x1

    aget v6, p2, v5

    invoke-direct {v2, v4, v6}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v1, v3

    .line 493
    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x2

    aget v4, p2, v3

    const/4 v6, 0x3

    aget v7, p2, v6

    invoke-direct {v2, v4, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v1, v5

    .line 494
    new-instance v2, Landroid/graphics/Point;

    aget v0, p2, v0

    const/4 v4, 0x5

    aget v4, p2, v4

    invoke-direct {v2, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v1, v3

    .line 495
    new-instance v0, Landroid/graphics/Point;

    const/4 v2, 0x6

    aget v2, p2, v2

    const/4 v3, 0x7

    aget p2, p2, v3

    invoke-direct {v0, v2, p2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v0, v1, v6

    .line 496
    invoke-virtual {p0, p1, v1}, Lcom/youtu/ocr/docprocess/DocDetector;->xnnQuad(Landroid/graphics/Bitmap;[Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public standardCoordinate2RealCoordinate(ILcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;)Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;
    .locals 1

    const/high16 p0, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    .line 436
    new-instance p1, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;

    iget v0, p2, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    sub-float/2addr p0, v0

    iget p2, p2, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    invoke-direct {p1, p0, p2}, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;-><init>(FF)V

    :goto_0
    move-object p2, p1

    goto :goto_1

    :cond_0
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_1

    .line 438
    new-instance p0, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;

    iget p1, p2, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    iget p2, p2, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    invoke-direct {p0, p1, p2}, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;-><init>(FF)V

    move-object p2, p0

    goto :goto_1

    :cond_1
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_2

    .line 440
    new-instance p1, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;

    iget v0, p2, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    iget p2, p2, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    sub-float/2addr p0, p2

    invoke-direct {p1, v0, p0}, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;-><init>(FF)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x10e

    if-ne p1, v0, :cond_3

    .line 442
    new-instance p1, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;

    iget v0, p2, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    sub-float v0, p0, v0

    iget p2, p2, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    sub-float/2addr p0, p2

    invoke-direct {p1, v0, p0}, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;-><init>(FF)V

    goto :goto_0

    :cond_3
    :goto_1
    return-object p2
.end method

.method public native xnnApply(Landroid/graphics/Bitmap;)Ljava/lang/String;
.end method

.method public native xnnApplyByByte([BIII)Ljava/lang/String;
.end method

.method public native xnnDestory()V
.end method

.method public xnnDetectorApply(Landroid/graphics/Bitmap;)[Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;
    .locals 2

    .line 293
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 294
    invoke-virtual {p0, p1}, Lcom/youtu/ocr/docprocess/DocDetector;->xnnApply(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\"

    const-string v1, ""

    .line 295
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "null object"

    .line 296
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 299
    :cond_0
    const-class p1, [Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;

    return-object p0
.end method

.method public xnnDetectorApply([BIII)[Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;
    .locals 17

    move-object/from16 v0, p0

    .line 304
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 305
    invoke-virtual/range {p0 .. p4}, Lcom/youtu/ocr/docprocess/DocDetector;->xnnApplyByByte([BIII)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\"

    const-string v4, ""

    .line 307
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 311
    :cond_0
    const-class v3, [Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;

    .line 312
    new-instance v2, Lcom/youtu/ocr/docprocess/IText$DetectResult;

    invoke-direct {v2}, Lcom/youtu/ocr/docprocess/IText$DetectResult;-><init>()V

    if-eqz v1, :cond_7

    .line 315
    new-instance v3, Landroid/graphics/Point;

    const/4 v4, 0x0

    aget-object v5, v1, v4

    iget v6, v5, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    move/from16 v7, p2

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iget v5, v5, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    move/from16 v8, p3

    int-to-float v8, v8

    mul-float/2addr v5, v8

    float-to-int v5, v5

    invoke-direct {v3, v6, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 316
    new-instance v5, Landroid/graphics/Point;

    const/4 v6, 0x1

    aget-object v9, v1, v6

    iget v10, v9, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iget v9, v9, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v9, v8

    float-to-int v9, v9

    invoke-direct {v5, v10, v9}, Landroid/graphics/Point;-><init>(II)V

    .line 317
    new-instance v9, Landroid/graphics/Point;

    const/4 v10, 0x2

    aget-object v11, v1, v10

    iget v12, v11, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v12, v7

    float-to-int v12, v12

    iget v11, v11, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v11, v8

    float-to-int v11, v11

    invoke-direct {v9, v12, v11}, Landroid/graphics/Point;-><init>(II)V

    .line 318
    new-instance v11, Landroid/graphics/Point;

    const/4 v12, 0x3

    aget-object v13, v1, v12

    iget v14, v13, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    mul-float/2addr v14, v7

    float-to-int v14, v14

    iget v13, v13, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    mul-float/2addr v13, v8

    float-to-int v13, v13

    invoke-direct {v11, v14, v13}, Landroid/graphics/Point;-><init>(II)V

    .line 319
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "point0 = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " point1 = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " point2 = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " point3 = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "DocDetector"

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x4

    new-array v15, v13, [Landroid/graphics/Point;

    aput-object v3, v15, v4

    aput-object v5, v15, v6

    aput-object v9, v15, v10

    aput-object v11, v15, v12

    .line 321
    invoke-virtual {v2, v15}, Lcom/youtu/ocr/docprocess/IText$DetectResult;->setPointArr([Landroid/graphics/Point;)V

    .line 322
    iget-object v5, v0, Lcom/youtu/ocr/docprocess/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 323
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 325
    iget-object v9, v0, Lcom/youtu/ocr/docprocess/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v6

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/youtu/ocr/docprocess/IText$DetectResult;

    invoke-virtual {v9}, Lcom/youtu/ocr/docprocess/IText$DetectResult;->getPointArr()[Landroid/graphics/Point;

    move-result-object v9

    move/from16 v16, v4

    move v11, v6

    .line 326
    :goto_0
    array-length v12, v9

    if-ge v11, v12, :cond_2

    .line 327
    aget-object v12, v9, v11

    iget v12, v12, Landroid/graphics/Point;->x:I

    iget v10, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v12, v10

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v10

    aget-object v12, v9, v11

    iget v12, v12, Landroid/graphics/Point;->y:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v12, v6

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v10, v6

    aget-object v6, v9, v16

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget v12, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v12

    .line 328
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    aget-object v12, v9, v16

    iget v12, v12, Landroid/graphics/Point;->y:I

    iget v4, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v12, v4

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v6, v4

    if-ge v10, v6, :cond_1

    move/from16 v16, v11

    :cond_1
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v10, 0x2

    goto :goto_0

    :cond_2
    new-array v3, v13, [Landroid/graphics/Point;

    const/4 v4, 0x0

    aget-object v6, v15, v4

    .line 333
    aput-object v6, v3, v16

    add-int/lit8 v4, v16, 0x1

    .line 334
    rem-int/2addr v4, v13

    const/4 v6, 0x1

    aget-object v9, v15, v6

    aput-object v9, v3, v4

    add-int/lit8 v4, v16, 0x2

    .line 335
    rem-int/2addr v4, v13

    const/4 v6, 0x2

    aget-object v9, v15, v6

    aput-object v9, v3, v4

    const/4 v4, 0x3

    add-int/lit8 v16, v16, 0x3

    .line 336
    rem-int/lit8 v16, v16, 0x4

    aget-object v6, v15, v4

    aput-object v6, v3, v16

    .line 337
    invoke-virtual {v2, v3}, Lcom/youtu/ocr/docprocess/IText$DetectResult;->setPointArr([Landroid/graphics/Point;)V

    new-array v4, v13, [Landroid/graphics/Point;

    .line 338
    iget-object v6, v0, Lcom/youtu/ocr/docprocess/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youtu/ocr/docprocess/IText$DetectResult;

    invoke-virtual {v6}, Lcom/youtu/ocr/docprocess/IText$DetectResult;->getPointArr()[Landroid/graphics/Point;

    move-result-object v6

    const/4 v9, 0x0

    aget-object v6, v6, v9

    aput-object v6, v4, v9

    iget-object v6, v0, Lcom/youtu/ocr/docprocess/DocDetector;->mDetectResultList:Ljava/util/List;

    .line 339
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v10

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youtu/ocr/docprocess/IText$DetectResult;

    invoke-virtual {v6}, Lcom/youtu/ocr/docprocess/IText$DetectResult;->getPointArr()[Landroid/graphics/Point;

    move-result-object v6

    aget-object v6, v6, v10

    aput-object v6, v4, v10

    iget-object v6, v0, Lcom/youtu/ocr/docprocess/DocDetector;->mDetectResultList:Ljava/util/List;

    .line 340
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v10

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youtu/ocr/docprocess/IText$DetectResult;

    invoke-virtual {v6}, Lcom/youtu/ocr/docprocess/IText$DetectResult;->getPointArr()[Landroid/graphics/Point;

    move-result-object v6

    const/4 v9, 0x2

    aget-object v6, v6, v9

    aput-object v6, v4, v9

    iget-object v6, v0, Lcom/youtu/ocr/docprocess/DocDetector;->mDetectResultList:Ljava/util/List;

    .line 341
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v10

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/youtu/ocr/docprocess/IText$DetectResult;

    invoke-virtual {v6}, Lcom/youtu/ocr/docprocess/IText$DetectResult;->getPointArr()[Landroid/graphics/Point;

    move-result-object v6

    const/4 v9, 0x3

    aget-object v6, v6, v9

    aput-object v6, v4, v9

    .line 342
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    aget-object v10, v3, v9

    .line 343
    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v10, v3, v9

    .line 344
    iget v9, v10, Landroid/graphics/Point;->y:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    aget-object v10, v3, v9

    .line 345
    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v10, v3, v9

    .line 346
    iget v9, v10, Landroid/graphics/Point;->y:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x2

    aget-object v10, v3, v9

    .line 347
    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v10, v3, v9

    .line 348
    iget v9, v10, Landroid/graphics/Point;->y:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x3

    aget-object v10, v3, v9

    .line 349
    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v3, v3, v9

    .line 350
    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    aget-object v10, v4, v9

    .line 352
    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v10, v4, v9

    .line 353
    iget v9, v10, Landroid/graphics/Point;->y:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    aget-object v10, v4, v9

    .line 354
    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v10, v4, v9

    .line 355
    iget v9, v10, Landroid/graphics/Point;->y:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x2

    aget-object v10, v4, v9

    .line 356
    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v10, v4, v9

    .line 357
    iget v9, v10, Landroid/graphics/Point;->y:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x3

    aget-object v10, v4, v9

    .line 358
    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v4, v4, v9

    .line 359
    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 361
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v4, 0x0

    .line 362
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    .line 363
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    .line 364
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x3

    .line 365
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x5

    .line 367
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x6

    .line 368
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x7

    .line 369
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 372
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget v9, v0, Lcom/youtu/ocr/docprocess/DocDetector;->mRangeInPx:I

    if-le v6, v9, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v6, 0x1

    if-le v4, v6, :cond_5

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maxdiff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " clear"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v3, v0, Lcom/youtu/ocr/docprocess/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_5
    const/4 v3, 0x1

    .line 385
    invoke-virtual {v2, v3}, Lcom/youtu/ocr/docprocess/IText$DetectResult;->setHasResult(Z)V

    .line 387
    iget-boolean v3, v2, Lcom/youtu/ocr/docprocess/IText$DetectResult;->hasResult:Z

    if-eqz v3, :cond_6

    .line 388
    iget-object v3, v0, Lcom/youtu/ocr/docprocess/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sget v4, Lcom/youtu/ocr/docprocess/DocDetector;->size:I

    if-ge v3, v4, :cond_6

    .line 389
    iget-object v3, v0, Lcom/youtu/ocr/docprocess/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    :cond_6
    invoke-direct {v0, v2}, Lcom/youtu/ocr/docprocess/DocDetector;->blueDetectResult(Lcom/youtu/ocr/docprocess/IText$DetectResult;)Lcom/youtu/ocr/docprocess/IText$DetectResult;

    move-result-object v0

    const/4 v2, 0x0

    .line 396
    aget-object v3, v1, v2

    invoke-virtual {v0}, Lcom/youtu/ocr/docprocess/IText$DetectResult;->getPointArr()[Landroid/graphics/Point;

    move-result-object v4

    aget-object v4, v4, v2

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    iput v4, v3, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    .line 397
    aget-object v3, v1, v2

    invoke-virtual {v0}, Lcom/youtu/ocr/docprocess/IText$DetectResult;->getPointArr()[Landroid/graphics/Point;

    move-result-object v4

    aget-object v2, v4, v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v2, v8

    iput v2, v3, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    const/4 v2, 0x1

    .line 398
    aget-object v3, v1, v2

    invoke-virtual {v0}, Lcom/youtu/ocr/docprocess/IText$DetectResult;->getPointArr()[Landroid/graphics/Point;

    move-result-object v4

    aget-object v4, v4, v2

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    iput v4, v3, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    .line 399
    aget-object v3, v1, v2

    invoke-virtual {v0}, Lcom/youtu/ocr/docprocess/IText$DetectResult;->getPointArr()[Landroid/graphics/Point;

    move-result-object v4

    aget-object v2, v4, v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v2, v8

    iput v2, v3, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    const/4 v2, 0x2

    .line 400
    aget-object v3, v1, v2

    invoke-virtual {v0}, Lcom/youtu/ocr/docprocess/IText$DetectResult;->getPointArr()[Landroid/graphics/Point;

    move-result-object v4

    aget-object v4, v4, v2

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    iput v4, v3, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    .line 401
    aget-object v3, v1, v2

    invoke-virtual {v0}, Lcom/youtu/ocr/docprocess/IText$DetectResult;->getPointArr()[Landroid/graphics/Point;

    move-result-object v4

    aget-object v2, v4, v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v2, v8

    iput v2, v3, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    const/4 v2, 0x3

    .line 402
    aget-object v3, v1, v2

    invoke-virtual {v0}, Lcom/youtu/ocr/docprocess/IText$DetectResult;->getPointArr()[Landroid/graphics/Point;

    move-result-object v4

    aget-object v4, v4, v2

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    iput v4, v3, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->x:F

    .line 403
    aget-object v3, v1, v2

    invoke-virtual {v0}, Lcom/youtu/ocr/docprocess/IText$DetectResult;->getPointArr()[Landroid/graphics/Point;

    move-result-object v0

    aget-object v0, v0, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, v8

    iput v0, v3, Lcom/youtu/ocr/docprocess/DocDetector$DetectorPoint;->y:F

    return-object v1

    .line 382
    :cond_7
    iget-object v0, v0, Lcom/youtu/ocr/docprocess/DocDetector;->mDetectResultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object v1
.end method

.method public native xnnEnhance(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.end method

.method public native xnnInitedByByte([B)Z
.end method

.method public native xnnQuad(Landroid/graphics/Bitmap;[Landroid/graphics/Point;)Landroid/graphics/Bitmap;
.end method
