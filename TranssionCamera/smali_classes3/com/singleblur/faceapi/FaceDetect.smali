.class public Lcom/singleblur/faceapi/FaceDetect;
.super Lcom/singleblur/faceapi/FaceHandleBase;
.source "FaceDetect.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "FaceDetect"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0, v0, v0}, Lcom/singleblur/faceapi/FaceDetect;-><init>(Ljava/lang/String;Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;)V

    return-void
.end method

.method public constructor <init>(Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0, p1, p2}, Lcom/singleblur/faceapi/FaceDetect;-><init>(Ljava/lang/String;Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/singleblur/faceapi/FaceHandleBase;-><init>()V

    if-nez p2, :cond_0

    .line 37
    sget-object p2, Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;->DEFAULT_CONFIG:Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;

    :cond_0
    if-nez p3, :cond_1

    .line 40
    sget-object p3, Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;->POINT_COUNT_21:Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;

    .line 42
    :cond_1
    invoke-virtual {p2}, Lcom/singleblur/faceapi/model/FaceConfig$FaceImageResize;->getValue()I

    move-result p2

    invoke-virtual {p3}, Lcom/singleblur/faceapi/model/FaceConfig$FaceKeyPointCount;->getValue()I

    move-result p3

    or-int/2addr p2, p3

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/singleblur/faceapi/FaceDetect;->init(Ljava/lang/String;I)V

    return-void
.end method

.method private init(Ljava/lang/String;I)V
    .locals 0

    .line 50
    invoke-static {p1, p2}, Lcom/singleblur/faceapi/FaceLibrary;->cvFaceCreateDetector(Ljava/lang/String;I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mCvFaceHandle:J

    return-void
.end method

.method public static showInsideModel()V
    .locals 0

    .line 138
    invoke-static {}, Lcom/singleblur/faceapi/FaceLibrary;->cvFaceShowInsideModel()V

    return-void
.end method


# virtual methods
.method public detect(Landroid/graphics/Bitmap;)[Lcom/singleblur/faceapi/model/FaceInfo;
    .locals 1

    .line 66
    sget-object v0, Lcom/singleblur/faceapi/model/FaceOrientation;->UP:Lcom/singleblur/faceapi/model/FaceOrientation;

    invoke-virtual {p0, p1, v0}, Lcom/singleblur/faceapi/FaceDetect;->detect(Landroid/graphics/Bitmap;Lcom/singleblur/faceapi/model/FaceOrientation;)[Lcom/singleblur/faceapi/model/FaceInfo;

    move-result-object p0

    return-object p0
.end method

.method public detect(Landroid/graphics/Bitmap;Lcom/singleblur/faceapi/model/FaceOrientation;)[Lcom/singleblur/faceapi/model/FaceInfo;
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, p1, p2, v0}, Lcom/singleblur/faceapi/FaceDetect;->detect(Landroid/graphics/Bitmap;Lcom/singleblur/faceapi/model/FaceOrientation;[B)[Lcom/singleblur/faceapi/model/FaceInfo;

    move-result-object p0

    return-object p0
.end method

.method public detect(Landroid/graphics/Bitmap;Lcom/singleblur/faceapi/model/FaceOrientation;[B)[Lcom/singleblur/faceapi/model/FaceInfo;
    .locals 9

    if-eqz p1, :cond_4

    .line 80
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    :cond_1
    if-nez p3, :cond_2

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0, p3, v0}, Lcom/singleblur/faceapi/FaceHandleBase;->createBufferIfNeed(II)[B

    move-result-object p3

    goto :goto_0

    .line 91
    :cond_2
    array-length v0, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    if-ne v0, v1, :cond_3

    :goto_0
    move-object v3, p3

    .line 94
    invoke-static {p1, v3}, Lcom/singleblur/faceapi/utils/ColorConvertUtil;->getBGRADataFromBitmap(Landroid/graphics/Bitmap;[B)V

    .line 95
    sget-object v4, Lcom/singleblur/faceapi/model/CvPixelFormat;->BGRA8888:Lcom/singleblur/faceapi/model/CvPixelFormat;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    mul-int/lit8 v7, p1, 0x4

    move-object v2, p0

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/singleblur/faceapi/FaceDetect;->detect([BLcom/singleblur/faceapi/model/CvPixelFormat;IIILcom/singleblur/faceapi/model/FaceOrientation;)[Lcom/singleblur/faceapi/model/FaceInfo;

    move-result-object p0

    return-object p0

    .line 92
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "detect buffer is illegal !"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    const-string p0, "FaceDetect"

    const-string p1, "detect image is null or Recycled"

    .line 82
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public detect([BLcom/singleblur/faceapi/model/CvPixelFormat;IIILcom/singleblur/faceapi/model/FaceOrientation;)[Lcom/singleblur/faceapi/model/FaceInfo;
    .locals 9

    .line 131
    iget-wide v0, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mCvFaceHandle:J

    invoke-virtual {p2}, Lcom/singleblur/faceapi/model/CvPixelFormat;->getValue()I

    move-result v3

    .line 132
    invoke-virtual {p6}, Lcom/singleblur/faceapi/model/FaceOrientation;->getValue()I

    move-result v7

    iget-object v8, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mResultCode:[I

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    .line 131
    invoke-static/range {v0 .. v8}, Lcom/singleblur/faceapi/FaceLibrary;->cvFaceDetectBytes(J[BIIIII[I)[Lcom/singleblur/faceapi/model/FaceInfo;

    move-result-object p1

    .line 133
    invoke-virtual {p0}, Lcom/singleblur/faceapi/FaceHandleBase;->checkResultCode()V

    return-object p1
.end method

.method public detect([ILcom/singleblur/faceapi/model/CvPixelFormat;IIILcom/singleblur/faceapi/model/FaceOrientation;)[Lcom/singleblur/faceapi/model/FaceInfo;
    .locals 9

    .line 112
    iget-wide v0, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mCvFaceHandle:J

    invoke-virtual {p2}, Lcom/singleblur/faceapi/model/CvPixelFormat;->getValue()I

    move-result v3

    .line 113
    invoke-virtual {p6}, Lcom/singleblur/faceapi/model/FaceOrientation;->getValue()I

    move-result v7

    iget-object v8, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mResultCode:[I

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    .line 112
    invoke-static/range {v0 .. v8}, Lcom/singleblur/faceapi/FaceLibrary;->cvFaceDetectInts(J[IIIIII[I)[Lcom/singleblur/faceapi/model/FaceInfo;

    move-result-object p1

    .line 114
    invoke-virtual {p0}, Lcom/singleblur/faceapi/FaceHandleBase;->checkResultCode()V

    return-object p1
.end method

.method public getFaceThreshold()F
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mCvFaceHandle:J

    iget-object p0, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mResultCode:[I

    invoke-static {v0, v1, p0}, Lcom/singleblur/faceapi/FaceLibrary;->getDetectThreshold(J[I)F

    move-result p0

    return p0
.end method

.method protected releaseHandle()V
    .locals 2

    .line 143
    iget-wide v0, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mCvFaceHandle:J

    invoke-static {v0, v1}, Lcom/singleblur/faceapi/FaceLibrary;->cvFaceDestroyDetector(J)V

    return-void
.end method

.method public setFaceThreshold(F)V
    .locals 3

    .line 58
    iget-wide v0, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mCvFaceHandle:J

    iget-object v2, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mResultCode:[I

    invoke-static {v0, v1, p1, v2}, Lcom/singleblur/faceapi/FaceLibrary;->setDetectThreshold(JF[I)V

    .line 59
    iget-object p1, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mResultCode:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/singleblur/faceapi/FaceHandleBase;->checkResultCode(I)V

    return-void
.end method
