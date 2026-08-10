.class public final Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;
.super Ljava/lang/Object;
.source "ExifWriter.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkValid(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    .line 291
    instance-of v0, p0, Ljava/lang/Byte;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 292
    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    if-ltz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 293
    :cond_1
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 294
    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    if-ltz p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 295
    :cond_3
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 296
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ltz p0, :cond_4

    move v1, v2

    :cond_4
    return v1

    .line 297
    :cond_5
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 298
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-ltz p0, :cond_6

    move v1, v2

    :cond_6
    return v1

    .line 299
    :cond_7
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_9

    .line 300
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double p0, v3, v5

    if-ltz p0, :cond_8

    move v1, v2

    :cond_8
    return v1

    :cond_9
    return v2
.end method

.method private static setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/transsion/camera/utils/exif/ExifInterface;",
            "ITT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 275
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "value is null | tag: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 278
    :cond_0
    invoke-static {p2}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->checkValid(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ", value: "

    if-nez v0, :cond_1

    .line 279
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid exif value | tag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 282
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/utils/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v0

    if-nez v0, :cond_2

    .line 284
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildTag failed: tag"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 287
    :cond_2
    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/exif/ExifInterface;->setTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    return-void
.end method

.method private static setGpsTags(Lcom/transsion/camera/utils/exif/ExifInterface;Lcom/transsion/camera/adapter/CameraResults;)V
    .locals 7

    .line 232
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getGpsLatitude()D

    move-result-wide v0

    .line 233
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getGpsLongitude()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    .line 234
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-eqz v6, :cond_1

    .line 235
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->addGpsTags(DD)Z

    .line 240
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getGpsTimeStamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->addGpsDateTimeStampTag(J)Z

    return-void

    .line 236
    :cond_1
    :goto_0
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "invalid latitude and longitude"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method private static setIfd0Tags(Lcom/transsion/camera/utils/exif/ExifInterface;Lcom/transsion/camera/adapter/CameraResults;)V
    .locals 3

    .line 91
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getImageWidth()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    .line 92
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getImageLength()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    .line 94
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_COMPRESSION:I

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getCompression()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    .line 95
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getPhotometricInterpretation()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    .line 97
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_MAKE:I

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getMake()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    .line 98
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_MODEL:I

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    .line 99
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getOrientation()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    .line 106
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_X_RESOLUTION:I

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getXResolution()Lcom/transsion/camera/utils/exif/Rational;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    .line 107
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getYResolution()Lcom/transsion/camera/utils/exif/Rational;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    .line 109
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getResolutionUnit()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    .line 111
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SOFTWARE:I

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getSoftware()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    .line 112
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_DATE_TIME:I

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getDateTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    .line 118
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getYCBCRPositioning()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    return-void
.end method

.method private static setIfd1Tags(Lcom/transsion/camera/utils/exif/ExifInterface;Lcom/transsion/camera/adapter/CameraResults;)V
    .locals 2

    .line 133
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getExposureTime()Lcom/transsion/camera/utils/exif/Rational;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    .line 134
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_F_NUMBER:I

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getFNumber()Lcom/transsion/camera/utils/exif/Rational;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    .line 135
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getExposureProgram()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    .line 137
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getIsoSpeedRatings()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    .line 139
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXIF_VERSION:I

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getExifVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    .line 140
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getDateTimeOriginal()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    .line 141
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getDateTimeOriginal()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    .line 142
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getComponentsConfiguration()[S

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    .line 145
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getApertureValue()Lcom/transsion/camera/utils/exif/Rational;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    .line 150
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_METERING_MODE:I

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getMeteringMode()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    .line 152
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FLASH:I

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getFlash()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    .line 153
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getFocalLength()Lcom/transsion/camera/utils/exif/Rational;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    .line 177
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getExposureMode()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    .line 178
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getWhiteBalance()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    return-void
.end method

.method private static setIfdThumbnail(Lcom/transsion/camera/utils/exif/ExifInterface;[B)V
    .locals 2

    if-nez p1, :cond_0

    .line 245
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "thumbnail is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 248
    :cond_0
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    .line 249
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    .line 250
    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifInterface;->setCompressedThumbnail([B)Z

    return-void
.end method

.method private static setOtherTags(Lcom/transsion/camera/utils/exif/ExifInterface;Lcom/transsion/camera/adapter/CameraResults;)V
    .locals 1

    .line 254
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getOtherTags()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 255
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 256
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/utils/exif/ExifTag;

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/exif/ExifInterface;->setTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static setOtherValues(Lcom/transsion/camera/utils/exif/ExifInterface;Lcom/transsion/camera/adapter/CameraResults;)V
    .locals 2

    .line 265
    invoke-virtual {p1}, Lcom/transsion/camera/adapter/CameraResults;->getOtherValues()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 266
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 267
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 268
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setExifTag(Lcom/transsion/camera/utils/exif/ExifInterface;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static writeExif([BLandroid/graphics/Bitmap;Lcom/transsion/camera/adapter/CameraResults;)[B
    .locals 3

    .line 34
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p1, :cond_0

    .line 35
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->writeExif([B[BLcom/transsion/camera/adapter/CameraResults;)[B

    move-result-object p0

    return-object p0
.end method

.method public static writeExif([B[BLcom/transsion/camera/adapter/CameraResults;)[B
    .locals 6

    const-string v0, "close outputStream exception: "

    .line 42
    sget-object v1, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "[AlgorithmPerformance] write exif start"

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 46
    new-instance v3, Lcom/transsion/camera/utils/exif/ExifInterface;

    invoke-direct {v3}, Lcom/transsion/camera/utils/exif/ExifInterface;-><init>()V

    const/4 v4, 0x0

    .line 49
    :try_start_0
    invoke-virtual {v3, p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->readExif([B)V

    .line 51
    invoke-static {v3, p2}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setIfd0Tags(Lcom/transsion/camera/utils/exif/ExifInterface;Lcom/transsion/camera/adapter/CameraResults;)V

    .line 53
    invoke-static {v3, p2}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setIfd1Tags(Lcom/transsion/camera/utils/exif/ExifInterface;Lcom/transsion/camera/adapter/CameraResults;)V

    .line 59
    invoke-static {v3, p2}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setGpsTags(Lcom/transsion/camera/utils/exif/ExifInterface;Lcom/transsion/camera/adapter/CameraResults;)V

    .line 61
    invoke-static {v3, p1}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setIfdThumbnail(Lcom/transsion/camera/utils/exif/ExifInterface;[B)V

    .line 63
    invoke-static {v3, p2}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setOtherTags(Lcom/transsion/camera/utils/exif/ExifInterface;Lcom/transsion/camera/adapter/CameraResults;)V

    .line 65
    invoke-static {v3, p2}, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->setOtherValues(Lcom/transsion/camera/utils/exif/ExifInterface;Lcom/transsion/camera/adapter/CameraResults;)V

    .line 67
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    :try_start_1
    invoke-virtual {v3, p0, p1}, Lcom/transsion/camera/utils/exif/ExifInterface;->writeExif([BLjava/io/OutputStream;)V

    .line 69
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 70
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :try_start_2
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 79
    sget-object p2, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v4, p1

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v4, p1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p2

    .line 72
    :goto_1
    :try_start_3
    sget-object p1, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeExif exception: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_0

    .line 76
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 79
    sget-object p2, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    .line 83
    :cond_0
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v1

    .line 84
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AlgorithmPerformance] write exif end | process time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object p0

    :goto_3
    if-eqz v4, :cond_1

    .line 76
    :try_start_5
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 79
    sget-object p2, Lcom/transsion/camera/app/common/algorithm/exif/ExifWriter;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 81
    :cond_1
    :goto_4
    throw p0
.end method
