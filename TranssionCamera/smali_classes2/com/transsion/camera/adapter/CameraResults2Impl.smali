.class Lcom/transsion/camera/adapter/CameraResults2Impl;
.super Lcom/transsion/camera/adapter/CameraResults;
.source "CameraResults2Impl.java"


# static fields
.field private static final APERTURE_VALUE_PRECISION:Ljava/lang/Long;

.field private static final DEFAULT_THUMBNAIL_SIZE:Landroid/util/Size;

.field private static final FOCAL_LENGTH_PRECISION:Ljava/lang/Long;

.field private static final F_NUMBER_PRECISION:Ljava/lang/Long;

.field private static final LOG_2:D

.field private static final NS_TO_S:Ljava/lang/Long;

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final sComponentsConfiguration:[S


# instance fields
.field private mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/adapter/CameraResults2Impl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-wide/32 v0, 0x3b9aca00

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->NS_TO_S:Ljava/lang/Long;

    const-wide/16 v0, 0x64

    .line 38
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->F_NUMBER_PRECISION:Ljava/lang/Long;

    .line 39
    sput-object v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->APERTURE_VALUE_PRECISION:Ljava/lang/Long;

    const-wide/16 v0, 0x3e8

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->FOCAL_LENGTH_PRECISION:Ljava/lang/Long;

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 43
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->LOG_2:D

    .line 48
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x90

    const/16 v2, 0xc0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->DEFAULT_THUMBNAIL_SIZE:Landroid/util/Size;

    const/4 v0, 0x3

    new-array v0, v0, [S

    .line 50
    fill-array-data v0, :array_0

    sput-object v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->sComponentsConfiguration:[S

    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void

    nop

    :array_0
    .array-data 2
        0x1s
        0x2s
        0x3s
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0}, Lcom/transsion/camera/adapter/CameraResults2Impl;-><init>(Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraResults;-><init>()V

    .line 66
    invoke-virtual {p0}, Lcom/transsion/camera/adapter/CameraResults;->resetAll()V

    .line 67
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraResults2Impl;->applyConstantValue()V

    .line 68
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraResults2Impl;->applyDefaultValue()V

    .line 69
    invoke-direct {p0}, Lcom/transsion/camera/adapter/CameraResults2Impl;->generateDateTime()V

    .line 70
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraResults2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    return-void
.end method

.method private applyConstantValue()V
    .locals 6

    .line 112
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setMake(Ljava/lang/String;)V

    .line 113
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setModel(Ljava/lang/String;)V

    const-string v0, "Transsion Camera Application"

    .line 114
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setSoftware(Ljava/lang/String;)V

    const-string v0, "0220"

    .line 115
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setExifVersion(Ljava/lang/String;)V

    const/4 v0, 0x6

    .line 116
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setCompression(S)V

    .line 117
    sget-object v1, Lcom/transsion/camera/adapter/CameraResults2Impl;->sComponentsConfiguration:[S

    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/CameraResults;->setComponentsConfiguration([S)V

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/CameraResults;->setExposureProgram(S)V

    const/4 v1, 0x2

    .line 119
    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/CameraResults;->setYCBCRPositioning(S)V

    const/16 v2, 0x48

    const-wide/16 v3, 0x1

    .line 120
    invoke-direct {p0, v2, v3, v4}, Lcom/transsion/camera/adapter/CameraResults2Impl;->rational(IJ)Lcom/transsion/camera/utils/exif/Rational;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/transsion/camera/adapter/CameraResults;->setXResolution(Lcom/transsion/camera/utils/exif/Rational;)V

    .line 121
    invoke-direct {p0, v2, v3, v4}, Lcom/transsion/camera/adapter/CameraResults2Impl;->rational(IJ)Lcom/transsion/camera/utils/exif/Rational;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/transsion/camera/adapter/CameraResults;->setYResolution(Lcom/transsion/camera/utils/exif/Rational;)V

    .line 122
    invoke-virtual {p0, v1}, Lcom/transsion/camera/adapter/CameraResults;->setResolutionUnit(S)V

    .line 123
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setPhotometricInterpretation(S)V

    return-void
.end method

.method private applyDefaultValue()V
    .locals 1

    .line 127
    sget-object v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->DEFAULT_THUMBNAIL_SIZE:Landroid/util/Size;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setThumbnailSize(Landroid/util/Size;)V

    const/16 v0, 0x64

    .line 128
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setThumbnailQuality(B)V

    return-void
.end method

.method private extractApertureValue(Landroid/hardware/camera2/CaptureResult;)V
    .locals 4

    .line 154
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 156
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->log2(F)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 157
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    sget-object p1, Lcom/transsion/camera/adapter/CameraResults2Impl;->APERTURE_VALUE_PRECISION:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/transsion/camera/adapter/CameraResults2Impl;->rational(DJ)Lcom/transsion/camera/utils/exif/Rational;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setApertureValue(Lcom/transsion/camera/utils/exif/Rational;)V

    :cond_0
    return-void
.end method

.method private extractExposureMode(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 178
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 180
    invoke-virtual {p1}, Ljava/lang/Integer;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setExposureMode(S)V

    :cond_0
    return-void
.end method

.method private extractExposureTime(Landroid/hardware/camera2/CaptureResult;)V
    .locals 4

    .line 185
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object p1, Lcom/transsion/camera/adapter/CameraResults2Impl;->NS_TO_S:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/transsion/camera/adapter/CameraResults2Impl;->ratio(JJ)Lcom/transsion/camera/utils/exif/Rational;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setExposureTime(Lcom/transsion/camera/utils/exif/Rational;)V

    :cond_0
    return-void
.end method

.method private extractFNumber(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 147
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_APERTURE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-object v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->F_NUMBER_PRECISION:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->rational(FJ)Lcom/transsion/camera/utils/exif/Rational;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setFNumber(Lcom/transsion/camera/utils/exif/Rational;)V

    :cond_0
    return-void
.end method

.method private extractFlash(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 169
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->FLASH_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    .line 171
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 174
    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setFlash(S)V

    return-void
.end method

.method private extractFocalLength(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 162
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sget-object v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->FOCAL_LENGTH_PRECISION:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->rational(FJ)Lcom/transsion/camera/utils/exif/Rational;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setFocalLength(Lcom/transsion/camera/utils/exif/Rational;)V

    :cond_0
    return-void
.end method

.method private extractIsoSpeedRatings(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 221
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 223
    invoke-virtual {p1}, Ljava/lang/Integer;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setIsoSpeedRatings(S)V

    :cond_0
    return-void
.end method

.method private extractOrientation(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 140
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p1}, Ljava/lang/Integer;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setOrientation(S)V

    :cond_0
    return-void
.end method

.method private extractThumbnailQuality(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 212
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setThumbnailQuality(B)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x64

    .line 216
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setThumbnailQuality(B)V

    :goto_0
    return-void
.end method

.method private extractThumbnailSize(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 203
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->JPEG_THUMBNAIL_SIZE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setThumbnailSize(Landroid/util/Size;)V

    goto :goto_0

    .line 207
    :cond_0
    sget-object p1, Lcom/transsion/camera/adapter/CameraResults2Impl;->DEFAULT_THUMBNAIL_SIZE:Landroid/util/Size;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraResults;->setThumbnailSize(Landroid/util/Size;)V

    :goto_0
    return-void
.end method

.method private extractWhiteBalance(Landroid/hardware/camera2/CaptureResult;)V
    .locals 2

    .line 192
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 195
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    if-eq v1, p1, :cond_0

    move v0, v1

    .line 198
    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setWhiteBalance(S)V

    :cond_1
    return-void
.end method

.method private generateDateTime()V
    .locals 3

    .line 132
    sget-object v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setDateTime(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setDateTimeOriginal(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, v0}, Lcom/transsion/camera/adapter/CameraResults;->setDateTimeDigitized(Ljava/lang/String;)V

    return-void
.end method

.method private log2(F)Ljava/lang/Double;
    .locals 2

    float-to-double p0, p1

    .line 92
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    sget-wide v0, Lcom/transsion/camera/adapter/CameraResults2Impl;->LOG_2:D

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private ratio(JJ)Lcom/transsion/camera/utils/exif/Rational;
    .locals 0

    .line 108
    new-instance p0, Lcom/transsion/camera/utils/exif/Rational;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/utils/exif/Rational;-><init>(JJ)V

    return-object p0
.end method

.method private rational(DJ)Lcom/transsion/camera/utils/exif/Rational;
    .locals 2

    .line 104
    new-instance p0, Lcom/transsion/camera/utils/exif/Rational;

    long-to-double v0, p3

    mul-double/2addr p1, v0

    double-to-long p1, p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/utils/exif/Rational;-><init>(JJ)V

    return-object p0
.end method

.method private rational(FJ)Lcom/transsion/camera/utils/exif/Rational;
    .locals 2

    .line 100
    new-instance p0, Lcom/transsion/camera/utils/exif/Rational;

    long-to-float v0, p2

    mul-float/2addr p1, v0

    float-to-long v0, p1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/transsion/camera/utils/exif/Rational;-><init>(JJ)V

    return-object p0
.end method

.method private rational(IJ)Lcom/transsion/camera/utils/exif/Rational;
    .locals 2

    .line 96
    new-instance p0, Lcom/transsion/camera/utils/exif/Rational;

    int-to-long v0, p1

    mul-long/2addr v0, p2

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/transsion/camera/utils/exif/Rational;-><init>(JJ)V

    return-object p0
.end method


# virtual methods
.method extractResults(Landroid/hardware/camera2/CaptureResult;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/transsion/camera/adapter/CameraResults2Impl;->mPlatformCamera2:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    if-nez v0, :cond_0

    .line 75
    sget-object p0, Lcom/transsion/camera/adapter/CameraResults2Impl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "extractResults mPlatformCamera2 is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 78
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractOrientation(Landroid/hardware/camera2/CaptureResult;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractFNumber(Landroid/hardware/camera2/CaptureResult;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractApertureValue(Landroid/hardware/camera2/CaptureResult;)V

    .line 81
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractFocalLength(Landroid/hardware/camera2/CaptureResult;)V

    .line 82
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractFlash(Landroid/hardware/camera2/CaptureResult;)V

    .line 83
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractExposureMode(Landroid/hardware/camera2/CaptureResult;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractExposureTime(Landroid/hardware/camera2/CaptureResult;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractWhiteBalance(Landroid/hardware/camera2/CaptureResult;)V

    .line 86
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractThumbnailSize(Landroid/hardware/camera2/CaptureResult;)V

    .line 87
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractThumbnailQuality(Landroid/hardware/camera2/CaptureResult;)V

    .line 88
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraResults2Impl;->extractIsoSpeedRatings(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method
