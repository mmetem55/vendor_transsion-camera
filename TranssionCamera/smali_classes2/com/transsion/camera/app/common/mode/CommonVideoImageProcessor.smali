.class public Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;
.super Lcom/transsion/camera/app/common/mode/ImageProcessor;
.source "CommonVideoImageProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;,
        Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;,
        Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$IExecuteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/camera/app/common/mode/ImageProcessor<",
        "Lcom/transsion/camera/app/common/mode/CaptureInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile mAlgorithmMigrate:Z

.field private mResultPairProducer:Lcom/transsion/camera/utils/PairProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/utils/PairProducer<",
            "Lcom/transsion/camera/adapter/CameraResults;",
            "Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSizeConvert:Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;

.field protected mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;-><init>(Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;)V

    .line 42
    new-instance p1, Lcom/transsion/camera/utils/PairProducer;

    invoke-direct {p1}, Lcom/transsion/camera/utils/PairProducer;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->mResultPairProducer:Lcom/transsion/camera/utils/PairProducer;

    return-void
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;Lcom/transsion/camera/adapter/CameraResults;[BIIIIZ)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p7}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->onYuvImage(Lcom/transsion/camera/adapter/CameraResults;[BIIIIZ)V

    return-void
.end method

.method private addLocationInfoToResults(Lcom/transsion/camera/adapter/CameraResults;)V
    .locals 5

    .line 254
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTempLocation:Landroid/location/Location;

    .line 256
    :try_start_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mLocationManager:Lcom/transsion/camera/app/common/location/LocationManager;

    if-eqz v1, :cond_0

    const-string v2, "key_location"

    .line 257
    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/common/location/LocationManager;->getCurrentLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 260
    iget-object v2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get location exception, use temp location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 264
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "addLocationInfoToResults location is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 267
    :cond_1
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/adapter/CameraResults;->setGpsLatitude(D)V

    .line 268
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/transsion/camera/adapter/CameraResults;->setGpsLongitude(D)V

    .line 269
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/transsion/camera/adapter/CameraResults;->setGpsTimeStamp(J)V

    return-void
.end method

.method private getDstJpegSize(II)Landroid/util/Size;
    .locals 1

    .line 318
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    .line 319
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->mSizeConvert:Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;

    if-nez p1, :cond_0

    .line 320
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "getDstJpegSize mSizeConvert is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0

    .line 323
    :cond_0
    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;->getOriginalSize(Landroid/util/Size;)Landroid/util/Size;

    move-result-object p1

    .line 324
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDstJpegSize originalSize: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p1
.end method

.method private onPairJpegInfo(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPairJpegInfo"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 239
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->writeJpegExif(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)[B

    move-result-object v0

    .line 242
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->access$700(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->onJpeg([BZ)V

    return-void
.end method

.method private onPictureDataAndCameraResults(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->onPictureDataAndCameraResults(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$IExecuteListener;)V

    return-void
.end method

.method private onPictureDataAndCameraResults(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$IExecuteListener;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onPictureDataAndCameraResults"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 108
    new-instance v0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$1;-><init>(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$IExecuteListener;)V

    invoke-static {v0}, Lcom/transsion/camera/app/common/algorithm/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onYuvImage(Lcom/transsion/camera/adapter/CameraResults;[BIIIIZ)V
    .locals 11

    move-object v10, p0

    .line 122
    iget-object v0, v10, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] onYuvImage start"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p2

    move/from16 v2, p5

    move v3, p3

    move v4, p4

    move/from16 v5, p6

    .line 125
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->algorithmProcess([BIIII)[B

    move-result-object v2

    move v4, p3

    move v5, p4

    .line 129
    invoke-direct {p0, p3, p4}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->getDstJpegSize(II)Landroid/util/Size;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 131
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 132
    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    rem-int/lit16 v8, v3, 0x168

    const/16 v3, 0x5a

    if-eq v8, v3, :cond_1

    const/16 v3, 0x10e

    if-ne v8, v3, :cond_0

    goto :goto_0

    :cond_0
    move v7, v0

    move v6, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v0

    move v7, v1

    .line 139
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->algorithmProcessAfterTransform()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p5

    move v4, p3

    move v5, p4

    move/from16 v9, p7

    .line 140
    invoke-direct/range {v0 .. v9}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->transformThenEncode(Lcom/transsion/camera/adapter/CameraResults;[BIIIIIIZ)V

    goto :goto_2

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p5

    move v4, p3

    move v5, p4

    move/from16 v9, p7

    .line 143
    invoke-direct/range {v0 .. v9}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->transformAndEncode(Lcom/transsion/camera/adapter/CameraResults;[BIIIIIIZ)V

    .line 147
    :goto_2
    iget-object v0, v10, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] onYuvImage end"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private transformAndEncode(Lcom/transsion/camera/adapter/CameraResults;[BIIIIIIZ)V
    .locals 10

    move-object v9, p0

    .line 221
    iget-object v0, v9, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] transformAndEncode"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 224
    iget-boolean v8, v9, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mMirror:Z

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v8}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->jpegEncode([BIIIIIIZ)[B

    move-result-object v2

    if-nez v2, :cond_0

    .line 227
    iget-object v0, v9, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onNv21 jpegData is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 231
    :cond_0
    new-instance v6, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;

    move-object v0, v6

    move-object v1, p1

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;-><init>(Lcom/transsion/camera/adapter/CameraResults;[BIIZ)V

    .line 232
    invoke-direct {p0, v6}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->onPairJpegInfo(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)V

    return-void
.end method

.method private transformThenEncode(Lcom/transsion/camera/adapter/CameraResults;[BIIIIIIZ)V
    .locals 13

    move-object v9, p0

    move/from16 v10, p3

    move/from16 v11, p6

    move/from16 v12, p7

    .line 178
    iget-object v0, v9, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[CapturePerformance] transformThenEncode"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    move/from16 v3, p4

    move/from16 v4, p5

    if-nez p8, :cond_1

    if-ne v3, v11, :cond_1

    if-eq v4, v12, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 186
    iget-boolean v8, v9, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mMirror:Z

    move-object v0, p0

    move-object v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v8}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->transform([BIIIIIIZ)[B

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, p2

    .line 191
    :goto_2
    invoke-virtual {p0, v0, v11, v12, v10}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->algorithmProcessAfterTransform([BIII)[B

    move-result-object v0

    .line 195
    invoke-virtual {p0, v0, v10, v11, v12}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->jpegEncode([BIII)[B

    move-result-object v2

    if-nez v2, :cond_3

    .line 197
    iget-object v0, v9, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "onNv21 jpegData is null"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 201
    :cond_3
    new-instance v6, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;

    move-object v0, v6

    move-object v1, p1

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;-><init>(Lcom/transsion/camera/adapter/CameraResults;[BIIZ)V

    .line 202
    invoke-direct {p0, v6}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->onPairJpegInfo(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)V

    return-void
.end method

.method private writeJpegExif(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)[B
    .locals 3

    .line 246
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->access$800(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)Lcom/transsion/camera/adapter/CameraResults;

    move-result-object v0

    .line 247
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->access$900(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/adapter/CameraResults;->setImageWidth(J)V

    .line 248
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->access$1000(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/camera/adapter/CameraResults;->setImageLength(J)V

    .line 249
    invoke-direct {p0, v0}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->addLocationInfoToResults(Lcom/transsion/camera/adapter/CameraResults;)V

    .line 250
    invoke-static {p1}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;->access$1100(Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$JpegInfo;)[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1, v0}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->writeExif([B[BLcom/transsion/camera/adapter/CameraResults;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public algorithmMigrate(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->mAlgorithmMigrate:Z

    return-void
.end method

.method protected algorithmProcess([BIIII)[B
    .locals 0

    return-object p1
.end method

.method protected algorithmProcessAfterTransform()Z
    .locals 0

    .line 158
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mWatermark:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->algorithmMigrate()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected algorithmProcessAfterTransform([BIII)[B
    .locals 0

    .line 311
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mWatermark:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->algorithmMigrate()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 312
    invoke-static {p1, p2, p3, p4}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->process([BIII)[B

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method protected getContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-virtual {p0, p1, p3, p4}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->createSnapShotContentValues([BLandroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method protected getProcessedContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0

    .line 363
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    const-string p2, ""

    invoke-virtual {p0, p1, p3, p2}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->createSnapShotContentValues([BLandroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public init(Lcom/transsion/camera/app/common/location/LocationManager;Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->init(Lcom/transsion/camera/app/common/location/LocationManager;Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;Landroid/content/Context;)V

    .line 48
    iput-object p2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->mSizeConvert:Lcom/transsion/camera/app/common/algorithm/size/SizeConvert;

    return-void
.end method

.method protected jpegEncode([BIII)[B
    .locals 0

    .line 335
    invoke-static {p1, p2, p3, p4}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->jpegSoftEncode([BIII)[B

    move-result-object p0

    return-object p0
.end method

.method protected jpegEncode([BIIIIIIZ)[B
    .locals 0

    .line 340
    invoke-static/range {p1 .. p8}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->jpegSoftEncode([BIIIIIIZ)[B

    move-result-object p0

    return-object p0
.end method

.method public onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V
    .locals 3

    .line 60
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->onCaptureCompleted(Lcom/transsion/camera/adapter/CameraResults;)V

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] onCaptureCompleted in ImageProcessor + mAlgorithmMigrate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->mAlgorithmMigrate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 62
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->mAlgorithmMigrate:Z

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->mResultPairProducer:Lcom/transsion/camera/utils/PairProducer;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/PairProducer;->addFirst(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    if-nez p1, :cond_0

    .line 65
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onCaptureCompleted pair is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 68
    :cond_0
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/transsion/camera/adapter/CameraResults;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->onPictureDataAndCameraResults(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;)V

    :cond_1
    return-void
.end method

.method protected onJpeg([BZ)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->notifyPictureTaken([BZI)I

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->saveJpegToFile([BLandroid/graphics/Bitmap;Z)V

    return-void
.end method

.method protected onPictureData([BIIIIZI)V
    .locals 7

    .line 75
    iget-object v0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CapturePerformance] onPictureData in ImageProcessor orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/16 v0, 0x100

    if-ne v0, p2, :cond_0

    .line 78
    iget-object p2, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mPictureCallback:Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;

    invoke-interface {p2, p1, p6, p7}, Lcom/transsion/camera/app/common/ICameraControl$IPictureCallback;->notifyPictureTaken([BZI)I

    const/4 p2, 0x0

    .line 79
    invoke-virtual {p0, p1, p2, p6}, Lcom/transsion/camera/app/common/mode/ImageProcessor;->saveJpegToFile([BLandroid/graphics/Bitmap;Z)V

    goto :goto_1

    :cond_0
    const/16 p7, 0x11

    if-eq p7, p2, :cond_2

    const p7, 0x32315659

    if-ne p7, p2, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid image format: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :cond_2
    :goto_0
    new-instance p7, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;

    move-object v0, p7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;-><init>([BIIIIZ)V

    .line 82
    iget-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->mResultPairProducer:Lcom/transsion/camera/utils/PairProducer;

    invoke-virtual {p1, p7}, Lcom/transsion/camera/utils/PairProducer;->addSecond(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    if-nez p1, :cond_3

    .line 84
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/ImageProcessor;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onPictureData pair is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 87
    :cond_3
    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Lcom/transsion/camera/adapter/CameraResults;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;

    invoke-direct {p0, p2, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->onPictureDataAndCameraResults(Lcom/transsion/camera/adapter/CameraResults;Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor$ImageInfo;)V

    :goto_1
    return-void
.end method

.method protected onPictureDataFail()V
    .locals 0

    return-void
.end method

.method protected onUpdateFastThumbSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onUpdateThumbnailSurface(Landroid/util/Size;)Lcom/transsion/camera/app/common/mode/CaptureSurface;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected setVideoHelper(Lcom/transsion/camera/app/common/mode/CommonVideoHelper;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoImageProcessor;->mVideoHelper:Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    return-void
.end method

.method public supportProcessingMedia()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected transform([BIIIIIIZ)[B
    .locals 0

    .line 330
    invoke-static/range {p1 .. p8}, Lcom/transsion/camera/app/common/algorithm/jpegcodec/JpegCodec;->transform([BIIIIIIZ)[B

    move-result-object p0

    return-object p0
.end method
