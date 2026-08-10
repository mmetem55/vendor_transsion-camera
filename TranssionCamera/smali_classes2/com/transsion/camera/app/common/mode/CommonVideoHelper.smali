.class public Lcom/transsion/camera/app/common/mode/CommonVideoHelper;
.super Ljava/lang/Object;
.source "CommonVideoHelper.java"


# static fields
.field private static final AOD_SUFFIX:Ljava/lang/String; = "_aod"

.field private static final FILE_ERROR:I = -0x2

.field protected static final INVALID_DURATION:I = -0x1

.field private static final JPEG_SUFFIX:Ljava/lang/String; = ".jpg"

.field private static final MIME_JPEG:Ljava/lang/String; = "image/jpeg"

.field private static final MIME_MP4:Ljava/lang/String; = "video/mp4"

.field private static final MIME_THREE_GPP:Ljava/lang/String; = "video/3gp"

.field private static final MP4_SUFFIX:Ljava/lang/String; = ".mp4"

.field private static final SEPARATOR:Ljava/lang/String;

.field protected static final SNAPSHOT_NAME_FORMAT:Ljava/lang/String; = "\'IMG\'_yyyyMMdd_HHmmss_S"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final THREE_GPP_SUFFIX:Ljava/lang/String; = ".3gp"

.field protected static final VIDEO_NAME_FORMAT:Ljava/lang/String; = "\'VID\'_yyyyMMdd_HHmmss"


# instance fields
.field private mAodCamera:Z

.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mAudioFocusRequest:Landroid/media/AudioFocusRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 48
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x1

    .line 55
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 59
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    iget-object v1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 61
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    return-void
.end method

.method public static getDuration(Ljava/io/FileDescriptor;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 195
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    const/16 p0, 0x9

    .line 197
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    .line 196
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-wide v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 202
    :try_start_1
    sget-object v1, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "RuntimeException: "

    invoke-static {v1, v2, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v1, -0x2

    .line 205
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-wide v1

    :catch_1
    move-exception p0

    .line 199
    :try_start_2
    sget-object v1, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "IllegalArgumentException: "

    invoke-static {v1, v2, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v1, -0x1

    goto :goto_0

    .line 205
    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 206
    throw p0
.end method

.method public static getDuration(Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 178
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p0, 0x9

    .line 180
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    .line 179
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-wide v1

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 185
    :try_start_1
    sget-object v1, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "RuntimeException: "

    invoke-static {v1, v2, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v1, -0x2

    .line 188
    :goto_0
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-wide v1

    :catch_1
    move-exception p0

    .line 182
    :try_start_2
    sget-object v1, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v2, "IllegalArgumentException: "

    invoke-static {v1, v2, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v1, -0x1

    goto :goto_0

    .line 188
    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 189
    throw p0
.end method

.method private static getFileExtFromFormat(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, ".mp4"

    return-object p0

    :cond_0
    const-string p0, ".3gp"

    return-object p0
.end method

.method private static getMimeTypeFromFormat(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "video/mp4"

    return-object p0

    :cond_0
    const-string p0, "video/3gp"

    return-object p0
.end method


# virtual methods
.method public createSnapShotContentValues([BLandroid/location/Location;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 6

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 135
    invoke-static {p1}, Lcom/transsion/camera/utils/ExifUtils;->getOrientationFromExif([B)I

    move-result v2

    .line 136
    invoke-static {p1}, Lcom/transsion/camera/utils/ExifUtils;->getSizeFromExif([B)Landroid/util/Size;

    move-result-object p1

    .line 138
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "\'IMG\'_yyyyMMdd_HHmmss_S"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 139
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->mAodCamera:Z

    if-eqz p0, :cond_0

    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_aod"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".jpg"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->SEPARATOR:Ljava/lang/String;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 145
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 146
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "datetaken"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "title"

    .line 147
    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_display_name"

    .line 148
    invoke-virtual {v4, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "mime_type"

    const-string v0, "image/jpeg"

    .line 149
    invoke-virtual {v4, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "orientation"

    invoke-virtual {v4, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p0, "_data"

    .line 151
    invoke-virtual {v4, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p3, "width"

    invoke-virtual {v4, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "height"

    invoke-virtual {v4, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p2, :cond_1

    .line 155
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "latitude"

    invoke-virtual {v4, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 156
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "longitude"

    invoke-virtual {v4, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_1
    return-object v4
.end method

.method public createVideoContentValues(Lcom/transsion/camera/app/common/mode/VideoFileInfo;JLandroid/location/Location;)Landroid/content/ContentValues;
    .locals 10

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 101
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->getVideoNameFormat()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 102
    iget-boolean p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->mAodCamera:Z

    if-eqz p0, :cond_0

    .line 103
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_aod"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getFileExt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getFileFolder()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getVideoSize()Landroid/util/Size;

    move-result-object v4

    .line 108
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getFileTempPath()Ljava/lang/String;

    move-result-object v5

    .line 109
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 111
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "title"

    .line 112
    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_display_name"

    .line 113
    invoke-virtual {v7, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v2, "datetaken"

    invoke-virtual {v7, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v8, 0x3e8

    .line 115
    div-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v0, "date_modified"

    invoke-virtual {v7, v0, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 116
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/mode/VideoFileInfo;->getMimeType()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mime_type"

    invoke-virtual {v7, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "_data"

    .line 117
    invoke-virtual {v7, p0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "width"

    invoke-virtual {v7, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "height"

    invoke-virtual {v7, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "resolution"

    invoke-virtual {v7, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, -0x2

    cmp-long p0, p2, p0

    if-eqz p0, :cond_1

    const-wide/16 p0, -0x1

    cmp-long p0, p2, p0

    if-eqz p0, :cond_1

    .line 122
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "duration"

    invoke-virtual {v7, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 124
    :cond_1
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "_size"

    invoke-virtual {v7, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p4, :cond_2

    .line 126
    invoke-virtual {p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "latitude"

    invoke-virtual {v7, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 127
    invoke-virtual {p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const-string p1, "longitude"

    invoke-virtual {v7, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    :cond_2
    return-object v7
.end method

.method public getVideoNameFormat()Ljava/lang/String;
    .locals 0

    const-string p0, "\'VID\'_yyyyMMdd_HHmmss"

    return-object p0
.end method

.method public pauseAudioPlayBack(Landroid/content/Context;)Z
    .locals 2

    .line 72
    sget-object v0, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[pauseAudioPlayback]"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string v0, "audio"

    .line 73
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public releaseAudioFocus(Landroid/content/Context;)V
    .locals 1

    const-string v0, "audio"

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_0

    .line 88
    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->mAudioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {p1, p0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    :cond_0
    return-void
.end method

.method public setAodCamera(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoHelper;->mAodCamera:Z

    return-void
.end method
