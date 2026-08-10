.class public Lcom/singleblur/faceapi/FaceVerify;
.super Lcom/singleblur/faceapi/FaceHandleBase;
.source "FaceVerify.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "FaceVerify"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/singleblur/faceapi/FaceHandleBase;-><init>()V

    .line 24
    invoke-direct {p0, p1}, Lcom/singleblur/faceapi/FaceVerify;->init(Ljava/lang/String;)V

    return-void
.end method

.method private init(Ljava/lang/String;)V
    .locals 2

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    invoke-static {p1}, Lcom/singleblur/faceapi/FaceLibrary;->cvFaceCreateVerify(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mCvFaceHandle:J

    return-void

    .line 29
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "verify model path is null!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public compareFeature([B[B)F
    .locals 3

    .line 106
    iget-wide v0, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mCvFaceHandle:J

    iget-object v2, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mResultCode:[I

    invoke-static {v0, v1, p1, p2, v2}, Lcom/singleblur/faceapi/FaceLibrary;->cvFaceCompareFeature(J[B[B[I)F

    move-result p1

    .line 107
    iget-object p2, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mResultCode:[I

    const/4 v0, 0x0

    aget p2, p2, v0

    invoke-virtual {p0, p2}, Lcom/singleblur/faceapi/FaceHandleBase;->checkResultCode(I)V

    return p1
.end method

.method public getFeature(Landroid/graphics/Bitmap;Lcom/singleblur/faceapi/model/FaceInfo;)[B
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, p2, v0}, Lcom/singleblur/faceapi/FaceVerify;->getFeature(Landroid/graphics/Bitmap;Lcom/singleblur/faceapi/model/FaceInfo;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public getFeature(Landroid/graphics/Bitmap;Lcom/singleblur/faceapi/model/FaceInfo;[B)[B
    .locals 9

    if-eqz p1, :cond_4

    .line 45
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    :cond_1
    if-nez p3, :cond_2

    .line 55
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0, p3, v0}, Lcom/singleblur/faceapi/FaceHandleBase;->createBufferIfNeed(II)[B

    move-result-object p3

    goto :goto_0

    .line 56
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

    .line 59
    invoke-static {p1, v3}, Lcom/singleblur/faceapi/utils/ColorConvertUtil;->getBGRADataFromBitmap(Landroid/graphics/Bitmap;[B)V

    .line 60
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

    invoke-virtual/range {v2 .. v8}, Lcom/singleblur/faceapi/FaceVerify;->getFeature([BLcom/singleblur/faceapi/model/CvPixelFormat;IIILcom/singleblur/faceapi/model/FaceInfo;)[B

    move-result-object p0

    return-object p0

    .line 57
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "detect buffer is illegal !"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    const-string p0, "FaceVerify"

    const-string p1, "image is null or Recycled"

    .line 47
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFeature([BLcom/singleblur/faceapi/model/CvPixelFormat;IIILcom/singleblur/faceapi/model/FaceInfo;)[B
    .locals 9

    .line 92
    iget-wide v0, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mCvFaceHandle:J

    invoke-virtual {p2}, Lcom/singleblur/faceapi/model/CvPixelFormat;->getValue()I

    move-result v3

    iget-object v8, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mResultCode:[I

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v8}, Lcom/singleblur/faceapi/FaceLibrary;->cvFaceGetFeatureBytes(J[BIIIILcom/singleblur/faceapi/model/FaceInfo;[I)[B

    move-result-object p1

    .line 94
    iget-object p2, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mResultCode:[I

    const/4 p3, 0x0

    aget p2, p2, p3

    invoke-virtual {p0, p2}, Lcom/singleblur/faceapi/FaceHandleBase;->checkResultCode(I)V

    return-object p1
.end method

.method public getFeature([ILcom/singleblur/faceapi/model/CvPixelFormat;IIILcom/singleblur/faceapi/model/FaceInfo;)[B
    .locals 9

    .line 75
    iget-wide v0, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mCvFaceHandle:J

    invoke-virtual {p2}, Lcom/singleblur/faceapi/model/CvPixelFormat;->getValue()I

    move-result v3

    iget-object v8, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mResultCode:[I

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v8}, Lcom/singleblur/faceapi/FaceLibrary;->cvFaceGetFeatureInts(J[IIIIILcom/singleblur/faceapi/model/FaceInfo;[I)[B

    move-result-object p1

    .line 77
    iget-object p2, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mResultCode:[I

    const/4 p3, 0x0

    aget p2, p2, p3

    invoke-virtual {p0, p2}, Lcom/singleblur/faceapi/FaceHandleBase;->checkResultCode(I)V

    return-object p1
.end method

.method protected releaseHandle()V
    .locals 2

    .line 113
    iget-wide v0, p0, Lcom/singleblur/faceapi/FaceHandleBase;->mCvFaceHandle:J

    invoke-static {v0, v1}, Lcom/singleblur/faceapi/FaceLibrary;->cvFaceDestroyVerify(J)V

    return-void
.end method
