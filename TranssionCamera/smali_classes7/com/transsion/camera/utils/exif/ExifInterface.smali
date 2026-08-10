.class public Lcom/transsion/camera/utils/exif/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# static fields
.field public static final DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

.field private static final TAG:Ljava/lang/String;

.field public static final TAG_APERTURE_VALUE:I

.field public static final TAG_ARTIST:I

.field public static final TAG_BITS_PER_SAMPLE:I

.field public static final TAG_BRIGHTNESS_VALUE:I

.field public static final TAG_CFA_PATTERN:I

.field public static final TAG_COLOR_SPACE:I

.field public static final TAG_COMPONENTS_CONFIGURATION:I

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:I

.field public static final TAG_COMPRESSION:I

.field public static final TAG_CONTRAST:I

.field public static final TAG_COPYRIGHT:I

.field public static final TAG_CUSTOM_RENDERED:I

.field public static final TAG_DATE_TIME:I

.field public static final TAG_DATE_TIME_DIGITIZED:I

.field public static final TAG_DATE_TIME_ORIGINAL:I

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:I

.field public static final TAG_DIGITAL_ZOOM_RATIO:I

.field public static final TAG_EXIF_IFD:I

.field public static final TAG_EXIF_VERSION:I

.field public static final TAG_EXPOSURE_BIAS_VALUE:I

.field public static final TAG_EXPOSURE_INDEX:I

.field public static final TAG_EXPOSURE_MODE:I

.field public static final TAG_EXPOSURE_PROGRAM:I

.field public static final TAG_EXPOSURE_TIME:I

.field public static final TAG_FILE_SOURCE:I

.field public static final TAG_FLASH:I

.field public static final TAG_FLASHPIX_VERSION:I

.field public static final TAG_FLASH_ENERGY:I

.field public static final TAG_FOCAL_LENGTH:I

.field public static final TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:I

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:I

.field public static final TAG_FOCUS_VALUE_HIGH:I

.field public static final TAG_FOCUS_VALUE_LOW:I

.field public static final TAG_F_NUMBER:I

.field public static final TAG_GAIN_CONTROL:I

.field public static final TAG_GPS_ALTITUDE:I

.field public static final TAG_GPS_ALTITUDE_REF:I

.field public static final TAG_GPS_AREA_INFORMATION:I

.field public static final TAG_GPS_DATE_STAMP:I

.field public static final TAG_GPS_DEST_BEARING:I

.field public static final TAG_GPS_DEST_BEARING_REF:I

.field public static final TAG_GPS_DEST_DISTANCE:I

.field public static final TAG_GPS_DEST_DISTANCE_REF:I

.field public static final TAG_GPS_DEST_LATITUDE:I

.field public static final TAG_GPS_DEST_LATITUDE_REF:I

.field public static final TAG_GPS_DEST_LONGITUDE:I

.field public static final TAG_GPS_DEST_LONGITUDE_REF:I

.field public static final TAG_GPS_DIFFERENTIAL:I

.field public static final TAG_GPS_DOP:I

.field public static final TAG_GPS_IFD:I

.field public static final TAG_GPS_IMG_DIRECTION:I

.field public static final TAG_GPS_IMG_DIRECTION_REF:I

.field public static final TAG_GPS_LATITUDE:I

.field public static final TAG_GPS_LATITUDE_REF:I

.field public static final TAG_GPS_LONGITUDE:I

.field public static final TAG_GPS_LONGITUDE_REF:I

.field public static final TAG_GPS_MAP_DATUM:I

.field public static final TAG_GPS_MEASURE_MODE:I

.field public static final TAG_GPS_PROCESSING_METHOD:I

.field public static final TAG_GPS_SATTELLITES:I

.field public static final TAG_GPS_SPEED:I

.field public static final TAG_GPS_SPEED_REF:I

.field public static final TAG_GPS_STATUS:I

.field public static final TAG_GPS_TIME_STAMP:I

.field public static final TAG_GPS_TRACK:I

.field public static final TAG_GPS_TRACK_REF:I

.field public static final TAG_GPS_VERSION_ID:I

.field public static final TAG_GROUP_ID:I

.field public static final TAG_GROUP_INDEX:I

.field public static final TAG_IMAGE_DESCRIPTION:I

.field public static final TAG_IMAGE_LENGTH:I

.field public static final TAG_IMAGE_UNIQUE_ID:I

.field public static final TAG_IMAGE_WIDTH:I

.field public static final TAG_INTEROPERABILITY_IFD:I

.field public static final TAG_INTEROPERABILITY_INDEX:I

.field public static final TAG_ISO_SPEED_RATINGS:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

.field public static final TAG_LIGHT_SOURCE:I

.field public static final TAG_MAKE:I

.field public static final TAG_MAKER_NOTE:I

.field public static final TAG_MAX_APERTURE_VALUE:I

.field public static final TAG_METERING_MODE:I

.field public static final TAG_MODEL:I

.field public static final TAG_OECF:I

.field public static final TAG_ORIENTATION:I

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:I

.field public static final TAG_PIXEL_X_DIMENSION:I

.field public static final TAG_PIXEL_Y_DIMENSION:I

.field public static final TAG_PLANAR_CONFIGURATION:I

.field public static final TAG_PRIMARY_CHROMATICITIES:I

.field public static final TAG_REFERENCE_BLACK_WHITE:I

.field public static final TAG_RELATED_SOUND_FILE:I

.field public static final TAG_RESOLUTION_UNIT:I

.field public static final TAG_ROWS_PER_STRIP:I

.field public static final TAG_SAMPLES_PER_PIXEL:I

.field public static final TAG_SATURATION:I

.field public static final TAG_SCENE_CAPTURE_TYPE:I

.field public static final TAG_SCENE_TYPE:I

.field public static final TAG_SENSING_METHOD:I

.field public static final TAG_SHARPNESS:I

.field public static final TAG_SHUTTER_SPEED_VALUE:I

.field public static final TAG_SOFTWARE:I

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:I

.field public static final TAG_SPECTRAL_SENSITIVITY:I

.field public static final TAG_STRIP_BYTE_COUNTS:I

.field public static final TAG_STRIP_OFFSETS:I

.field public static final TAG_SUBJECT_AREA:I

.field public static final TAG_SUBJECT_DISTANCE:I

.field public static final TAG_SUBJECT_DISTANCE_RANGE:I

.field public static final TAG_SUBJECT_LOCATION:I

.field public static final TAG_SUB_SEC_TIME:I

.field public static final TAG_SUB_SEC_TIME_DIGITIZED:I

.field public static final TAG_SUB_SEC_TIME_ORIGINAL:I

.field public static final TAG_TRANSFER_FUNCTION:I

.field public static final TAG_USER_COMMENT:I

.field public static final TAG_WHITE_BALANCE:I

.field public static final TAG_WHITE_POINT:I

.field public static final TAG_X_RESOLUTION:I

.field public static final TAG_Y_CB_CR_COEFFICIENTS:I

.field public static final TAG_Y_CB_CR_POSITIONING:I

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:I

.field public static final TAG_Y_RESOLUTION:I

.field protected static sBannedDefines:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private static sOffsetTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:Lcom/transsion/camera/utils/exif/ExifData;

.field private final mGPSTimeStampCalendar:Ljava/util/Calendar;

.field private mTagInfo:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x0

    const/16 v1, 0x100

    .line 81
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    const/16 v1, 0x101

    .line 83
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    const/16 v1, 0x102

    .line 85
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    const/16 v1, 0x103

    .line 87
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_COMPRESSION:I

    const/16 v1, 0x106

    .line 89
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    const/16 v1, 0x10e

    .line 91
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    const/16 v1, 0x10f

    .line 93
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_MAKE:I

    const/16 v1, 0x110

    .line 95
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_MODEL:I

    const/16 v1, 0x111

    .line 97
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v1

    sput v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    const/16 v2, 0x112

    .line 99
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_ORIENTATION:I

    const/16 v2, 0x220

    .line 102
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GROUP_INDEX:I

    const/16 v2, 0x221

    .line 104
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GROUP_ID:I

    const/16 v2, 0x222

    .line 106
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCUS_VALUE_HIGH:I

    const/16 v2, 0x223

    .line 108
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCUS_VALUE_LOW:I

    const/16 v2, 0x115

    .line 112
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    const/16 v2, 0x116

    .line 114
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    const/16 v2, 0x117

    .line 116
    invoke-static {v0, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v2

    sput v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    const/16 v3, 0x11a

    .line 118
    invoke-static {v0, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_X_RESOLUTION:I

    const/16 v3, 0x11b

    .line 120
    invoke-static {v0, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    const/16 v3, 0x11c

    .line 122
    invoke-static {v0, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    const/16 v3, 0x128

    .line 124
    invoke-static {v0, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    const/16 v3, 0x12d

    .line 126
    invoke-static {v0, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    const/16 v3, 0x131

    .line 128
    invoke-static {v0, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SOFTWARE:I

    const/16 v3, 0x132

    .line 130
    invoke-static {v0, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_DATE_TIME:I

    const/16 v3, 0x13b

    .line 132
    invoke-static {v0, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_ARTIST:I

    const/16 v3, 0x13e

    .line 134
    invoke-static {v0, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_WHITE_POINT:I

    const/16 v3, 0x13f

    .line 136
    invoke-static {v0, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    const/16 v3, 0x211

    .line 138
    invoke-static {v0, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    const/16 v3, 0x212

    .line 140
    invoke-static {v0, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    const/16 v3, 0x213

    .line 142
    invoke-static {v0, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    const/16 v3, 0x214

    .line 144
    invoke-static {v0, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    const/16 v3, -0x7d68

    .line 146
    invoke-static {v0, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_COPYRIGHT:I

    const/16 v3, -0x7897

    .line 148
    invoke-static {v0, v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v3

    sput v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXIF_IFD:I

    const/16 v4, -0x77db

    .line 150
    invoke-static {v0, v4}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v4

    sput v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_IFD:I

    const/4 v5, 0x1

    const/16 v6, 0x201

    .line 153
    invoke-static {v5, v6}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v6

    sput v6, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    const/16 v7, 0x202

    .line 155
    invoke-static {v5, v7}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v7

    sput v7, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    const/4 v8, 0x2

    const/16 v9, -0x7d66

    .line 158
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    const/16 v9, -0x7d63

    .line 160
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_F_NUMBER:I

    const/16 v9, -0x77de

    .line 162
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    const/16 v9, -0x77dc

    .line 164
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    const/16 v9, -0x77d9

    .line 166
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    const/16 v9, -0x77d8

    .line 168
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_OECF:I

    const/16 v9, -0x7000

    .line 170
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXIF_VERSION:I

    const/16 v9, -0x6ffd

    .line 172
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    const/16 v9, -0x6ffc

    .line 174
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    const/16 v9, -0x6eff

    .line 176
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    const/16 v9, -0x6efe

    .line 178
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    const/16 v9, -0x6dff

    .line 180
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const/16 v9, -0x6dfe

    .line 182
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    const/16 v9, -0x6dfd

    .line 184
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    const/16 v9, -0x6dfc

    .line 186
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    const/16 v9, -0x6dfb

    .line 188
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    const/16 v9, -0x6dfa

    .line 190
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    const/16 v9, -0x6df9

    .line 192
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_METERING_MODE:I

    const/16 v9, -0x6df8

    .line 194
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    const/16 v9, -0x6df7

    .line 196
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FLASH:I

    const/16 v9, -0x6df6

    .line 198
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    const/16 v9, -0x6dec

    .line 200
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    const/16 v9, -0x6d84

    .line 202
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_MAKER_NOTE:I

    const/16 v9, -0x6d7a

    .line 204
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_USER_COMMENT:I

    const/16 v9, -0x6d70

    .line 206
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    const/16 v9, -0x6d6f

    .line 208
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    const/16 v9, -0x6d6e

    .line 210
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    const/16 v9, -0x6000

    .line 212
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    const/16 v9, -0x5fff

    .line 214
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_COLOR_SPACE:I

    const/16 v9, -0x5ffe

    .line 216
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    const/16 v9, -0x5ffd

    .line 218
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    const/16 v9, -0x5ffc

    .line 220
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    const/16 v9, -0x5ffb

    .line 222
    invoke-static {v8, v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v9

    sput v9, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    const/16 v10, -0x5df5

    .line 224
    invoke-static {v8, v10}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    const/16 v10, -0x5df4

    .line 226
    invoke-static {v8, v10}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    const/16 v10, -0x5df2

    .line 228
    invoke-static {v8, v10}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    const/16 v10, -0x5df1

    .line 230
    invoke-static {v8, v10}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    const/16 v10, -0x5df0

    .line 232
    invoke-static {v8, v10}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    const/16 v10, -0x5dec

    .line 234
    invoke-static {v8, v10}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    const/16 v10, -0x5deb

    .line 236
    invoke-static {v8, v10}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    const/16 v10, -0x5de9

    .line 238
    invoke-static {v8, v10}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SENSING_METHOD:I

    const/16 v10, -0x5d00

    .line 240
    invoke-static {v8, v10}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FILE_SOURCE:I

    const/16 v10, -0x5cff

    .line 242
    invoke-static {v8, v10}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SCENE_TYPE:I

    const/16 v10, -0x5cfe

    .line 244
    invoke-static {v8, v10}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_CFA_PATTERN:I

    const/16 v10, -0x5bff

    .line 246
    invoke-static {v8, v10}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    const/16 v10, -0x5bfe

    .line 248
    invoke-static {v8, v10}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    const/16 v10, -0x5bfd

    .line 250
    invoke-static {v8, v10}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    const/16 v10, -0x5bfc

    .line 252
    invoke-static {v8, v10}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    const/16 v10, -0x5bfb

    .line 254
    invoke-static {v8, v10}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    const/16 v10, -0x5bfa

    .line 256
    invoke-static {v8, v10}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    const/16 v10, -0x5bf9

    .line 258
    invoke-static {v8, v10}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    const/16 v10, -0x5bf8

    .line 260
    invoke-static {v8, v10}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_CONTRAST:I

    const/16 v10, -0x5bf7

    .line 262
    invoke-static {v8, v10}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SATURATION:I

    const/16 v10, -0x5bf6

    .line 264
    invoke-static {v8, v10}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SHARPNESS:I

    const/16 v10, -0x5bf5

    .line 266
    invoke-static {v8, v10}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    const/16 v10, -0x5bf4

    .line 268
    invoke-static {v8, v10}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    const/16 v10, -0x5be0

    .line 270
    invoke-static {v8, v10}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v10

    sput v10, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    const/4 v10, 0x4

    .line 273
    invoke-static {v10, v0}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    .line 275
    invoke-static {v10, v5}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    .line 277
    invoke-static {v10, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    const/4 v0, 0x3

    .line 279
    invoke-static {v10, v0}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    .line 281
    invoke-static {v10, v10}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    const/4 v8, 0x5

    .line 283
    invoke-static {v10, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    const/4 v8, 0x6

    .line 285
    invoke-static {v10, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    const/4 v8, 0x7

    .line 287
    invoke-static {v10, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/16 v8, 0x8

    .line 289
    invoke-static {v10, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    const/16 v8, 0x9

    .line 291
    invoke-static {v10, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_STATUS:I

    const/16 v8, 0xa

    .line 293
    invoke-static {v10, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    const/16 v8, 0xb

    .line 295
    invoke-static {v10, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DOP:I

    const/16 v8, 0xc

    .line 297
    invoke-static {v10, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    const/16 v8, 0xd

    .line 299
    invoke-static {v10, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_SPEED:I

    const/16 v8, 0xe

    .line 301
    invoke-static {v10, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    const/16 v8, 0xf

    .line 303
    invoke-static {v10, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_TRACK:I

    const/16 v8, 0x10

    .line 305
    invoke-static {v10, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const/16 v8, 0x11

    .line 307
    invoke-static {v10, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    const/16 v8, 0x12

    .line 309
    invoke-static {v10, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    const/16 v8, 0x13

    .line 311
    invoke-static {v10, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    const/16 v8, 0x14

    .line 313
    invoke-static {v10, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    const/16 v8, 0x15

    .line 315
    invoke-static {v10, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE_REF:I

    const/16 v8, 0x16

    .line 317
    invoke-static {v10, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE:I

    const/16 v8, 0x17

    .line 319
    invoke-static {v10, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    const/16 v8, 0x18

    .line 321
    invoke-static {v10, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    const/16 v8, 0x19

    .line 323
    invoke-static {v10, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    const/16 v8, 0x1a

    .line 325
    invoke-static {v10, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    const/16 v8, 0x1b

    .line 327
    invoke-static {v10, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    const/16 v8, 0x1c

    .line 329
    invoke-static {v10, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    const/16 v8, 0x1d

    .line 331
    invoke-static {v10, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    const/16 v8, 0x1e

    .line 333
    invoke-static {v10, v8}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v8

    sput v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    .line 336
    invoke-static {v0, v5}, Lcom/transsion/camera/utils/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    sput v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    .line 337
    const-class v0, Lcom/transsion/camera/utils/exif/ExifInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG:Ljava/lang/String;

    .line 343
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    .line 346
    invoke-static {v4}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 347
    sget-object v0, Lcom/transsion/camera/utils/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 348
    sget-object v0, Lcom/transsion/camera/utils/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {v6}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 349
    sget-object v0, Lcom/transsion/camera/utils/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {v9}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 350
    sget-object v0, Lcom/transsion/camera/utils/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 356
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/transsion/camera/utils/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/transsion/camera/utils/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    const/4 v1, -0x1

    .line 359
    invoke-static {v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 360
    sget-object v0, Lcom/transsion/camera/utils/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    invoke-static {v7}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 361
    sget-object v0, Lcom/transsion/camera/utils/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    invoke-static {v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 741
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/transsion/camera/utils/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 740
    new-instance v0, Lcom/transsion/camera/utils/exif/ExifData;

    sget-object v1, Lcom/transsion/camera/utils/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mData:Lcom/transsion/camera/utils/exif/ExifData;

    const-string v0, "UTC"

    .line 2058
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/4 v0, 0x0

    .line 2171
    iput-object v0, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-void
.end method

.method public static defineTag(IS)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p1, v0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p1

    return p0
.end method

.method protected static getAllowedIfdFlagsFromInfo(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x18

    return p0
.end method

.method protected static getComponentCountFromInfo(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method protected static getFlagsFromAllowedIfds([I)I
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 2502
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_3

    .line 2506
    :cond_0
    invoke-static {}, Lcom/transsion/camera/utils/exif/IfdData;->getIfds()[I

    move-result-object v1

    move v2, v0

    move v3, v2

    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_3

    .line 2508
    array-length v4, p0

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_2

    aget v6, p0, v5

    .line 2509
    aget v7, v1, v2

    if-ne v7, v6, :cond_1

    const/4 v4, 0x1

    shl-int/2addr v4, v2

    or-int/2addr v3, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_3
    return v0
.end method

.method public static getTrueIfd(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public static getTrueTagKey(I)S
    .locals 0

    int-to-short p0, p0

    return p0
.end method

.method protected static getTypeFromInfo(I)S
    .locals 0

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0
.end method

.method private initTagInfo()V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 2189
    fill-array-data v2, :array_0

    .line 2192
    invoke-static {v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    .line 2193
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_MAKE:I

    const/high16 v5, 0x20000

    or-int v6, v2, v5

    or-int/lit8 v7, v6, 0x0

    invoke-virtual {v3, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2195
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    const/high16 v9, 0x40000

    or-int v10, v2, v9

    or-int/lit8 v11, v10, 0x1

    invoke-virtual {v3, v8, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2197
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    invoke-virtual {v3, v8, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2199
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    const/high16 v12, 0x30000

    or-int v13, v2, v12

    or-int/lit8 v14, v13, 0x3

    invoke-virtual {v3, v8, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2201
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_COMPRESSION:I

    or-int/lit8 v14, v13, 0x1

    invoke-virtual {v3, v8, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2203
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    invoke-virtual {v3, v8, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2205
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-virtual {v3, v8, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2208
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GROUP_INDEX:I

    invoke-virtual {v3, v8, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2210
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GROUP_ID:I

    const/4 v15, 0x0

    or-int/2addr v10, v15

    invoke-virtual {v3, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2212
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCUS_VALUE_HIGH:I

    invoke-virtual {v3, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2214
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCUS_VALUE_LOW:I

    invoke-virtual {v3, v8, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2217
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    invoke-virtual {v3, v8, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2219
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    invoke-virtual {v3, v8, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2221
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v8, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    or-int/lit8 v5, v13, 0x2

    invoke-virtual {v3, v8, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2223
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    invoke-virtual {v3, v5, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2225
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_X_RESOLUTION:I

    const/high16 v8, 0x50000

    or-int/2addr v2, v8

    or-int/lit8 v8, v2, 0x1

    invoke-virtual {v3, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2227
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    invoke-virtual {v3, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2229
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    invoke-virtual {v3, v5, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2231
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-virtual {v3, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2233
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    invoke-virtual {v3, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2235
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-virtual {v3, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 2237
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    or-int/lit16 v8, v13, 0x300

    invoke-virtual {v3, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2239
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_WHITE_POINT:I

    or-int/lit8 v8, v2, 0x2

    invoke-virtual {v3, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2241
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    or-int/lit8 v8, v2, 0x6

    invoke-virtual {v3, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2243
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    const/4 v10, 0x3

    or-int/2addr v2, v10

    invoke-virtual {v3, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2245
    iget-object v2, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    invoke-virtual {v2, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2247
    iget-object v2, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_DATE_TIME:I

    or-int/lit8 v5, v6, 0x14

    invoke-virtual {v2, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2249
    iget-object v2, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2251
    iget-object v2, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2253
    iget-object v2, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_MODEL:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2255
    iget-object v2, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SOFTWARE:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2257
    iget-object v2, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_ARTIST:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2259
    iget-object v2, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_COPYRIGHT:I

    invoke-virtual {v2, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 2261
    iget-object v2, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-virtual {v2, v3, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 2263
    iget-object v2, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-virtual {v2, v3, v11}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x1

    new-array v3, v2, [I

    aput v2, v3, v15

    .line 2269
    invoke-static {v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    .line 2270
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    or-int/2addr v3, v9

    or-int/2addr v3, v2

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2272
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    new-array v3, v2, [I

    aput v1, v3, v15

    .line 2278
    invoke-static {v3}, Lcom/transsion/camera/utils/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    .line 2279
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXIF_VERSION:I

    const/high16 v6, 0x70000

    or-int v7, v3, v6

    or-int/lit8 v8, v7, 0x4

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2281
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2283
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_COLOR_SPACE:I

    or-int v11, v3, v12

    or-int/lit8 v13, v11, 0x1

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2285
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2287
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    const/high16 v8, 0x50000

    or-int v14, v3, v8

    or-int/lit8 v8, v14, 0x1

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2289
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    or-int/2addr v9, v3

    or-int/2addr v9, v2

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2291
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 2293
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_MAKER_NOTE:I

    or-int/lit8 v14, v7, 0x0

    invoke-virtual {v4, v5, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2295
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_USER_COMMENT:I

    invoke-virtual {v4, v5, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2297
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    const/high16 v16, 0x20000

    or-int v17, v3, v16

    or-int/lit8 v12, v17, 0xd

    invoke-virtual {v4, v5, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2299
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    or-int/lit8 v12, v17, 0x14

    invoke-virtual {v4, v5, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2301
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    invoke-virtual {v4, v5, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2303
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    or-int/lit8 v12, v17, 0x0

    invoke-virtual {v4, v5, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2305
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    invoke-virtual {v4, v5, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2307
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    invoke-virtual {v4, v5, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2309
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    or-int/lit8 v6, v17, 0x21

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2311
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2313
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_F_NUMBER:I

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2315
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    invoke-virtual {v4, v5, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2317
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    invoke-virtual {v4, v5, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 2319
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    or-int/lit8 v6, v11, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2321
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_OECF:I

    invoke-virtual {v4, v5, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2323
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    const/high16 v12, 0xa0000

    or-int/2addr v3, v12

    or-int/2addr v3, v2

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2325
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2327
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2329
    iget-object v4, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v5, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2331
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2333
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2335
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_METERING_MODE:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2337
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2339
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FLASH:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2341
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2343
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2345
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2347
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    invoke-virtual {v3, v4, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2349
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2351
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2353
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    invoke-virtual {v3, v4, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2355
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    or-int/2addr v1, v11

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 2357
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    invoke-virtual {v1, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2359
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SENSING_METHOD:I

    invoke-virtual {v1, v3, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2361
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FILE_SOURCE:I

    or-int/lit8 v4, v7, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2363
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SCENE_TYPE:I

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2365
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_CFA_PATTERN:I

    invoke-virtual {v1, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2367
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    invoke-virtual {v1, v3, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2369
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    invoke-virtual {v1, v3, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2371
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    invoke-virtual {v1, v3, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2373
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    invoke-virtual {v1, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2375
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    invoke-virtual {v1, v3, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2377
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    invoke-virtual {v1, v3, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2379
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    invoke-virtual {v1, v3, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2381
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_CONTRAST:I

    invoke-virtual {v1, v3, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2383
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SATURATION:I

    invoke-virtual {v1, v3, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2385
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SHARPNESS:I

    invoke-virtual {v1, v3, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2387
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    invoke-virtual {v1, v3, v14}, Landroid/util/SparseIntArray;->put(II)V

    .line 2389
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    invoke-virtual {v1, v3, v13}, Landroid/util/SparseIntArray;->put(II)V

    .line 2391
    iget-object v1, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v3, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-virtual {v1, v3, v9}, Landroid/util/SparseIntArray;->put(II)V

    new-array v1, v2, [I

    const/4 v3, 0x4

    aput v3, v1, v15

    .line 2397
    invoke-static {v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    .line 2398
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    const/high16 v5, 0x10000

    or-int/2addr v5, v1

    or-int/lit8 v6, v5, 0x4

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2400
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    const/high16 v6, 0x20000

    or-int v7, v1, v6

    or-int/lit8 v6, v7, 0x2

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2402
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2404
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    or-int v8, v1, v12

    or-int/2addr v8, v10

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2406
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2408
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    or-int/2addr v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2410
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    const/high16 v5, 0x50000

    or-int/2addr v5, v1

    or-int/lit8 v8, v5, 0x1

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2412
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    or-int/2addr v5, v10

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2414
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    or-int/lit8 v5, v7, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2416
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_STATUS:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2418
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2420
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DOP:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2422
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2424
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_SPEED:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2426
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2428
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_TRACK:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2430
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2432
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2434
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2436
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2438
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2440
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2442
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2444
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    invoke-virtual {v3, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2446
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    invoke-virtual {v3, v4, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 2448
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    const/high16 v5, 0x70000

    or-int/2addr v5, v1

    or-int/2addr v5, v15

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2450
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2452
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    or-int/lit8 v5, v7, 0xb

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 2454
    iget-object v3, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v4, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    const/high16 v5, 0x30000

    or-int/2addr v1, v5

    or-int/lit8 v1, v1, 0xb

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    new-array v1, v2, [I

    aput v10, v1, v15

    .line 2460
    invoke-static {v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    .line 2461
    iget-object v0, v0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    const/high16 v3, 0x20000

    or-int/2addr v1, v3

    or-int/2addr v1, v15

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method protected static isIfdAllowed(II)Z
    .locals 5

    .line 2491
    invoke-static {}, Lcom/transsion/camera/utils/exif/IfdData;->getIfds()[I

    move-result-object v0

    .line 2492
    invoke-static {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    .line 2493
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 2494
    aget v3, v0, v2

    if-ne p1, v3, :cond_0

    shr-int v3, p0, v2

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected static isOffsetTag(S)Z
    .locals 1

    .line 1586
    sget-object v0, Lcom/transsion/camera/utils/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static toExifLatLong(D)[Lcom/transsion/camera/utils/exif/Rational;
    .locals 7

    .line 2141
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    double-to-int v0, p0

    int-to-double v1, v0

    sub-double/2addr p0, v1

    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    mul-double/2addr p0, v1

    double-to-int v1, p0

    int-to-double v2, v1

    sub-double/2addr p0, v2

    const-wide v2, 0x40b7700000000000L    # 6000.0

    mul-double/2addr p0, v2

    double-to-int p0, p0

    const/4 p1, 0x3

    new-array p1, p1, [Lcom/transsion/camera/utils/exif/Rational;

    .line 2147
    new-instance v2, Lcom/transsion/camera/utils/exif/Rational;

    int-to-long v3, v0

    const-wide/16 v5, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/transsion/camera/utils/exif/Rational;-><init>(JJ)V

    const/4 v0, 0x0

    aput-object v2, p1, v0

    new-instance v0, Lcom/transsion/camera/utils/exif/Rational;

    int-to-long v1, v1

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/transsion/camera/utils/exif/Rational;-><init>(JJ)V

    const/4 v1, 0x1

    aput-object v0, p1, v1

    new-instance v0, Lcom/transsion/camera/utils/exif/Rational;

    int-to-long v1, p0

    const-wide/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/transsion/camera/utils/exif/Rational;-><init>(JJ)V

    const/4 p0, 0x2

    aput-object v0, p1, p0

    return-object p1
.end method


# virtual methods
.method public addGpsDateTimeStampTag(J)Z
    .locals 8

    .line 2119
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "UTC"

    .line 2120
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2121
    sget v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/transsion/camera/utils/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2125
    :cond_0
    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/exif/ExifInterface;->setTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    .line 2126
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2127
    sget p1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    const/4 p2, 0x3

    new-array p2, p2, [Lcom/transsion/camera/utils/exif/Rational;

    new-instance v0, Lcom/transsion/camera/utils/exif/Rational;

    iget-object v2, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    .line 2128
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/transsion/camera/utils/exif/Rational;-><init>(JJ)V

    aput-object v0, p2, v1

    new-instance v0, Lcom/transsion/camera/utils/exif/Rational;

    iget-object v2, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    .line 2129
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/transsion/camera/utils/exif/Rational;-><init>(JJ)V

    const/4 v2, 0x1

    aput-object v0, p2, v2

    const/4 v0, 0x2

    new-instance v3, Lcom/transsion/camera/utils/exif/Rational;

    iget-object v6, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    const/16 v7, 0xd

    .line 2130
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v3, v6, v7, v4, v5}, Lcom/transsion/camera/utils/exif/Rational;-><init>(JJ)V

    aput-object v3, p2, v0

    .line 2127
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/utils/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 2135
    :cond_1
    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifInterface;->setTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    return v2
.end method

.method public addGpsTags(DD)Z
    .locals 5

    .line 2094
    sget v0, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/exif/ExifInterface;->toExifLatLong(D)[Lcom/transsion/camera/utils/exif/Rational;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v0

    .line 2095
    sget v1, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    invoke-static {p3, p4}, Lcom/transsion/camera/utils/exif/ExifInterface;->toExifLatLong(D)[Lcom/transsion/camera/utils/exif/Rational;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/transsion/camera/utils/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object v1

    .line 2096
    sget v2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    const-wide/16 v3, 0x0

    cmpl-double p1, p1, v3

    if-ltz p1, :cond_0

    const-string p1, "N"

    goto :goto_0

    :cond_0
    const-string p1, "S"

    :goto_0
    invoke-virtual {p0, v2, p1}, Lcom/transsion/camera/utils/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object p1

    .line 2099
    sget p2, Lcom/transsion/camera/utils/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    cmpl-double p3, p3, v3

    if-ltz p3, :cond_1

    const-string p3, "E"

    goto :goto_1

    :cond_1
    const-string p3, "W"

    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/transsion/camera/utils/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object p2

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_2

    goto :goto_2

    .line 2105
    :cond_2
    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/exif/ExifInterface;->setTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    .line 2106
    invoke-virtual {p0, v1}, Lcom/transsion/camera/utils/exif/ExifInterface;->setTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    .line 2107
    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifInterface;->setTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    .line 2108
    invoke-virtual {p0, p2}, Lcom/transsion/camera/utils/exif/ExifInterface;->setTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method public buildTag(IILjava/lang/Object;)Lcom/transsion/camera/utils/exif/ExifTag;
    .locals 7

    .line 1601
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p3, :cond_0

    goto :goto_1

    .line 1605
    :cond_0
    invoke-static {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v3

    .line 1606
    invoke-static {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v6, v1

    .line 1608
    invoke-static {p0, p2}, Lcom/transsion/camera/utils/exif/ExifInterface;->isIfdAllowed(II)Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    .line 1611
    :cond_2
    new-instance p0, Lcom/transsion/camera/utils/exif/ExifTag;

    invoke-static {p1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v2

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/camera/utils/exif/ExifTag;-><init>(SSIIZ)V

    .line 1612
    invoke-virtual {p0, p3}, Lcom/transsion/camera/utils/exif/ExifTag;->setValue(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return-object v0

    :cond_3
    return-object p0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public buildTag(ILjava/lang/Object;)Lcom/transsion/camera/utils/exif/ExifTag;
    .locals 1

    .line 1626
    invoke-static {p1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueIfd(I)I

    move-result v0

    .line 1627
    invoke-virtual {p0, p1, v0, p2}, Lcom/transsion/camera/utils/exif/ExifInterface;->buildTag(IILjava/lang/Object;)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object p0

    return-object p0
.end method

.method protected buildUninitializedTag(I)Lcom/transsion/camera/utils/exif/ExifTag;
    .locals 6

    .line 1631
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1635
    :cond_0
    invoke-static {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTypeFromInfo(I)S

    move-result v2

    .line 1636
    invoke-static {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getComponentCountFromInfo(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    move v5, p0

    .line 1638
    invoke-static {p1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueIfd(I)I

    move-result v4

    .line 1639
    new-instance p0, Lcom/transsion/camera/utils/exif/ExifTag;

    invoke-static {p1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/utils/exif/ExifTag;-><init>(SSIIZ)V

    return-object p0
.end method

.method public getDefinedTagDefaultIfd(I)I
    .locals 0

    .line 1552
    invoke-virtual {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1556
    :cond_0
    invoke-static {p1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueIfd(I)I

    move-result p0

    return p0
.end method

.method public getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    if-eqz p1, :cond_0

    .line 1001
    new-instance v0, Lcom/transsion/camera/utils/exif/ExifOutputStream;

    invoke-direct {v0, p1, p0}, Lcom/transsion/camera/utils/exif/ExifOutputStream;-><init>(Ljava/io/OutputStream;Lcom/transsion/camera/utils/exif/ExifInterface;)V

    .line 1002
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {v0, p0}, Lcom/transsion/camera/utils/exif/ExifOutputStream;->setExifData(Lcom/transsion/camera/utils/exif/ExifData;)V

    return-object v0

    .line 999
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTag(I)Lcom/transsion/camera/utils/exif/ExifTag;
    .locals 1

    .line 1229
    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1230
    invoke-virtual {p0, p1, v0}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTag(II)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object p0

    return-object p0
.end method

.method public getTag(II)Lcom/transsion/camera/utils/exif/ExifTag;
    .locals 1

    .line 1215
    invoke-static {p2}, Lcom/transsion/camera/utils/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1218
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-static {p1}, Lcom/transsion/camera/utils/exif/ExifInterface;->getTrueTagKey(I)S

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/utils/exif/ExifData;->getTag(SI)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object p0

    return-object p0
.end method

.method protected getTagInfo()Landroid/util/SparseIntArray;
    .locals 1

    .line 2174
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 2175
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 2176
    invoke-direct {p0}, Lcom/transsion/camera/utils/exif/ExifInterface;->initTagInfo()V

    .line 2178
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public readExif(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 774
    :try_start_0
    new-instance v0, Lcom/transsion/camera/utils/exif/ExifReader;

    invoke-direct {v0, p0}, Lcom/transsion/camera/utils/exif/ExifReader;-><init>(Lcom/transsion/camera/utils/exif/ExifInterface;)V

    invoke-virtual {v0, p1}, Lcom/transsion/camera/utils/exif/ExifReader;->read(Ljava/io/InputStream;)Lcom/transsion/camera/utils/exif/ExifData;

    move-result-object p1
    :try_end_0
    .catch Lcom/transsion/camera/utils/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    iput-object p1, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mData:Lcom/transsion/camera/utils/exif/ExifData;

    return-void

    :catch_0
    move-exception p0

    .line 776
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid exif format : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 770
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readExif([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 758
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/transsion/camera/utils/exif/ExifInterface;->readExif(Ljava/io/InputStream;)V

    return-void
.end method

.method public setCompressedThumbnail([B)Z
    .locals 1

    .line 1921
    iget-object v0, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {v0}, Lcom/transsion/camera/utils/exif/ExifData;->clearThumbnailAndStrips()V

    .line 1922
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifData;->setCompressedThumbnail([B)V

    const/4 p0, 0x1

    return p0
.end method

.method public setTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;
    .locals 0

    .line 1686
    iget-object p0, p0, Lcom/transsion/camera/utils/exif/ExifInterface;->mData:Lcom/transsion/camera/utils/exif/ExifData;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/utils/exif/ExifData;->addTag(Lcom/transsion/camera/utils/exif/ExifTag;)Lcom/transsion/camera/utils/exif/ExifTag;

    move-result-object p0

    return-object p0
.end method

.method public writeExif([BLjava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 835
    invoke-virtual {p0, p2}, Lcom/transsion/camera/utils/exif/ExifInterface;->getExifWriterStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p0

    const/4 p2, 0x0

    .line 836
    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 837
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void

    .line 833
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
