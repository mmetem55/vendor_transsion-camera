.class public Lcom/transsion/camera/utils/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sWcgSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "BitmapUtils"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 8

    .line 336
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v0, v0

    .line 337
    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v2, p0

    const/4 p0, 0x1

    if-gtz p2, :cond_0

    move v4, p0

    goto :goto_0

    :cond_0
    mul-double v4, v0, v2

    int-to-double v6, p2

    div-double/2addr v4, v6

    .line 339
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    :goto_0
    if-gtz p1, :cond_1

    const/16 v0, 0x80

    goto :goto_1

    :cond_1
    int-to-double v5, p1

    div-double/2addr v0, v5

    .line 341
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    div-double/2addr v2, v5

    .line 342
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 341
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    :goto_1
    if-ge v0, v4, :cond_2

    return v4

    :cond_2
    if-gtz p2, :cond_3

    if-gtz p1, :cond_3

    return p0

    :cond_3
    if-gtz p1, :cond_4

    return v4

    :cond_4
    return v0
.end method

.method private static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 0

    .line 319
    invoke-static {p0, p1, p2}, Lcom/transsion/camera/utils/BitmapUtils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p0

    const/16 p1, 0x8

    if-gt p0, p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    if-ge p1, p0, :cond_1

    shl-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x7

    .line 328
    div-int/2addr p0, p1

    mul-int/2addr p1, p0

    :cond_1
    return p1
.end method

.method private static covertYuvDataToJpeg([BIIII)[B
    .locals 8

    .line 280
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 281
    new-instance v1, Landroid/graphics/YuvImage;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 282
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-ltz p4, :cond_0

    const/16 p1, 0x64

    if-le p4, p1, :cond_1

    :cond_0
    const/4 p1, 0x2

    .line 286
    invoke-static {p1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(I)I

    move-result p4

    .line 290
    :cond_1
    invoke-virtual {v1, v0, p4, p0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 291
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static createBitmapFromByte([BI)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    .line 296
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 297
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 298
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 299
    iget-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v2, :cond_2

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    invoke-static {v1, v4, p1}, Lcom/transsion/camera/utils/BitmapUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p1

    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 303
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 305
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 306
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p1, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 307
    sget-boolean p1, Lcom/transsion/camera/utils/BitmapUtils;->sWcgSupport:Z

    if-eqz p1, :cond_1

    .line 308
    sget-object p1, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {p1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p1

    iput-object p1, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 310
    :cond_1
    array-length p1, p0

    invoke-static {p0, v3, p1, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    .line 312
    sget-object p1, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[createBitmapFromByte] Got oom exception:"

    invoke-static {p1, v1, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static createBitmapFromExif(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 0

    .line 202
    invoke-static {p0}, Lcom/transsion/camera/utils/ExifUtils;->createExifInterface(Ljava/io/InputStream;)Landroid/media/ExifInterface;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/BitmapUtils;->getThumbnailFromExif(Landroid/media/ExifInterface;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createBitmapFromExif(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 198
    invoke-static {p0}, Lcom/transsion/camera/utils/ExifUtils;->createExifInterface(Ljava/lang/String;)Landroid/media/ExifInterface;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/BitmapUtils;->getThumbnailFromExif(Landroid/media/ExifInterface;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createBitmapFromExif([B)Landroid/graphics/Bitmap;
    .locals 0

    .line 194
    invoke-static {p0}, Lcom/transsion/camera/utils/ExifUtils;->createExifInterface([B)Landroid/media/ExifInterface;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/camera/utils/BitmapUtils;->getThumbnailFromExif(Landroid/media/ExifInterface;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createBitmapFromJpeg([BIZ)Landroid/graphics/Bitmap;
    .locals 9

    .line 217
    invoke-static {p0}, Lcom/transsion/camera/utils/ExifUtils;->createExifInterface([B)Landroid/media/ExifInterface;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 220
    invoke-static {v0}, Lcom/transsion/camera/utils/ExifUtils;->getOrientationFromExif(Landroid/media/ExifInterface;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 223
    :goto_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 224
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 225
    array-length v3, p0

    invoke-static {p0, v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 226
    iget-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    const/4 v4, 0x0

    if-nez v3, :cond_5

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_5

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v6, v5, :cond_1

    goto :goto_3

    :cond_1
    const/16 v5, 0x5a

    if-eq v0, v5, :cond_3

    const/16 v5, 0x10e

    if-ne v0, v5, :cond_2

    goto :goto_1

    :cond_2
    int-to-double v5, v3

    int-to-double v7, p1

    div-double/2addr v5, v7

    .line 234
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    goto :goto_2

    :cond_3
    :goto_1
    int-to-double v5, v6

    int-to-double v7, p1

    div-double/2addr v5, v7

    .line 232
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    :goto_2
    double-to-int p1, v5

    .line 236
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    iput p1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 237
    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 238
    sget-boolean p1, Lcom/transsion/camera/utils/BitmapUtils;->sWcgSupport:Z

    if-eqz p1, :cond_4

    .line 239
    sget-object p1, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {p1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p1

    iput-object p1, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    .line 242
    :cond_4
    :try_start_0
    array-length p1, p0

    invoke-static {p0, v1, p1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 243
    sget-object p1, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "[createBitmapFromJpeg] end"

    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 244
    invoke-static {p0, v0, p2}, Lcom/transsion/camera/utils/BitmapUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 246
    sget-object p1, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "[createBitmapFromJpeg] fail"

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return-object v4
.end method

.method public static createBitmapFromVideo(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 100
    invoke-static {v0, p0, p1}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createBitmapFromVideo(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 96
    invoke-static {p0, v0, p1}, Lcom/transsion/camera/utils/BitmapUtils;->createBitmapFromVideo(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static createBitmapFromVideo(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    sget-object v0, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createBitmapFromVideo] path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", fd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 106
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 109
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :catch_0
    move-exception p0

    move-object p1, v1

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_5

    .line 111
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    :goto_0
    const/16 p0, 0x9

    .line 117
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr p0, v2

    const-wide/16 v2, 0x2

    div-long v3, p0, v2

    .line 118
    invoke-virtual {v0, v3, v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_1

    const/4 v5, 0x1

    move-object v2, v0

    move v6, p2

    move v7, p2

    .line 120
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    goto :goto_2

    .line 127
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_4

    .line 124
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    :try_start_4
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_3
    move-object p0, p1

    :goto_4
    if-nez p0, :cond_2

    .line 133
    sget-object p0, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "Video thumbnail bitmap is null !"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v1

    .line 137
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 138
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 139
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-le v1, p2, :cond_3

    int-to-float p2, p2

    int-to-float v1, v1

    div-float/2addr p2, v1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    .line 143
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float v0, v0

    mul-float/2addr p2, v0

    .line 144
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    const/4 v0, 0x1

    .line 145
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_5

    .line 147
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 148
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 149
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 150
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p0, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 153
    :goto_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_4

    .line 154
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    return-object p1

    .line 127
    :goto_6
    :try_start_5
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    :catch_4
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 131
    :goto_7
    throw p0

    .line 127
    :cond_5
    :try_start_6
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_8

    :catch_5
    move-exception p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_8
    return-object v1
.end method

.method public static createBitmapFromYUV([BIIIIIIZ)Landroid/graphics/Bitmap;
    .locals 3

    .line 254
    sget-object v0, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createBitmapFromYuv] yuvData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", yuvWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", yuvHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", yuvFormat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 258
    invoke-static {p0, p1, p2, p3, p5}, Lcom/transsion/camera/utils/BitmapUtils;->covertYuvDataToJpeg([BIIII)[B

    move-result-object p0

    .line 259
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double p1, p1

    int-to-double p3, p4

    div-double/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 260
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    .line 261
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 262
    iput p1, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 263
    sget-boolean p1, Lcom/transsion/camera/utils/BitmapUtils;->sWcgSupport:Z

    if-eqz p1, :cond_0

    .line 264
    sget-object p1, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-static {p1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p1

    iput-object p1, p2, Landroid/graphics/BitmapFactory$Options;->inPreferredColorSpace:Landroid/graphics/ColorSpace;

    :cond_0
    const/4 p1, 0x0

    .line 267
    :try_start_0
    array-length p3, p0

    invoke-static {p0, p1, p3, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "[createBitmapFromYuv] end"

    .line 268
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 269
    invoke-static {p0, p6, p7}, Lcom/transsion/camera/utils/BitmapUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 271
    sget-object p1, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "createBitmapFromYuv fail"

    invoke-static {p1, p2, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v1
.end method

.method public static createScaledBitmapFromVideo(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 165
    invoke-static {v0, p0, p1}, Lcom/transsion/camera/utils/BitmapUtils;->createScaledBitmapFromVideo(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createScaledBitmapFromVideo(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 161
    invoke-static {p0, v0, p1}, Lcom/transsion/camera/utils/BitmapUtils;->createScaledBitmapFromVideo(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static createScaledBitmapFromVideo(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 170
    sget-object v0, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[createScaledBitmapFromVideo] path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", fd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v7, 0x0

    if-eqz p0, :cond_0

    .line 173
    :try_start_0
    invoke-virtual {v6, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    .line 175
    invoke-virtual {v6, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    :goto_0
    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    move-object v0, v6

    move v4, p2

    move v5, p2

    .line 179
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :try_start_1
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 187
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_1
    return-object p0

    .line 182
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    :try_start_3
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 187
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_3
    return-object v7

    .line 185
    :goto_4
    :try_start_4
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception p1

    .line 187
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 189
    :goto_5
    throw p0

    .line 185
    :cond_1
    :try_start_5
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception p0

    .line 187
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_6
    return-object v7
.end method

.method private static encodeYUV420SP([B[III)V
    .locals 15

    move/from16 v0, p2

    move/from16 v1, p3

    mul-int v2, v0, v1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v1, :cond_8

    move v7, v3

    :goto_1
    if-ge v7, v0, :cond_7

    .line 390
    aget v8, p1, v6

    const/high16 v9, 0xff0000

    and-int/2addr v9, v8

    shr-int/lit8 v9, v9, 0x10

    const v10, 0xff00

    and-int/2addr v10, v8

    shr-int/lit8 v10, v10, 0x8

    const/16 v11, 0xff

    and-int/2addr v8, v11

    shr-int/2addr v8, v3

    mul-int/lit8 v12, v9, 0x42

    mul-int/lit16 v13, v10, 0x81

    add-int/2addr v12, v13

    mul-int/lit8 v13, v8, 0x19

    add-int/2addr v12, v13

    add-int/lit16 v12, v12, 0x80

    shr-int/lit8 v12, v12, 0x8

    add-int/lit8 v12, v12, 0x10

    mul-int/lit8 v13, v9, -0x26

    mul-int/lit8 v14, v10, 0x4a

    sub-int/2addr v13, v14

    mul-int/lit8 v14, v8, 0x70

    add-int/2addr v13, v14

    add-int/lit16 v13, v13, 0x80

    shr-int/lit8 v13, v13, 0x8

    add-int/lit16 v13, v13, 0x80

    mul-int/lit8 v9, v9, 0x70

    mul-int/lit8 v10, v10, 0x5e

    sub-int/2addr v9, v10

    mul-int/lit8 v8, v8, 0x12

    sub-int/2addr v9, v8

    add-int/lit16 v9, v9, 0x80

    shr-int/lit8 v8, v9, 0x8

    add-int/lit16 v8, v8, 0x80

    add-int/lit8 v9, v5, 0x1

    if-gez v12, :cond_0

    move v12, v3

    goto :goto_2

    :cond_0
    if-le v12, v11, :cond_1

    move v12, v11

    :cond_1
    :goto_2
    int-to-byte v10, v12

    .line 403
    aput-byte v10, p0, v5

    .line 404
    rem-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_6

    rem-int/lit8 v5, v6, 0x2

    if-nez v5, :cond_6

    add-int/lit8 v5, v2, 0x1

    if-gez v8, :cond_2

    move v8, v3

    goto :goto_3

    :cond_2
    if-le v8, v11, :cond_3

    move v8, v11

    :cond_3
    :goto_3
    int-to-byte v8, v8

    .line 405
    aput-byte v8, p0, v2

    add-int/lit8 v2, v5, 0x1

    if-gez v13, :cond_4

    move v11, v3

    goto :goto_4

    :cond_4
    if-le v13, v11, :cond_5

    goto :goto_4

    :cond_5
    move v11, v13

    :goto_4
    int-to-byte v8, v11

    .line 406
    aput-byte v8, p0, v5

    :cond_6
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    move v5, v9

    goto :goto_1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public static getAlpha(Landroid/graphics/Bitmap;)[B
    .locals 11

    .line 414
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v9, v0, [I

    .line 415
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    new-array v10, v1, [B

    .line 416
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v9

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v0, :cond_1

    .line 419
    aget v1, v9, p0

    ushr-int/lit8 v1, v1, 0x18

    const/16 v2, 0x80

    if-ge v1, v2, :cond_0

    int-to-byte v1, v1

    .line 421
    aput-byte v1, v10, p0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x80

    or-int/lit8 v1, v1, -0x80

    int-to-byte v1, v1

    .line 423
    aput-byte v1, v10, p0

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object v10
.end method

.method public static getNV21(IILandroid/graphics/Bitmap;)[B
    .locals 10

    mul-int v0, p0, p1

    .line 367
    new-array v9, v0, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, v9

    move v4, p0

    move v7, p0

    move v8, p1

    .line 368
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    int-to-float p2, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    float-to-double v2, p2

    .line 369
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p2, v2

    mul-int/lit8 p2, p2, 0x2

    int-to-float v2, p0

    div-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/2addr p2, v1

    add-int/2addr v0, p2

    new-array p2, v0, [B

    .line 370
    invoke-static {p2, v9, p0, p1}, Lcom/transsion/camera/utils/BitmapUtils;->encodeYUV420SP([B[III)V

    return-object p2
.end method

.method public static getTargetBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7

    .line 445
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 446
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 447
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 448
    invoke-virtual {v5, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 449
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getThumbnailFromExif(Landroid/media/ExifInterface;)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p0, :cond_0

    .line 206
    invoke-virtual {p0}, Landroid/media/ExifInterface;->hasThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    invoke-static {p0}, Lcom/transsion/camera/utils/ExifUtils;->getOrientationFromExif(Landroid/media/ExifInterface;)I

    move-result p0

    .line 210
    invoke-static {v0, p0}, Lcom/transsion/camera/utils/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->isWcgSupported(Landroid/content/Context;)Z

    move-result p0

    sput-boolean p0, Lcom/transsion/camera/utils/BitmapUtils;->sWcgSupport:Z

    return-void
.end method

.method public static intToBytes(I)[B
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x8

    shr-int v3, p0, v3

    int-to-byte v3, v3

    .line 432
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static mergeBytes([B[B)[B
    .locals 3

    .line 438
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 439
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 440
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static releaseBitmap(Landroid/widget/ImageView;)V
    .locals 3

    .line 490
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 492
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 493
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 494
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 495
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v1, 0x0

    .line 499
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v0, :cond_1

    .line 501
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_1
    return-void
.end method

.method public static rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8

    if-nez p1, :cond_0

    if-eqz p2, :cond_7

    :cond_0
    if-eqz p0, :cond_7

    .line 59
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 60
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p2, :cond_5

    add-int/lit16 p1, p1, 0x168

    .line 64
    rem-int/lit16 p1, p1, 0x168

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz p1, :cond_4

    const/16 v2, 0xb4

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x5a

    if-eq p1, v2, :cond_3

    const/16 v2, 0x10e

    if-ne p1, v2, :cond_2

    goto :goto_0

    .line 72
    :cond_2
    sget-object p2, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mirror bitmap Invalid degrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_2

    .line 69
    :cond_3
    :goto_0
    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 70
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v6, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_2

    .line 66
    :cond_4
    :goto_1
    invoke-virtual {v6, v1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 67
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v6, v0, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    .line 75
    rem-int/lit8 p2, p1, 0x5a

    if-nez p2, :cond_6

    int-to-float p1, p1

    .line 77
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    invoke-virtual {v6, p1, p2, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    goto :goto_3

    .line 79
    :cond_6
    sget-object p2, Lcom/transsion/camera/utils/BitmapUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rotate bitmap Invalid degrees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 83
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eq p0, p1, :cond_7

    .line 85
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    :goto_4
    return-object p0
.end method

.method public static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-static {p0, p1, v0}, Lcom/transsion/camera/utils/BitmapUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
