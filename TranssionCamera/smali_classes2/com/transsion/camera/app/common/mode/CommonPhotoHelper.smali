.class public Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;
.super Ljava/lang/Object;
.source "CommonPhotoHelper.java"


# static fields
.field private static final AOD_SUFFIX:Ljava/lang/String; = "_aod"

.field private static final COVER_PICTURE_INDEX:I = 0x1

.field private static final CS_COVER_NAME_PATTERN:Ljava/lang/String; = "%s_BURST%04d_COVER"

.field private static final CS_IMAGE_FORMAT:Ljava/lang/String; = "\'IMG\'_yyyyMMdd_HHmmssSSS"

.field private static final CS_NAME_PATTERN:Ljava/lang/String; = "%s_BURST%04d"

.field private static final IMAGE_FORMAT:Ljava/lang/String; = "\'IMG\'_yyyyMMdd_HHmmss_SSS"

.field private static final IMAGE_SUFFIX:Ljava/lang/String; = ".jpg"

.field private static final INVALID:I = -0x1

.field private static final MIME_JPEG:Ljava/lang/String; = "image/jpeg"

.field private static final SEPARATOR:Ljava/lang/String;


# instance fields
.field private mAodCamera:Z

.field private mPhotosDefault:Z

.field protected final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method


# virtual methods
.method public createContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 8

    const-wide/16 v5, -0x1

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 64
    invoke-virtual/range {v0 .. v7}, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->createContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;JI)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public createContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Ljava/lang/String;JI)Landroid/content/ContentValues;
    .locals 5

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, p5, v2

    if-lez v2, :cond_0

    .line 72
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "\'IMG\'_yyyyMMdd_HHmmssSSS"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/sql/Date;

    invoke-direct {v3, p5, p6}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p5

    goto :goto_0

    .line 74
    :cond_0
    new-instance p5, Ljava/text/SimpleDateFormat;

    sget-object p6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "\'IMG\'_yyyyMMdd_HHmmss_SSS"

    invoke-direct {p5, v2, p6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance p6, Ljava/sql/Date;

    invoke-direct {p6, v0, v1}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {p5, p6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p5

    .line 76
    :goto_0
    iget-object p6, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[createContentValues] currentTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p6, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p6, 0x0

    if-lez p7, :cond_2

    const/4 p0, 0x2

    const/4 v2, 0x1

    if-ne v2, p7, :cond_1

    .line 81
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p5, p0, p6

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    aput-object p7, p0, v2

    const-string p7, "%s_BURST%04d_COVER"

    invoke-static {v3, p7, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 83
    :cond_1
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p0, p0, [Ljava/lang/Object;

    aput-object p5, p0, p6

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    aput-object p7, p0, v2

    const-string p7, "%s_BURST%04d"

    invoke-static {v3, p7, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 86
    :cond_2
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->mAodCamera:Z

    if-eqz p0, :cond_3

    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "_aod"

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    :cond_3
    move-object p0, p5

    .line 91
    :goto_1
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".jpg"

    invoke-virtual {p7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 93
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {p7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    if-eqz p2, :cond_4

    .line 97
    new-instance p1, Landroid/util/Size;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p7

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-direct {p1, p7, p2}, Landroid/util/Size;-><init>(II)V

    goto :goto_2

    .line 99
    :cond_4
    invoke-static {p1}, Lcom/transsion/camera/utils/ExifUtils;->getOrientationFromExif([B)I

    move-result p6

    .line 100
    invoke-static {p1}, Lcom/transsion/camera/utils/ExifUtils;->getSizeFromExif([B)Landroid/util/Size;

    move-result-object p1

    .line 103
    :goto_2
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 104
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p7

    const-string v0, "datetaken"

    invoke-virtual {p2, v0, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p7, "title"

    .line 105
    invoke-virtual {p2, p7, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "_display_name"

    .line 106
    invoke-virtual {p2, p5, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "mime_type"

    const-string p5, "image/jpeg"

    .line 107
    invoke-virtual {p2, p0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p5, "width"

    invoke-virtual {p2, p5, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "height"

    invoke-virtual {p2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "orientation"

    invoke-virtual {p2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "_data"

    .line 111
    invoke-virtual {p2, p0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_5

    .line 113
    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "latitude"

    invoke-virtual {p2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 114
    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "longitude"

    invoke-virtual {p2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_5
    return-object p2
.end method

.method public createProcessedContentValues([BLandroid/graphics/Bitmap;Landroid/location/Location;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 151
    new-instance p1, Landroid/util/Size;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-direct {p1, v1, p2}, Landroid/util/Size;-><init>(II)V

    move p2, v0

    goto :goto_0

    .line 153
    :cond_0
    invoke-static {p1}, Lcom/transsion/camera/utils/ExifUtils;->getOrientationFromExif([B)I

    move-result p2

    .line 154
    invoke-static {p1}, Lcom/transsion/camera/utils/ExifUtils;->getSizeFromExif([B)Landroid/util/Size;

    move-result-object p1

    .line 157
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 158
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, p4}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 159
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string v4, "width"

    invoke-virtual {v3, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p4, "height"

    invoke-virtual {v3, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "orientation"

    invoke-virtual {v3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "is_pending"

    invoke-virtual {v3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "date_modified"

    invoke-virtual {v3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p3, :cond_1

    .line 165
    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "latitude"

    invoke-virtual {v3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 166
    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "longitude"

    invoke-virtual {v3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 168
    :cond_1
    iget-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->mPhotosDefault:Z

    if-eqz p1, :cond_3

    .line 169
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string p3, "\'IMG\'_yyyyMMdd_HHmmss_SSS"

    invoke-direct {p1, p3, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance p2, Ljava/sql/Date;

    invoke-direct {p2, v1, v2}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 170
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->mAodCamera:Z

    if-eqz p0, :cond_2

    .line 171
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_aod"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string p0, "_display_name"

    .line 173
    invoke-virtual {v3, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v3
.end method

.method public createProcessingContentValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 6

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 122
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "mime_type"

    const-string v4, "image/jpeg"

    .line 123
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 126
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "is_pending"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "date_modified"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 129
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "datetaken"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/Camera"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "relative_path"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-boolean v3, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->mPhotosDefault:Z

    if-nez v3, :cond_1

    .line 133
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "\'IMG\'_yyyyMMdd_HHmmss_SSS"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/sql/Date;

    invoke-direct {v4, v0, v1}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 134
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->mAodCamera:Z

    if-eqz v1, :cond_0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_aod"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "_data"

    .line 141
    invoke-virtual {v2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 143
    :goto_0
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->mPhotosDefault:Z

    if-eqz p0, :cond_2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string p0, "_display_name"

    invoke-virtual {v2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public setAodCamera(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->mAodCamera:Z

    return-void
.end method

.method public setPhotosDefault(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonPhotoHelper;->mPhotosDefault:Z

    return-void
.end method
