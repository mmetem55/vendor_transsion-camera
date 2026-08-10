.class public Lcom/transsion/camera/utils/ExifUtils;
.super Ljava/lang/Object;
.source "ExifUtils.java"


# direct methods
.method public static createExifInterface(Ljava/io/InputStream;)Landroid/media/ExifInterface;
    .locals 1

    .line 108
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 110
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createExifInterface(Ljava/lang/String;)Landroid/media/ExifInterface;
    .locals 2

    const/4 v0, 0x0

    .line 99
    :try_start_0
    invoke-static {p0}, Lcom/transsion/camera/utils/ExifUtils;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 101
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v0
.end method

.method public static createExifInterface([B)Landroid/media/ExifInterface;
    .locals 2

    .line 90
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getOrientationFromExif(Landroid/media/ExifInterface;)I
    .locals 2

    const-string v0, "Orientation"

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10e

    goto :goto_0

    :cond_1
    const/16 v1, 0x5a

    goto :goto_0

    :cond_2
    const/16 v1, 0xb4

    :cond_3
    :goto_0
    return v1
.end method

.method public static getOrientationFromExif([B)I
    .locals 0

    .line 25
    invoke-static {p0}, Lcom/transsion/camera/utils/ExifUtils;->createExifInterface([B)Landroid/media/ExifInterface;

    move-result-object p0

    .line 26
    invoke-static {p0}, Lcom/transsion/camera/utils/ExifUtils;->getOrientationFromExif(Landroid/media/ExifInterface;)I

    move-result p0

    return p0
.end method

.method public static getSizeFromExif(Landroid/media/ExifInterface;)Landroid/util/Size;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 81
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, v0, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_0
    const-string v1, "ImageWidth"

    .line 83
    invoke-virtual {p0, v1, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "ImageLength"

    .line 84
    invoke-virtual {p0, v2, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    .line 85
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public static getSizeFromExif([B)Landroid/util/Size;
    .locals 0

    .line 75
    invoke-static {p0}, Lcom/transsion/camera/utils/ExifUtils;->createExifInterface([B)Landroid/media/ExifInterface;

    move-result-object p0

    .line 76
    invoke-static {p0}, Lcom/transsion/camera/utils/ExifUtils;->getSizeFromExif(Landroid/media/ExifInterface;)Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method private static isValid(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "./"

    .line 119
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "~/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static updateExifForAnalytics([B)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-static {p0}, Lcom/transsion/camera/utils/ExifUtils;->createExifInterface([B)Landroid/media/ExifInterface;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 37
    :cond_1
    new-instance v0, Lcom/transsion/camera/utils/analytics/CaptureExif;

    invoke-direct {v0}, Lcom/transsion/camera/utils/analytics/CaptureExif;-><init>()V

    const-string v1, "ExposureMode"

    const/4 v2, 0x0

    .line 38
    invoke-virtual {p0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/camera/utils/analytics/CaptureExif;->mExposureMode:I

    const-wide/16 v3, 0x0

    const-string v1, "ExposureTime"

    .line 39
    invoke-virtual {p0, v1, v3, v4}, Landroid/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/transsion/camera/utils/analytics/CaptureExif;->mExposureTime:D

    const-string v1, "Flash"

    .line 40
    invoke-virtual {p0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/camera/utils/analytics/CaptureExif;->mFlash:I

    const-string v1, "ISOSpeedRatings"

    .line 41
    invoke-virtual {p0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/transsion/camera/utils/analytics/CaptureExif;->mISOSpeed:I

    const-string v1, "OffsetTimeOriginal"

    .line 42
    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/utils/analytics/CaptureExif;->mTimeOffset:Ljava/lang/String;

    .line 43
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setCaptureExif(Lcom/transsion/camera/utils/analytics/CaptureExif;)V

    return-void
.end method
